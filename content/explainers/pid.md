---
permalink: /explainers/pid
layout: page
title: "PID"
show_sidebar: false
---

*Proportional Integral Derivative (PID)* is a feedback control scheme which generates control actions as a weighted linear combination of three terms:

1. Proportional to the error
2. Integral of the error
3. Derivative of the error

The weights are referred to as feedback gains, and can be tuned according to model-free heuristics e.g. the [Ziegler–Nichols method](https://en.wikipedia.org/wiki/Ziegler%E2%80%93Nichols_method).

Despite its simplicity, PID is extremely (often surprisingly) effective in practice on a wide variety of systems, even when stochastic disturbances, plant nonlinearities, input delays, and other challenging aspects are present.

## Interactive demo: balancing a cart-pole

The **cart-pole** (inverted pendulum on a cart) is a canonical benchmark for control.

Here the pole starts tilted and the controller applies horizontal forces to the cart to keep it balanced in an upright configuration at the center position.

There are two PID controllers: one for the pole angle and one for the cart position.

Tune the gains. Notice how:

- **K_p** alone causes oscillation
- **K_d** damps the oscillation
- **K_i** corrects low-frequency disturbances

Simulation controls:

- **Reset** will set the cart and pole back to a fixed initial state
- **Kick left/right** will apply a strong short transient disturbance to the pole

Disturbance settings:

- **HF Amt** sets the amount of high-frequency disturbance
- **LF Amt** sets the amount of low-frequency disturbance
- **LF τ** sets the time between sign flips of the low-frequency square-wave disturbance in seconds

<div id="pid-demo-root">
<style>
#pid-demo-root {
  font-family: inherit;
  max-width: 900px;
  margin: 1.5em 0;
  container-type: inline-size;
  --pid-red:       #dc2626;
  --pid-blue:      #2563eb;
  --pid-noise-hf:  #f59e0b;
  --pid-noise-lf:  #10b981;
  --pid-border:    #dde2ea;
  --pid-panel-bg:  rgba(0, 0, 0, 0.03);
  --pid-fg-light:  #64748b;
}
#pid-demo-root canvas {
  display: block;
  width: 100%;
  height: auto;
  border-radius: 6px;
}
#pid-sim-canvas {
  aspect-ratio: 900 / 270;
  border: 1px solid var(--pid-border, #e0e0e0);
}
#pid-plot-canvas {
  aspect-ratio: 900 / 210;
  border: 1px solid var(--pid-border, #e0e0e0);
}
.pid-control-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 10px;
  margin-top: 10px;
  align-items: stretch;
}
@container (min-width: 560px) {
  .pid-control-grid {
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }
}
@container (min-width: 860px) {
  .pid-control-grid {
    grid-template-columns: repeat(4, minmax(0, 1fr));
  }
}
.pid-top-controls,
.pid-controls {
  display: contents;
}
.pid-sim-controls,
.pid-disturbance-controls,
.pid-section {
  display: grid;
  align-content: start;
  gap: 5px;
  min-width: 0;
  padding: 10px;
  border: 1px solid var(--pid-border, #dde2ea);
  border-radius: 8px;
  background: var(--pid-panel-bg, rgba(0, 0, 0, 0.03));
}
.pid-section-label {
  font-weight: 700;
  font-size: 0.78em;
  text-transform: uppercase;
  letter-spacing: 0.06em;
  color: var(--pid-fg-light, #64748b);
  padding-bottom: 3px;
  border-bottom: 1px solid var(--pid-border, #dde2ea);
  margin-bottom: 1px;
}
.pid-slider-row {
  display: grid;
  grid-template-columns: 1fr auto;
  grid-template-areas:
    "label value"
    "slider slider";
  align-items: center;
  gap: 3px 10px;
  font-size: 0.87em;
}
.pid-slider-row label {
  grid-area: label;
  font-weight: 600;
  font-family: 'Space Mono', monospace;
  text-align: left;
}
.pid-slider-row input[type=range] {
  grid-area: slider;
  width: 100%;
  cursor: pointer;
}
.pid-slider-row input[type=range].angle-slider    { accent-color: var(--pid-red); }
.pid-slider-row input[type=range].pos-slider      { accent-color: var(--pid-blue); }
.pid-slider-row input[type=range].noise-hf-slider { accent-color: var(--pid-noise-hf); }
.pid-slider-row input[type=range].noise-lf-slider { accent-color: var(--pid-noise-lf); }
.pid-slider-row .pid-val {
  font-family: 'Space Mono', monospace;
  font-size: 0.93em;
  text-align: right;
  min-width: 44px;
}
.pid-slider-row > span {
  grid-area: value;
  justify-self: end;
  text-align: right;
}
.pid-btn-row {
  display: flex;
  gap: 7px;
  margin-top: 3px;
  flex-wrap: wrap;
}
.pid-preset-row {
  display: flex;
  margin-top: 3px;
}
.pid-preset-row button {
  flex: 1;
  text-align: center;
}
.pid-sim-btn-row {
  display: flex;
  flex-direction: column;
  gap: 6px;
  margin-top: 4px;
}
.pid-sim-btn-row button {
  width: 100%;
}
.pid-kick-pair {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 0;
  width: 100%;
  min-width: 0;
}
.pid-kick-pair button {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 5px;
  min-width: 0;
  white-space: nowrap;
}
.pid-kick-pair button:first-child {
  border-radius: 5px 0 0 5px;
}
.pid-kick-pair button:last-child {
  margin-left: -1px;
  border-radius: 0 5px 5px 0;
}
.pid-kick-icon {
  width: 1.15em;
  height: 1.15em;
  flex: 0 0 auto;
  stroke: currentColor;
  stroke-width: 2;
  stroke-linecap: round;
  stroke-linejoin: round;
  fill: none;
}
.pid-btn-row button,
.pid-preset-row button,
.pid-sim-btn-row button {
  padding: 4px 13px;
  border-radius: 5px;
  border: 1px solid currentColor;
  cursor: pointer;
  font-size: 0.85em;
  font-family: inherit;
  background: transparent;
  color: inherit;
  transition: background 0.15s;
}
.pid-btn-row button:hover,
.pid-preset-row button:hover,
.pid-sim-btn-row button:hover {
  background: #2563eb;
  color: #fff;
  border-color: transparent;
}
</style>

<canvas id="pid-sim-canvas" width="900" height="270"></canvas>
<canvas id="pid-plot-canvas" width="900" height="210"></canvas>

<div class="pid-control-grid">
<div class="pid-top-controls">
  <div class="pid-sim-controls">
    <div class="pid-section-label">Simulation Controls</div>
    <div class="pid-sim-btn-row">
      <button id="pid-reset-btn">Reset</button>
      <div class="pid-kick-pair" role="group" aria-label="Kick direction">
        <button id="pid-kick-left-btn" aria-label="Kick left" title="Kick left">
          <svg class="pid-kick-icon" viewBox="0 0 24 24" aria-hidden="true">
            <path d="M19 12H5"></path>
            <path d="m12 5-7 7 7 7"></path>
          </svg>
          <svg class="pid-kick-icon" viewBox="0 0 24 24" aria-hidden="true">
            <path d="M9 4c2.3 1.1 3.8 3.4 3.8 6v5.2c0 1.6 1.3 2.8 2.8 2.8H18"></path>
            <path d="M7 12h5.8"></path>
            <path d="M15 18c0 1.7-1.3 3-3 3H8"></path>
            <path d="M6.5 7.5 9 4"></path>
          </svg>
        </button>
        <button id="pid-kick-right-btn" aria-label="Kick right" title="Kick right">
          <svg class="pid-kick-icon" viewBox="0 0 24 24" aria-hidden="true">
            <path d="M15 4c-2.3 1.1-3.8 3.4-3.8 6v5.2c0 1.6-1.3 2.8-2.8 2.8H6"></path>
            <path d="M17 12h-5.8"></path>
            <path d="M9 18c0 1.7 1.3 3 3 3h4"></path>
            <path d="M17.5 7.5 15 4"></path>
          </svg>
          <svg class="pid-kick-icon" viewBox="0 0 24 24" aria-hidden="true">
            <path d="M5 12h14"></path>
            <path d="m12 5 7 7-7 7"></path>
          </svg>
        </button>
      </div>
    </div>
  </div>
  <div class="pid-disturbance-controls">
    <div class="pid-section-label">Disturbance Settings</div>
    <div class="pid-slider-row">
      <label>HF Amt</label>
      <input type="range" class="noise-hf-slider" id="pid-noise-hf" min="0" max="4" step="0.1">
      <span class="pid-val" id="pid-noise-hf-val"></span>
    </div>
    <div class="pid-slider-row">
      <label>LF Amt</label>
      <input type="range" class="noise-lf-slider" id="pid-noise-lf" min="0" max="4" step="0.1">
      <span class="pid-val" id="pid-noise-lf-val"></span>
    </div>
    <div class="pid-slider-row">
      <label>LF τ</label>
      <input type="range" class="noise-lf-slider" id="pid-noise-tau" min="1" max="30" step="1">
      <span style="white-space:nowrap"><span class="pid-val" id="pid-noise-tau-val"></span>s</span>
    </div>
  </div>
</div>

<div class="pid-controls">
  <div class="pid-section">
    <div class="pid-section-label">Angle Gains</div>
    <div class="pid-slider-row">
      <label>K<sub>p</sub></label>
      <input type="range" class="angle-slider" id="pid-kp" min="0" max="100" step="0.5">
      <span class="pid-val" id="pid-kp-val"></span>
    </div>
    <div class="pid-slider-row">
      <label>K<sub>i</sub></label>
      <input type="range" class="angle-slider" id="pid-ki" min="0" max="5" step="0.05">
      <span class="pid-val" id="pid-ki-val"></span>
    </div>
    <div class="pid-slider-row">
      <label>K<sub>d</sub></label>
      <input type="range" class="angle-slider" id="pid-kd" min="0" max="20" step="0.25">
      <span class="pid-val" id="pid-kd-val"></span>
    </div>
    <div class="pid-preset-row">
      <button id="pid-zn-btn">Preset Gains</button>
    </div>
  </div>

  <div class="pid-section">
    <div class="pid-section-label">Position Gains</div>
    <div class="pid-slider-row">
      <label>K<sub>p</sub></label>
      <input type="range" class="pos-slider" id="pid-kpx" min="0" max="15" step="0.1">
      <span class="pid-val" id="pid-kpx-val"></span>
    </div>
    <div class="pid-slider-row">
      <label>K<sub>i</sub></label>
      <input type="range" class="pos-slider" id="pid-kix" min="0" max="2" step="0.1">
      <span class="pid-val" id="pid-kix-val"></span>
    </div>
    <div class="pid-slider-row">
      <label>K<sub>d</sub></label>
      <input type="range" class="pos-slider" id="pid-kdx" min="0" max="15" step="0.1">
      <span class="pid-val" id="pid-kdx-val"></span>
    </div>
    <div class="pid-preset-row">
      <button id="pid-znx-btn">Preset Gains</button>
    </div>
  </div>
</div>
</div>
</div>

<script>
(function () {
  "use strict";

  var PRESET_KP   = 43.0;
  var PRESET_KI   = 0.0;
  var PRESET_KD   = 11.0;
  var PRESET_KP_X = 3.2;
  var PRESET_KI_X = 1.0;
  var PRESET_KD_X = 4.6;

  var M = 1.0;
  var m = 0.1;
  var l = 0.5;
  var g = 9.81;
  var DT = 1 / 60;
  var WALL_RESTITUTION = 1.0;

  var NOISE_HF_DEFAULT   = 0.5;
  var NOISE_LF_DEFAULT   = 1.0;
  var NOISE_TAU_DEFAULT  = 15.0;

  function getNoiseHfSigma() { return parseFloat(document.getElementById("pid-noise-hf").value); }
  function getNoiseLfSigma() { return parseFloat(document.getElementById("pid-noise-lf").value); }
  function getNoiseLfTau()   { return Math.max(0.01, parseFloat(document.getElementById("pid-noise-tau").value)); }

  var state = [1, 0, 0.12, 0];
  var lfNoise      = 0;
  var integralErr  = 0;
  var prevErr      = 0.12;
  var integralErrX = 0;
  var prevErrX     = 0;
  var fallen = false;
  var time = 0;

  var HISTORY = 360;
  var thetaHist = [];
  var xHist = [];
  var forceHist = [];

  var simCanvas  = document.getElementById("pid-sim-canvas");
  var plotCanvas = document.getElementById("pid-plot-canvas");
  var ctx  = simCanvas.getContext("2d");
  var pctx = plotCanvas.getContext("2d");

  var _rootStyle   = getComputedStyle(document.getElementById("pid-demo-root"));
  var PID_RED      = _rootStyle.getPropertyValue("--pid-red").trim();
  var PID_BLUE     = _rootStyle.getPropertyValue("--pid-blue").trim();
  var NOISE_HF_COL = _rootStyle.getPropertyValue("--pid-noise-hf").trim() || "#f59e0b";
  var NOISE_LF_COL = _rootStyle.getPropertyValue("--pid-noise-lf").trim() || "#10b981";

  function scaleCanvas(canvas, context) {
    var dpr = window.devicePixelRatio || 1;
    var w = parseInt(canvas.getAttribute("width"));
    var h = parseInt(canvas.getAttribute("height"));
    canvas.width  = w * dpr;
    canvas.height = h * dpr;
    context.scale(dpr, dpr);
  }
  var SIM_W  = parseInt(simCanvas.getAttribute("width")  || 900);
  var SIM_H  = parseInt(simCanvas.getAttribute("height") || 270);
  var PLOT_W = parseInt(plotCanvas.getAttribute("width")  || 900);
  var PLOT_H = parseInt(plotCanvas.getAttribute("height") || 210);

  scaleCanvas(simCanvas,  ctx);
  scaleCanvas(plotCanvas, pctx);

  function getKp()  { return parseFloat(document.getElementById("pid-kp").value); }
  function getKi()  { return parseFloat(document.getElementById("pid-ki").value); }
  function getKd()  { return parseFloat(document.getElementById("pid-kd").value); }
  function getKpX() { return parseFloat(document.getElementById("pid-kpx").value); }
  function getKiX() { return parseFloat(document.getElementById("pid-kix").value); }
  function getKdX() { return parseFloat(document.getElementById("pid-kdx").value); }

  function deriv(s, F) {
    var x = s[0], xd = s[1], th = s[2], thd = s[3];
    var sinT = Math.sin(th), cosT = Math.cos(th);
    var temp  = (F + m * l * thd * thd * sinT) / (M + m);
    var thadd = (g * sinT - cosT * temp) / (l * (4/3 - m * cosT * cosT / (M + m)));
    var xadd  = temp - m * l * thadd * cosT / (M + m);
    return [xd, xadd, thd, thadd];
  }

  function rk4(s, F) {
    var k1 = deriv(s, F);
    var s2 = s.map(function(v, i) { return v + 0.5 * DT * k1[i]; });
    var k2 = deriv(s2, F);
    var s3 = s.map(function(v, i) { return v + 0.5 * DT * k2[i]; });
    var k3 = deriv(s3, F);
    var s4 = s.map(function(v, i) { return v + DT * k3[i]; });
    var k4 = deriv(s4, F);
    return s.map(function(v, i) {
      return v + (DT / 6) * (k1[i] + 2*k2[i] + 2*k3[i] + k4[i]);
    });
  }

  function reflectOvershoot(x, lo, hi) {
    while (x < lo || x > hi) {
      x = x < lo ? lo + (lo - x) : hi - (x - hi);
    }
    return x;
  }

  function resolveWallCollision(s) {
    var x = s[0], xd = s[1], th = s[2], thd = s[3];
    var hitLeft  = x < X_MIN && xd < 0;
    var hitRight = x > X_MAX && xd > 0;
    if (!hitLeft && !hitRight) {
      if (x < X_MIN || x > X_MAX) s[0] = clamp(x, X_MIN, X_MAX);
      return s;
    }

    var cosT = Math.cos(th);
    var h00 = M + m;
    var h01 = m * l * cosT;
    var h11 = (4 / 3) * m * l * l;
    var det = h00 * h11 - h01 * h01;
    var targetXd = -WALL_RESTITUTION * xd;
    var impulse = (targetXd - xd) / (h11 / det);

    s[0] = reflectOvershoot(x, X_MIN, X_MAX);
    s[1] = targetXd;
    s[3] = thd - (h01 / det) * impulse;
    return s;
  }

  function pidForce() {
    var th = state[2], x = state[0], xd = state[1];

    integralErr = clamp(integralErr + th * DT, -3, 3);
    var dErr = (th - prevErr) / DT;
    prevErr = th;
    var F_angle = getKp() * th + getKi() * integralErr + getKd() * dErr;

    integralErrX = clamp(integralErrX + x * DT, -5, 5);
    var dErrX = (x - prevErrX) / DT;
    prevErrX = x;
    var F_pos = getKpX() * x + getKiX() * integralErrX + getKdX() * dErrX;

    return clamp(F_angle + F_pos, -15, 15);
  }

  function clamp(v, lo, hi) { return v < lo ? lo : v > hi ? hi : v; }

  function randn() {
    var u = 1 - Math.random(), v = Math.random();
    return Math.sqrt(-2 * Math.log(u)) * Math.cos(2 * Math.PI * v);
  }

  function fmtVal(v, dec, intW) {
    var s = v.toFixed(dec);
    var dot = s.indexOf('.');
    return s.slice(0, dot).padStart(intW) + s.slice(dot);
  }

  var lastForce    = 0;
  var lastPidForce = 0;
  var lastHfNoise  = 0;

  function step() {
    if (fallen) return 0;
    var lfSigma = getNoiseLfSigma();
    lfNoise = lfSigma === 0 ? 0 : lfSigma * Math.sign(Math.sin(Math.PI * time / getNoiseLfTau()));
    lastHfNoise = getNoiseHfSigma() * randn();
    lastPidForce = pidForce();
    var F = clamp(lastPidForce + lfNoise + lastHfNoise, -15, 15);
    lastForce = F;
    state = rk4(state, F);
    state = resolveWallCollision(state);
    time += DT;
    if (Math.abs(state[2]) > Math.PI / 2) fallen = true;
    return F;
  }

  var TRACK_Y  = 185;
  var CART_W   = 70;
  var CART_H   = 32;
  var WHEEL_R  = 10;
  var POLE_PX  = 120;
  var SCALE    = POLE_PX / l;
  var TRACK_MARGIN = 20;
  var CART_CENTER_MIN_PX = TRACK_MARGIN + CART_W / 2;
  var CART_CENTER_MAX_PX = SIM_W - TRACK_MARGIN - CART_W / 2;
  var X_MIN = (CART_CENTER_MIN_PX - SIM_W / 2) / SCALE;
  var X_MAX = (CART_CENTER_MAX_PX - SIM_W / 2) / SCALE;

  function isDark() {
    var theme = document.documentElement.getAttribute("data-theme");
    if (theme === "dark")  return true;
    if (theme === "light") return false;
    return window.matchMedia && window.matchMedia("(prefers-color-scheme: dark)").matches;
  }

  function fg()      { return isDark() ? "#cdd6f4" : "#1e293b"; }
  function fgDim()   { return isDark() ? "#6c7086" : "#94a3b8"; }
  function bgCode()  { return isDark() ? "#1e1e2e" : "#f8fafc"; }
  function cartCol() { return PID_BLUE; }
  function poleCol() { return PID_RED; }
  function siteFont(spec) {
    var ff = getComputedStyle(document.body).fontFamily || "sans-serif";
    return spec + " " + ff;
  }

  function drawSim() {
    var W = SIM_W, H = SIM_H;
    ctx.fillStyle = bgCode();
    ctx.fillRect(0, 0, W, H);

    var x  = state[0], th = state[2];
    var cartX = clamp(W / 2 + x * SCALE, CART_CENTER_MIN_PX, CART_CENTER_MAX_PX);

    ctx.beginPath();
    ctx.strokeStyle = fg();
    ctx.lineWidth = 2;
    ctx.moveTo(TRACK_MARGIN, TRACK_Y + CART_H / 2 + WHEEL_R);
    ctx.lineTo(W - TRACK_MARGIN, TRACK_Y + CART_H / 2 + WHEEL_R);
    ctx.stroke();

    [TRACK_MARGIN, W - TRACK_MARGIN].forEach(function(bx) {
      ctx.beginPath();
      ctx.strokeStyle = fg();
      ctx.lineWidth = 3;
      ctx.moveTo(bx, TRACK_Y + CART_H / 2 + WHEEL_R - 10);
      ctx.lineTo(bx, TRACK_Y + CART_H / 2 + WHEEL_R + 10);
      ctx.stroke();
    });

    function drawArrow(force, y, color, lw, headLen, headW) {
      var len = clamp(force * 12, -120, 120);
      if (Math.abs(len) < 2) return;
      var x0 = cartX + (len > 0 ? CART_W / 2 : -CART_W / 2);
      var x1 = x0 + len;
      var d  = len > 0 ? 1 : -1;
      ctx.beginPath();
      ctx.strokeStyle = color;
      ctx.lineWidth   = lw;
      ctx.moveTo(x0, y);
      ctx.lineTo(x1, y);
      ctx.stroke();
      ctx.beginPath();
      ctx.fillStyle = color;
      ctx.moveTo(x1, y);
      ctx.lineTo(x1 - d * headLen, y - headW);
      ctx.lineTo(x1 - d * headLen, y + headW);
      ctx.closePath();
      ctx.fill();
    }
    drawArrow(lastPidForce, TRACK_Y - 14, "#a855f7",    5,  16, 10);
    drawArrow(lfNoise, TRACK_Y,      NOISE_LF_COL, 2.5, 8,  6);
    drawArrow(lastHfNoise,  TRACK_Y + 14, NOISE_HF_COL, 2.5, 8,  6);

    var ghostX    = W / 2;
    var ghostBase = TRACK_Y - CART_H / 2;
    ctx.save();
    ctx.globalAlpha = 0.25;
    ctx.setLineDash([8, 5]);
    ctx.lineWidth = 2.5;
    ctx.strokeStyle = cartCol();
    roundRect(ctx, ghostX - CART_W / 2, TRACK_Y - CART_H / 2, CART_W, CART_H, 6);
    ctx.stroke();
    [-0.3, 0.3].forEach(function(dx) {
      ctx.beginPath();
      ctx.strokeStyle = isDark() ? "#1e293b" : "#0f172a";
      ctx.arc(ghostX + dx * CART_W, TRACK_Y + CART_H / 2, WHEEL_R, 0, 2 * Math.PI);
      ctx.stroke();
    });
    ctx.beginPath();
    ctx.strokeStyle = poleCol();
    ctx.lineWidth = 2.5;
    ctx.lineCap = "butt";
    ctx.moveTo(ghostX, ghostBase);
    ctx.lineTo(ghostX, ghostBase - POLE_PX);
    ctx.stroke();
    ctx.beginPath();
    ctx.strokeStyle = poleCol();
    ctx.lineWidth = 2.5;
    ctx.arc(ghostX, ghostBase - POLE_PX, 8, 0, 2 * Math.PI);
    ctx.stroke();
    ctx.setLineDash([]);
    ctx.restore();

    ctx.fillStyle = cartCol();
    roundRect(ctx, cartX - CART_W / 2, TRACK_Y - CART_H / 2, CART_W, CART_H, 6);
    ctx.fill();

    ctx.fillStyle = isDark() ? "#1e293b" : "#0f172a";
    [-0.3, 0.3].forEach(function(dx) {
      ctx.beginPath();
      ctx.arc(cartX + dx * CART_W, TRACK_Y + CART_H / 2, WHEEL_R, 0, 2 * Math.PI);
      ctx.fill();
      ctx.beginPath();
      ctx.fillStyle = fgDim();
      ctx.arc(cartX + dx * CART_W, TRACK_Y + CART_H / 2, 3, 0, 2 * Math.PI);
      ctx.fill();
      ctx.fillStyle = isDark() ? "#1e293b" : "#0f172a";
    });

    var poleBaseX = cartX;
    var poleBaseY = TRACK_Y - CART_H / 2;
    var poleTipX  = poleBaseX + POLE_PX * Math.sin(th);
    var poleTipY  = poleBaseY - POLE_PX * Math.cos(th);

    ctx.beginPath();
    ctx.strokeStyle = poleCol();
    ctx.lineWidth = 8;
    ctx.lineCap = "round";
    ctx.moveTo(poleBaseX, poleBaseY);
    ctx.lineTo(poleTipX, poleTipY);
    ctx.stroke();

    ctx.beginPath();
    ctx.fillStyle = poleCol();
    ctx.arc(poleTipX, poleTipY, 8, 0, 2 * Math.PI);
    ctx.fill();

    ctx.beginPath();
    ctx.fillStyle = isDark() ? "#cdd6f4" : "#1e293b";
    ctx.arc(poleBaseX, poleBaseY, 5, 0, 2 * Math.PI);
    ctx.fill();

    ctx.font = "26px 'Space Mono'";
    ctx.fillStyle = PID_RED;
    ctx.fillText("θ = " + fmtVal(th * 180 / Math.PI, 2, 4) + " °", 12, 28);
    ctx.fillStyle = PID_BLUE;
    ctx.fillText("x = " + fmtVal(state[0],            2, 4) + " m", 12, 56);
    ctx.fillStyle = fg();
    ctx.fillText("F = " + fmtVal(lastForce,            2, 4) + " N", 12, 84);
    ctx.fillText("t = " + fmtVal(time,                 2, 4) + " s", 12, 112);

    if (fallen) {
      ctx.fillStyle = "rgba(239,68,68,0.15)";
      ctx.fillRect(0, 0, W, H);
      ctx.fillStyle = PID_RED;
      ctx.font = siteFont("bold 40px");
      ctx.textAlign = "center";
      ctx.fillText("Pole fell: Press \"Reset\"", W / 2, H / 2);
      ctx.textAlign = "left";
    }
  }

  function roundRect(c, x, y, w, h, r) {
    if (c.roundRect) {
      c.beginPath();
      c.roundRect(x, y, w, h, r);
    } else {
      c.beginPath();
      c.moveTo(x + r, y);
      c.lineTo(x + w - r, y);
      c.quadraticCurveTo(x + w, y, x + w, y + r);
      c.lineTo(x + w, y + h - r);
      c.quadraticCurveTo(x + w, y + h, x + w - r, y + h);
      c.lineTo(x + r, y + h);
      c.quadraticCurveTo(x, y + h, x, y + h - r);
      c.lineTo(x, y + r);
      c.quadraticCurveTo(x, y, x + r, y);
      c.closePath();
    }
  }

  var PAD = { l: 60, r: 56, t: 30, b: 36 };

  function drawPlot() {
    var W = PLOT_W, H = PLOT_H;
    pctx.clearRect(0, 0, W, H);

    var pw = W - PAD.l - PAD.r;
    var ph = H - PAD.t - PAD.b;
    var midY = PAD.t + ph / 2;
    var POS_FULL = 2 * 35 / 30;

    pctx.fillStyle = bgCode();
    pctx.fillRect(0, 0, W, H);
    pctx.fillRect(PAD.l, PAD.t, pw, ph);

    [-30, 0, 30].forEach(function(deg) {
      var y = midY - (deg / 35) * (ph / 2);
      pctx.beginPath();
      pctx.strokeStyle = fgDim();
      pctx.lineWidth = deg === 0 ? 1.2 : 0.8;
      pctx.setLineDash(deg === 0 ? [] : [4, 4]);
      pctx.moveTo(PAD.l, y);
      pctx.lineTo(PAD.l + pw, y);
      pctx.stroke();
      pctx.setLineDash([]);

      pctx.fillStyle = PID_RED;
      pctx.font = "20px 'Space Mono'";
      pctx.textAlign = "right";
      pctx.fillText(deg + "°", PAD.l - 4, y + 7);
    });

    pctx.beginPath();
    pctx.strokeStyle = fgDim();
    pctx.lineWidth = 1;
    pctx.strokeRect(PAD.l, PAD.t, pw, ph);

    [-2, 0, 2].forEach(function(xm) {
      var y = midY - (xm / POS_FULL) * (ph / 2);
      pctx.beginPath();
      pctx.strokeStyle = PID_BLUE;
      pctx.lineWidth = 1;
      pctx.moveTo(PAD.l + pw, y);
      pctx.lineTo(PAD.l + pw + 5, y);
      pctx.stroke();
      pctx.fillStyle = PID_BLUE;
      pctx.font = "20px 'Space Mono'";
      pctx.textAlign = "left";
      pctx.fillText(xm + "m", PAD.l + pw + 7, y + 7);
    });

    if (thetaHist.length < 2) return;

    var n = thetaHist.length;

    pctx.beginPath();
    pctx.strokeStyle = PID_BLUE;
    pctx.lineWidth = 1.5;
    pctx.setLineDash([5, 4]);
    xHist.forEach(function(xv, i) {
      var px = PAD.l + (i / HISTORY) * pw;
      var py = midY - clamp(xv / POS_FULL, -1, 1) * (ph / 2);
      if (i === 0) pctx.moveTo(px, py); else pctx.lineTo(px, py);
    });
    pctx.stroke();
    pctx.setLineDash([]);

    pctx.beginPath();
    pctx.strokeStyle = PID_RED;
    pctx.lineWidth = 2;
    thetaHist.forEach(function(th, i) {
      var px = PAD.l + (i / HISTORY) * pw;
      var py = midY - clamp(th / (35 * Math.PI / 180), -1, 1) * (ph / 2);
      if (i === 0) pctx.moveTo(px, py); else pctx.lineTo(px, py);
    });
    pctx.stroke();

    pctx.font = siteFont("20px");
    pctx.textAlign = "left";
    pctx.fillStyle = PID_RED;
    pctx.fillText("— Pole angle", PAD.l + pw - 190, PAD.t + 34);
    pctx.fillStyle = PID_BLUE;
    pctx.fillText("- - Cart position", PAD.l + pw - 190, PAD.t + 58);

    pctx.fillStyle = fgDim();
    pctx.textAlign = "center";
    pctx.font = "20px 'Space Mono'";
    var totalSec = HISTORY * DT;
    [0, 0.25, 0.5, 0.75, 1].forEach(function(frac) {
      var px = PAD.l + frac * pw;
      var sec = (frac - 1) * totalSec;
      pctx.fillText(sec.toFixed(0) + "s", px, H - 8);
    });
  }

  function loop() {
    var F = step();
    thetaHist.push(state[2]);
    xHist.push(state[0]);
    forceHist.push(F);
    if (thetaHist.length > HISTORY) { thetaHist.shift(); xHist.shift(); forceHist.shift(); }
    drawSim();
    drawPlot();
    requestAnimationFrame(loop);
  }

  function resetPIDAngle() { integralErr  = 0; prevErr  = state[2]; }
  function resetPIDPos()   { integralErrX = 0; prevErrX = state[0]; }

  function resetAll() {
    state = [1, 0, 0.12 + (Math.random() - 0.5) * 0.08, 0];
    resetPIDAngle(); resetPIDPos();
    thetaHist = []; xHist = []; forceHist = [];
    time = 0; fallen = false; lastForce = 0; lfNoise = 0;
  }

  document.getElementById("pid-reset-btn").addEventListener("click", resetAll);

  function kickPole(direction) {
    if (fallen) return;
    state[3] += 1.5 * direction;
  }

  document.getElementById("pid-kick-left-btn").addEventListener("click", function () {
    kickPole(-1);
  });

  document.getElementById("pid-kick-right-btn").addEventListener("click", function () {
    kickPole(1);
  });

  document.getElementById("pid-zn-btn").addEventListener("click", function () {
    [["kp", PRESET_KP, 1], ["ki", PRESET_KI, 2], ["kd", PRESET_KD, 1]].forEach(function(g) {
      var el = document.getElementById("pid-" + g[0]);
      el.value = g[1];
      document.getElementById("pid-" + g[0] + "-val").textContent = g[1].toFixed(g[2]);
    });
    resetPIDAngle();
  });

  document.getElementById("pid-znx-btn").addEventListener("click", function () {
    [["kpx", PRESET_KP_X, 1], ["kix", PRESET_KI_X, 2], ["kdx", PRESET_KD_X, 1]].forEach(function(g) {
      var el = document.getElementById("pid-" + g[0]);
      el.value = g[1];
      document.getElementById("pid-" + g[0] + "-val").textContent = g[1].toFixed(g[2]);
    });
    resetPIDPos();
  });

  [["kp", 1], ["ki", 2], ["kd", 1]].forEach(function(pair) {
    var id = pair[0], dec = pair[1];
    var el  = document.getElementById("pid-" + id);
    var val = document.getElementById("pid-" + id + "-val");
    el.addEventListener("input", function () {
      val.textContent = parseFloat(el.value).toFixed(dec);
      resetPIDAngle();
    });
  });

  [["kpx", 1], ["kix", 2], ["kdx", 1]].forEach(function(pair) {
    var id = pair[0], dec = pair[1];
    var el  = document.getElementById("pid-" + id);
    var val = document.getElementById("pid-" + id + "-val");
    el.addEventListener("input", function () {
      val.textContent = parseFloat(el.value).toFixed(dec);
      resetPIDPos();
    });
  });

  [["noise-hf", 2], ["noise-lf", 2], ["noise-tau", 1]].forEach(function(pair) {
    var el  = document.getElementById("pid-" + pair[0]);
    var val = document.getElementById("pid-" + pair[0] + "-val");
    el.addEventListener("input", function () {
      val.textContent = parseFloat(el.value).toFixed(pair[1]);
    });
  });

  [["kp", PRESET_KP, 1], ["ki", PRESET_KI, 2], ["kd", PRESET_KD, 1]].forEach(function(g) {
    document.getElementById("pid-" + g[0]).value = g[1];
    document.getElementById("pid-" + g[0] + "-val").textContent = g[1].toFixed(g[2]);
  });
  [["kpx", PRESET_KP_X, 1], ["kix", PRESET_KI_X, 2], ["kdx", PRESET_KD_X, 1]].forEach(function(g) {
    document.getElementById("pid-" + g[0]).value = g[1];
    document.getElementById("pid-" + g[0] + "-val").textContent = g[1].toFixed(g[2]);
  });
  [["noise-hf", NOISE_HF_DEFAULT, 2], ["noise-lf", NOISE_LF_DEFAULT, 2], ["noise-tau", NOISE_TAU_DEFAULT, 1]].forEach(function(g) {
    document.getElementById("pid-" + g[0]).value = g[1];
    document.getElementById("pid-" + g[0] + "-val").textContent = g[1].toFixed(g[2]);
  });

  loop();
}());
</script>

## Learn more

- ["Advanced PID Control" by Karl J. Åström & Tore Hägglund](https://www.isa.org/products/advanced-pid-control)
- [Proportional–integral–derivative controller - Wikipedia](https://en.wikipedia.org/wiki/Proportional%E2%80%93integral%E2%80%93derivative_controller)
- [Proportional-Integral-Derivative (PID) Controllers - MATLAB](https://www.mathworks.com/help/control/ug/proportional-integral-derivative-pid-controllers.html)
- Benjamin Recht's blog posts, emphasizing the relationship between PID and gradient-based optimization
    - [The Best Things in Life Are Model Free](https://archives.argmin.net/2018/04/19/pid/)
    - [Integral Action](https://www.argmin.net/p/integral-action)
    - [Advanced Simplicity](https://www.argmin.net/p/advanced-simplicity)
