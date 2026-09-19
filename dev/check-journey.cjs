// Run with: node dev/check-journey.cjs
const assert = require('node:assert/strict');
const fs = require('node:fs');
const vm = require('node:vm');
const source = fs.readFileSync('content/about/journey-globe-script.html', 'utf8');
new vm.Script(source.slice(source.indexOf('<script>') + 8, source.lastIndexOf('</script>')));
function check(reduce = false, initiallyHovered = false) {
  let now = 0, nextTimer = 0;
  const timers = new Map();
  function timer(fn, delay, repeat = false) {
    timers.set(++nextTimer, { fn, at: now + delay, delay, repeat });
    return nextTimer;
  }
  function advance(ms) {
    const end = now + ms;
    while (true) {
      const entry = [...timers].filter(([, t]) => t.at <= end).sort((a, b) => a[1].at - b[1].at)[0];
      if (!entry) break;
      const [id, t] = entry;
      now = t.at;
      if (t.repeat) t.at += t.delay;
      else timers.delete(id);
      t.fn();
    }
    now = end;
  }
  function element() {
    return {
      events: {}, attrs: {}, dataset: {}, classList: { toggle() {} },
      addEventListener(name, fn) { (this.events[name] ||= []).push(fn); },
      emit(name, event = {}) { (this.events[name] || []).forEach(fn => fn(event)); },
      setAttribute(name, value) { this.attrs[name] = value; },
      matches() { return initiallyHovered; }
    };
  }
  const markers = ['austin', 'dallas', 'fort_worth', 'boston', 'sodertalje', 'stockholm'].map(id => ({ id }));
  const shell = Object.assign(element(), {
    scrollTop: 0, clientTop: 1, clientHeight: 400,
    getBoundingClientRect: () => ({ top: 0 }),
    scrollTo(options) { this.lastScroll = options; }
  });
  const stops = markers.map((marker, i) => Object.assign(element(), {
    dataset: { city: marker.id },
    getBoundingClientRect: () => ({ top: i * 200 + 1 - shell.scrollTop, bottom: i * 200 + 181 - shell.scrollTop, height: 180 })
  }));
  const panel = element(), playback = element();
  const play = element(), pause = element();
  playback.querySelector = selector => selector.includes('"play"') ? play : pause;
  const context = vm.createContext({
    markers, reduce,
    el: { querySelectorAll: () => [] },
    world: { ringsData() {}, pointOfView() {} },
    document: {
      querySelector: selector => ({ '.journey-timeline-shell': shell, '.journey-globe-column': panel, '.journey-playback': playback })[selector],
      querySelectorAll: () => stops
    },
    setTimeout: (fn, ms) => timer(fn, ms), clearTimeout: id => timers.delete(id),
    setInterval: (fn, ms) => timer(fn, ms, true), clearInterval: id => timers.delete(id)
  });
  vm.runInContext(source.match(/var activeCity = .*?;/)[0], context);
  vm.runInContext(source.slice(source.indexOf('    var timelineShell'), source.indexOf('    // Real continents')), context);
  const pressed = new Set();
  function click(action) {
    const button = { dataset: { playback: action }, classList: {
      add: () => pressed.add(action), remove: () => pressed.delete(action)
    } };
    playback.emit('click', { target: { closest: () => button } });
  }
  if (reduce) {
    advance(15000);
    assert.equal(context.activeCity.id, 'austin', 'Reduced motion disables automatic playback');
    click('play');
    advance(5000);
    assert.equal(context.activeCity.id, 'dallas', 'Explicit play works with reduced motion');
    return;
  }
  assert.equal(context.activeCity.id, 'austin', 'Austin is selected immediately on load');
  assert.equal(play.attrs['aria-pressed'], 'true', 'Playback starts immediately, even if already hovered');
  advance(5000);
  assert.equal(context.activeCity.id, 'dallas', 'Playback advances from Austin to Dallas');
  click('last'); click('play'); advance(5000);
  assert.equal(context.activeCity.id, 'austin', 'Autoplay wraps to the beginning');
  shell.emit('pointerenter');
  advance(5000);
  assert.equal(context.activeCity.id, 'dallas', 'Hover does not pause playback');
  advance(2000);
  shell.emit('pointerleave');
  advance(3000);
  assert.equal(context.activeCity.id, 'fort_worth', 'Leaving without interaction preserves playback cadence');
  shell.emit('pointerenter');
  click('first'); click('play');
  shell.emit('pointerdown');
  advance(10000);
  assert.equal(context.activeCity.id, 'austin', 'Interaction suspends playback while hovered');
  shell.emit('pointerleave');
  advance(4000);
  panel.emit('pointerenter');
  advance(6000);
  assert.equal(play.attrs['aria-pressed'], 'false', 'Entering either panel cancels resume');
  panel.emit('pointerleave');
  advance(4999);
  assert.equal(play.attrs['aria-pressed'], 'false');
  advance(1);
  assert.equal(play.attrs['aria-pressed'], 'true', 'Playback resumes after five seconds outside both panels');
  advance(5000);
  assert.equal(context.activeCity.id, 'dallas');
  panel.emit('pointerenter');
  panel.emit('click');
  assert.equal(play.attrs['aria-pressed'], 'false', 'Click pauses playback');
  click('play'); panel.emit('wheel');
  assert.equal(play.attrs['aria-pressed'], 'false', 'Wheel interaction pauses playback');
  click('play'); panel.emit('keydown');
  assert.equal(play.attrs['aria-pressed'], 'false', 'Keyboard interaction pauses playback');
  click('pause');
  panel.emit('pointerleave');
  advance(20000);
  assert.equal(context.activeCity.id, 'dallas', 'Explicit pause persists');
  click('last');
  assert.equal(pressed.has('last'), true, 'Momentary buttons show pressed feedback');
  advance(180);
  assert.equal(pressed.has('last'), false, 'Momentary feedback clears after activation');
  assert.equal(context.activeCity.id, 'stockholm');
  shell.scrollTop = 50;
  shell.emit('scroll');
  assert.equal(context.activeCity.id, 'stockholm', 'Programmatic scrolling cannot change selection');
  shell.emit('wheel'); shell.emit('scroll');
  assert.equal(context.activeCity.id, 'dallas', 'Select the first fully visible stop, excluding the clipped first stop');
  shell.scrollTop = 195; shell.emit('scroll');
  assert.equal(context.activeCity.id, 'dallas', 'Keep the topmost fully visible stop when two fit');
  shell.scrollTop = 250; shell.emit('scroll');
  assert.equal(context.activeCity.id, 'fort_worth');
  click('first');
  assert.equal(context.activeCity.id, 'austin');
  click('previous');
  assert.equal(context.activeCity.id, 'austin', 'Previous stays at the beginning');
  click('next');
  assert.equal(context.activeCity.id, 'dallas', 'Next advances exactly one city');
  click('previous');
  assert.equal(context.activeCity.id, 'austin', 'Previous goes back exactly one city');
  click('last'); click('next');
  assert.equal(context.activeCity.id, 'stockholm', 'Next stays at the end');
  advance(10000);
  assert.equal(context.activeCity.id, 'stockholm', 'Stepping preserves explicit pause');
  click('first');
  click('play'); advance(5000);
  assert.equal(context.activeCity.id, 'dallas', 'Play restarts a paused journey');
}
check();
check(false, true);
check(true);
console.log('Journey playback, inactivity, scroll selection, and reduced motion checks passed.');
