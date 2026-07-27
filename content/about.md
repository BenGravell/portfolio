---
permalink: /about
layout: page
title: About Me
show_sidebar: false
---

<div class="columns is-vcentered">
  <div class="column is-narrow">
    <figure class="image is-128x128">
      <img class="is-rounded" src="{{ '/assets/headshot.jpg' | relative_url }}" alt="Benjamin Gravell">
    </figure>
  </div>
  <div class="column">
    <h2>I build machines that <em>think</em> before they <em>act</em>.</h2>
    <p>Imagine the following scenario: you're driving happily along a highway, when suddenly a tire from the truck in front of you blows out and comes flying at you. You could slam on the brakes, hit the accelerator, swerve left into another lane, or swerve right off the road into some grass. What do you do?</p>

    <p>This is the task of a motion planner: to quietly anticipate possible futures and act on one that is smooth, safe, and defensible. Oh, and think fast: we need an answer in less than a tenth of a second - literally the time it takes to blink.</p>

    <p>My day job is writing the code that makes all that happen. Keep reading to see how I got here.</p>
  </div>
</div>

<h2>My journey: six cities along one trajectory.</h2>

<p>I plan trajectories for a living, so it should come as no surprise that I've planned my own.</p>

<p>The route so far: born & raised in the heart of Texas, drifted steadily northeast to Boston, and washed up south of Stockholm.</p>

<div class="globe-wrap">
  <div id="journey-globe" role="img" aria-label="An interactive globe tracing my move across six cities, from Texas to Stockholm. Drag to spin."></div>
  <div class="globe-legend" role="note">
    <span class="globe-legend__item"><span class="globe-legend__icon"><i class="fas fa-arrows-up-down-left-right"></i></span> Drag to spin</span>
    <span class="globe-legend__item"><span class="globe-legend__icon"><i class="fas fa-magnifying-glass-plus"></i></span> Scroll or pinch to zoom</span>
    <span class="globe-legend__item"><span class="legend-swatch legend-swatch--arc" aria-hidden="true"></span> Route</span>
    <span class="globe-legend__item"><span class="legend-swatch legend-swatch--ring" aria-hidden="true"></span> Home</span>
  </div>
</div>

{% assign stops = "stockholm::Stockholm::2025–present::Scania, from Sweden's capital: digging deep into search trees, trajectory optimization, and the tooling that tells you whether a motion planner is genuinely good or just got lucky.|sodertalje::Södertälje::2024–2025::Scania, on its home turf: I landed in Sweden and hit the ground running making a mining truck drive itself. |boston::Boston::2022–2024::Zoox, and the unglamorous art of autonomy evaluation: turning “yeah, that drive felt fine” into a number you can actually argue about and optimize against.|fort_worth::Fort Worth::2017–2018::My first real engineering job: analyzing the structural load-handling of high-performance metallic aerospace parts.|dallas::Dallas::2013–2017 · 2018–2022::Where I learned the theory of decision-making: a bachelor's in mechanical engineering, then a PhD focused on control theory and reinforcement learning.|austin::Austin::1994–2013::Where I grew up: out in the Texas suburbs, cutting my teeth on the basics of engineering and nurturing a love for jazz improvisation on the trumpet & bass." | split: "|" %}
<div class="timeline">
  {% for stop in stops %}
    {% assign p = stop | split: "::" %}
    {% assign folder = p[0] %}
    {% assign dir = '/assets/images/about/cities/' | append: folder | append: '/' %}
    {% assign photos = site.static_files | where_exp: "f", "f.path contains dir" | sort: "name" %}
    <div class="tl-stop{% if folder == 'stockholm' %} is-current{% endif %}">
      <span class="tl-marker"></span>
      <p class="tl-head">
        <span class="tl-city">{{ p[1] }}</span>
        <span class="tl-years">{{ p[2] }}</span>
        {% if folder == 'stockholm' %}<span class="tag is-link is-light is-small">Home</span>{% endif %}
      </p>
      <p class="tl-blurb">{{ p[3] }}</p>
      <div class="photo-strip">
        {% for ph in photos %}
          {% assign cap = site.data.about_photos.captions[ph.name] | default: ph.name %}
          <a class="glightbox" href="{{ ph.path | relative_url }}" data-gallery="city-{{ folder }}" data-title="{{ cap | escape }}">
            <img loading="lazy" src="{{ ph.path | relative_url }}" alt="{{ cap | escape }}">
          </a>
        {% endfor %}
      </div>
    </div>
  {% endfor %}
</div>

<h2>A humble catchy melody, currently in residence.</h2>

<p>I'm on a never-ending search for the freshest, tastiest music. When I find enough, I spin my favorites into mixtapes. My taste never picked a lane - orchestral and jazz in one ear, indie and electronic in the other. Vulfpeck convinced me that <em>the pocket</em> is a moral virtue, and Koan Sound convinced me that a sub-bass can have a personality.</p>

<div class="album-group">
  <p class="album-group__label">Electronic</p>
  <div class="albums">
    <figure class="album is-me">
      <a class="glightbox" href="{{ '/assets/images/about/music/styg-in-futuro.jpg' | relative_url }}" data-gallery="albums" data-title="Styg — In Futuro (that's me!)">
        <img loading="lazy" src="{{ '/assets/images/about/music/styg-in-futuro.jpg' | relative_url }}" alt="Styg — In Futuro album cover">
      </a>
      <figcaption><strong>In Futuro</strong><br>Styg<span class="me-badge">that's me</span></figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/koan-sound-polychrome.jpg' | relative_url }}" data-gallery="albums" data-title="KOAN Sound — Polychrome">
        <img loading="lazy" src="{{ '/assets/images/about/music/koan-sound-polychrome.jpg' | relative_url }}" alt="KOAN Sound — Polychrome album cover">
      </a>
      <figcaption><strong>Polychrome</strong><br>KOAN Sound</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/noisia-outer-edges.jpg' | relative_url }}" data-gallery="albums" data-title="Noisia — Outer Edges">
        <img loading="lazy" src="{{ '/assets/images/about/music/noisia-outer-edges.jpg' | relative_url }}" alt="Noisia — Outer Edges album cover">
      </a>
      <figcaption><strong>Outer Edges</strong><br>Noisia</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/anomalie-galerie.jpg' | relative_url }}" data-gallery="albums" data-title="Anomalie — Galerie">
        <img loading="lazy" src="{{ '/assets/images/about/music/anomalie-galerie.jpg' | relative_url }}" alt="Anomalie — Galerie album cover">
      </a>
      <figcaption><strong>Galerie</strong><br>Anomalie</figcaption>
    </figure>
  </div>
</div>

<div class="album-group">
  <p class="album-group__label">Funk-pop</p>
  <div class="albums">
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/vulfpeck-schvitz.jpg' | relative_url }}" data-gallery="albums" data-title="Vulfpeck — Schvitz">
        <img loading="lazy" src="{{ '/assets/images/about/music/vulfpeck-schvitz.jpg' | relative_url }}" alt="Vulfpeck — Schvitz album cover">
      </a>
      <figcaption><strong>Schvitz</strong><br>Vulfpeck</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/lawrence-living-room.jpg' | relative_url }}" data-gallery="albums" data-title="Lawrence — Living Room">
        <img loading="lazy" src="{{ '/assets/images/about/music/lawrence-living-room.jpg' | relative_url }}" alt="Lawrence — Living Room album cover">
      </a>
      <figcaption><strong>Living Room</strong><br>Lawrence</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/still-woozy-if-this-isnt-nice.jpg' | relative_url }}" data-gallery="albums" data-title="Still Woozy — If This Isn't Nice, I Don't Know What Is">
        <img loading="lazy" src="{{ '/assets/images/about/music/still-woozy-if-this-isnt-nice.jpg' | relative_url }}" alt="Still Woozy — If This Isn't Nice, I Don't Know What Is album cover">
      </a>
      <figcaption><strong>If This Isn't Nice, I Don't Know What Is</strong><br>Still Woozy</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/men-i-trust-oncle-jazz.jpg' | relative_url }}" data-gallery="albums" data-title="Men I Trust — Oncle Jazz">
        <img loading="lazy" src="{{ '/assets/images/about/music/men-i-trust-oncle-jazz.jpg' | relative_url }}" alt="Men I Trust — Oncle Jazz album cover">
      </a>
      <figcaption><strong>Oncle Jazz</strong><br>Men I Trust</figcaption>
    </figure>
  </div>
</div>

<div class="album-group">
  <p class="album-group__label">Folk-soul</p>
  <div class="albums">
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/khruangbin-leon-bridges-texas-sun.jpg' | relative_url }}" data-gallery="albums" data-title="Khruangbin &amp; Leon Bridges — Texas Sun">
        <img loading="lazy" src="{{ '/assets/images/about/music/khruangbin-leon-bridges-texas-sun.jpg' | relative_url }}" alt="Khruangbin &amp; Leon Bridges — Texas Sun album cover">
      </a>
      <figcaption><strong>Texas Sun</strong><br>Khruangbin &amp; Leon Bridges</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/theo-katzman-be-the-wheel.jpg' | relative_url }}" data-gallery="albums" data-title="Theo Katzman — Be the Wheel">
        <img loading="lazy" src="{{ '/assets/images/about/music/theo-katzman-be-the-wheel.jpg' | relative_url }}" alt="Theo Katzman — Be the Wheel album cover">
      </a>
      <figcaption><strong>Be the Wheel</strong><br>Theo Katzman</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/the-wildwoods-meadowlark.jpg' | relative_url }}" data-gallery="albums" data-title="The Wildwoods — Dear Meadowlark">
        <img loading="lazy" src="{{ '/assets/images/about/music/the-wildwoods-meadowlark.jpg' | relative_url }}" alt="The Wildwoods — Dear Meadowlark album cover">
      </a>
      <figcaption><strong>Dear Meadowlark</strong><br>The Wildwoods</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/gungor-beautiful-things.jpg' | relative_url }}" data-gallery="albums" data-title="Gungor — Beautiful Things">
        <img loading="lazy" src="{{ '/assets/images/about/music/gungor-beautiful-things.jpg' | relative_url }}" alt="Gungor — Beautiful Things album cover">
      </a>
      <figcaption><strong>Beautiful Things</strong><br>Gungor</figcaption>
    </figure>
  </div>
</div>

<div class="album-group">
  <p class="album-group__label">Jazz</p>
  <div class="albums">
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/sonny-clark-trio.jpg' | relative_url }}" data-gallery="albums" data-title="Sonny Clark — Sonny Clark Trio">
        <img loading="lazy" src="{{ '/assets/images/about/music/sonny-clark-trio.jpg' | relative_url }}" alt="Sonny Clark — Sonny Clark Trio album cover">
      </a>
      <figcaption><strong>Sonny Clark Trio</strong><br>Sonny Clark</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/thelonious-monk-straight-no-chaser.jpg' | relative_url }}" data-gallery="albums" data-title="Thelonious Monk — Straight, No Chaser">
        <img loading="lazy" src="{{ '/assets/images/about/music/thelonious-monk-straight-no-chaser.jpg' | relative_url }}" alt="Thelonious Monk — Straight, No Chaser album cover">
      </a>
      <figcaption><strong>Straight, No Chaser</strong><br>Thelonious Monk</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/clifford-brown-study-in-brown.jpg' | relative_url }}" data-gallery="albums" data-title="Clifford Brown — Study in Brown">
        <img loading="lazy" src="{{ '/assets/images/about/music/clifford-brown-study-in-brown.jpg' | relative_url }}" alt="Clifford Brown — Study in Brown album cover">
      </a>
      <figcaption><strong>Study in Brown</strong><br>Clifford Brown</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/stan-kenton-cuban-fire.jpg' | relative_url }}" data-gallery="albums" data-title="Stan Kenton — Cuban Fire">
        <img loading="lazy" src="{{ '/assets/images/about/music/stan-kenton-cuban-fire.jpg' | relative_url }}" alt="Stan Kenton — Cuban Fire album cover">
      </a>
      <figcaption><strong>Cuban Fire</strong><br>Stan Kenton</figcaption>
    </figure>
  </div>
</div>

<div class="album-group">
  <p class="album-group__label">Classical</p>
  <div class="albums">
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/glazunov-violin-concerto.jpg' | relative_url }}" data-gallery="albums" data-title="Glazunov — Violin Concerto in A minor">
        <img loading="lazy" src="{{ '/assets/images/about/music/glazunov-violin-concerto.jpg' | relative_url }}" alt="Glazunov — Violin Concerto in A minor album cover">
      </a>
      <figcaption><strong>Violin Concerto in A minor</strong><br>Glazunov</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/debussy-prelude-faun.jpg' | relative_url }}" data-gallery="albums" data-title="Debussy — Prélude à l'après-midi d'un faune">
        <img loading="lazy" src="{{ '/assets/images/about/music/debussy-prelude-faun.jpg' | relative_url }}" alt="Debussy — Prélude à l'après-midi d'un faune album cover">
      </a>
      <figcaption><strong>Prélude à l'après-midi d'un faune</strong><br>Debussy</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/messiaen-turangalila.jpg' | relative_url }}" data-gallery="albums" data-title="Messiaen — Turangalîla Symphony">
        <img loading="lazy" src="{{ '/assets/images/about/music/messiaen-turangalila.jpg' | relative_url }}" alt="Messiaen — Turangalîla Symphony album cover">
      </a>
      <figcaption><strong>Turangalîla Symphony</strong><br>Messiaen</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/adams-shaker-loops.jpg' | relative_url }}" data-gallery="albums" data-title="John Adams — Shaker Loops">
        <img loading="lazy" src="{{ '/assets/images/about/music/adams-shaker-loops.jpg' | relative_url }}" alt="John Adams — Shaker Loops album cover">
      </a>
      <figcaption><strong>Shaker Loops</strong><br>John Adams</figcaption>
    </figure>
  </div>
</div>

<h2>On the page.</h2>

<p>There's almost always a book open somewhere in my apartment. I usually reach for science fiction and the kind of non-fiction that ruins dinner conversation.</p>

<div class="book-group">
  <p class="book-group__label">Science fiction</p>
  <p class="book-group__note">Far futures, first contact, and thinking machines.</p>
  <div class="books">
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/silo.jpg' | relative_url }}" data-gallery="books" data-title="Silo — Hugh Howey">
        <img loading="lazy" src="{{ '/assets/images/about/books/silo.jpg' | relative_url }}" alt="Silo — Hugh Howey book cover">
      </a>
      <figcaption><strong>Silo</strong><br>Hugh Howey</figcaption>
    </figure>
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/foundation.jpg' | relative_url }}" data-gallery="books" data-title="Foundation — Isaac Asimov">
        <img loading="lazy" src="{{ '/assets/images/about/books/foundation.jpg' | relative_url }}" alt="Foundation — Isaac Asimov book cover">
      </a>
      <figcaption><strong>Foundation</strong><br>Isaac Asimov</figcaption>
    </figure>
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/i-robot.jpg' | relative_url }}" data-gallery="books" data-title="I, Robot — Isaac Asimov">
        <img loading="lazy" src="{{ '/assets/images/about/books/i-robot.jpg' | relative_url }}" alt="I, Robot — Isaac Asimov book cover">
      </a>
      <figcaption><strong>I, Robot</strong><br>Isaac Asimov</figcaption>
    </figure>
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/annihilation.jpg' | relative_url }}" data-gallery="books" data-title="Annihilation — Jeff VanderMeer">
        <img loading="lazy" src="{{ '/assets/images/about/books/annihilation.jpg' | relative_url }}" alt="Annihilation — Jeff VanderMeer book cover">
      </a>
      <figcaption><strong>Annihilation</strong><br>Jeff VanderMeer</figcaption>
    </figure>
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/three-body-problem.jpg' | relative_url }}" data-gallery="books" data-title="The Three-Body Problem — Liu Cixin">
        <img loading="lazy" src="{{ '/assets/images/about/books/three-body-problem.jpg' | relative_url }}" alt="The Three-Body Problem — Liu Cixin book cover">
      </a>
      <figcaption><strong>The Three-Body Problem</strong><br>Liu Cixin</figcaption>
    </figure>
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/stories-of-your-life.jpg' | relative_url }}" data-gallery="books" data-title="Stories of Your Life and Others — Ted Chiang">
        <img loading="lazy" src="{{ '/assets/images/about/books/stories-of-your-life.jpg' | relative_url }}" alt="Stories of Your Life and Others — Ted Chiang book cover">
      </a>
      <figcaption><strong>Stories of Your Life and Others</strong><br>Ted Chiang</figcaption>
    </figure>
  </div>
</div>

<div class="book-group">
  <p class="book-group__label">Non-fiction</p>
  <p class="book-group__note">Political history and the long, stubborn struggle for justice and equality.</p>
  <div class="books">
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/how-democracies-die.jpg' | relative_url }}" data-gallery="books" data-title="How Democracies Die — Steven Levitsky &amp; Daniel Ziblatt">
        <img loading="lazy" src="{{ '/assets/images/about/books/how-democracies-die.jpg' | relative_url }}" alt="How Democracies Die — Steven Levitsky and Daniel Ziblatt book cover">
      </a>
      <figcaption><strong>How Democracies Die</strong><br>Steven Levitsky &amp; Daniel Ziblatt</figcaption>
    </figure>
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/the-1619-project.jpg' | relative_url }}" data-gallery="books" data-title="The 1619 Project — Nikole Hannah-Jones">
        <img loading="lazy" src="{{ '/assets/images/about/books/the-1619-project.jpg' | relative_url }}" alt="The 1619 Project — Nikole Hannah-Jones book cover">
      </a>
      <figcaption><strong>The 1619 Project</strong><br>Nikole Hannah-Jones</figcaption>
    </figure>
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/white-fragility.jpg' | relative_url }}" data-gallery="books" data-title="White Fragility — Robin DiAngelo">
        <img loading="lazy" src="{{ '/assets/images/about/books/white-fragility.jpg' | relative_url }}" alt="White Fragility — Robin DiAngelo book cover">
      </a>
      <figcaption><strong>White Fragility</strong><br>Robin DiAngelo</figcaption>
    </figure>
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/the-burglary.jpg' | relative_url }}" data-gallery="books" data-title="The Burglary — Betty Medsger">
        <img loading="lazy" src="{{ '/assets/images/about/books/the-burglary.jpg' | relative_url }}" alt="The Burglary — Betty Medsger book cover">
      </a>
      <figcaption><strong>The Burglary</strong><br>Betty Medsger</figcaption>
    </figure>
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/fair-play.jpg' | relative_url }}" data-gallery="books" data-title="Fair Play — Eve Rodsky">
        <img loading="lazy" src="{{ '/assets/images/about/books/fair-play.jpg' | relative_url }}" alt="Fair Play — Eve Rodsky book cover">
      </a>
      <figcaption><strong>Fair Play</strong><br>Eve Rodsky</figcaption>
    </figure>
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/us-after.jpg' | relative_url }}" data-gallery="books" data-title="Us, After — Rachel Zimmerman">
        <img loading="lazy" src="{{ '/assets/images/about/books/us-after.jpg' | relative_url }}" alt="Us, After — Rachel Zimmerman book cover">
      </a>
      <figcaption><strong>Us, After</strong><br>Rachel Zimmerman</figcaption>
    </figure>
  </div>
</div>

<div class="book-group">
  <p class="book-group__label">Closer to the day job</p>
  <p class="book-group__note">The occasional book that reads suspiciously like my job description: randomness, uncertainty, and machines being handed the decision.</p>
  <div class="books">
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/fooled-by-randomness.jpg' | relative_url }}" data-gallery="books" data-title="Fooled by Randomness — Nassim Nicholas Taleb">
        <img loading="lazy" src="{{ '/assets/images/about/books/fooled-by-randomness.jpg' | relative_url }}" alt="Fooled by Randomness — Nassim Nicholas Taleb book cover">
      </a>
      <figcaption><strong>Fooled by Randomness</strong><br>Nassim Nicholas Taleb</figcaption>
    </figure>
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/the-irrational-decision.jpg' | relative_url }}" data-gallery="books" data-title="The Irrational Decision — Benjamin Recht">
        <img loading="lazy" src="{{ '/assets/images/about/books/the-irrational-decision.jpg' | relative_url }}" alt="The Irrational Decision — Benjamin Recht book cover">
      </a>
      <figcaption><strong>The Irrational Decision</strong><br>Benjamin Recht</figcaption>
    </figure>
  </div>
</div>

<h2>Planning in miniature, for fun.</h2>

<p>For me, chilling means scratching the builder's itch - to create an elegant system and watch it run - on the gaming screen, at my own pace, whether it's laying out cities, sending Kerbals into orbit, untangling subway lines, or chasing a clean racing line through the hills.</p>

<div class="games">
  <figure class="game">
    <a class="glightbox" href="{{ '/assets/images/about/games/cities-skylines.jpg' | relative_url }}" data-gallery="games" data-title="Cities: Skylines — Colossal Order">
      <img loading="lazy" src="{{ '/assets/images/about/games/cities-skylines.jpg' | relative_url }}" alt="Cities: Skylines cover art">
    </a>
    <figcaption><strong>Cities: Skylines</strong></figcaption>
  </figure>
  <figure class="game">
    <a class="glightbox" href="{{ '/assets/images/about/games/townscaper.jpg' | relative_url }}" data-gallery="games" data-title="Townscaper — Oskar Stålberg">
      <img loading="lazy" src="{{ '/assets/images/about/games/townscaper.jpg' | relative_url }}" alt="Townscaper cover art">
    </a>
    <figcaption><strong>Townscaper</strong></figcaption>
  </figure>
  <figure class="game">
    <a class="glightbox" href="{{ '/assets/images/about/games/mini-metro.jpg' | relative_url }}" data-gallery="games" data-title="Mini Metro — Dinosaur Polo Club">
      <img loading="lazy" src="{{ '/assets/images/about/games/mini-metro.jpg' | relative_url }}" alt="Mini Metro cover art">
    </a>
    <figcaption><strong>Mini Metro</strong></figcaption>
  </figure>
  <figure class="game">
    <a class="glightbox" href="{{ '/assets/images/about/games/kerbal-space-program.jpg' | relative_url }}" data-gallery="games" data-title="Kerbal Space Program — Squad">
      <img loading="lazy" src="{{ '/assets/images/about/games/kerbal-space-program.jpg' | relative_url }}" alt="Kerbal Space Program cover art">
    </a>
    <figcaption><strong>Kerbal Space Program</strong></figcaption>
  </figure>
  <figure class="game">
    <a class="glightbox" href="{{ '/assets/images/about/games/forza-horizon.jpg' | relative_url }}" data-gallery="games" data-title="Forza Horizon — Playground Games">
      <img loading="lazy" src="{{ '/assets/images/about/games/forza-horizon.jpg' | relative_url }}" alt="Forza Horizon cover art">
    </a>
    <figcaption><strong>Forza Horizon</strong></figcaption>
  </figure>
</div>

<h2>Coffee, tea, and the serious business of <em>fika</em>.</h2>

<p>A big slice of my life is organized around cafés. Sweden invited me to <em>fika</em> - coffee and a pastry, observed with the reverence of a daily standup - and I took to it immediately. I'll happily travel for a good cup; the one that recalibrated my expectations was <a href="https://www.hvala.com.sg" target="_blank" rel="noopener noreferrer">Hvala</a> in Singapore.</p>

{% assign coffeepics = site.static_files | where_exp: "f", "f.path contains '/assets/images/about/coffee/'" | sort: "name" %}
<div class="photo-strip is-large">
  {% for ph in coffeepics %}
    {% assign cap = site.data.about_photos.captions[ph.name] | default: ph.name %}
    <a class="glightbox" href="{{ ph.path | relative_url }}" data-gallery="coffee" data-title="{{ cap | escape }}">
      <img loading="lazy" src="{{ ph.path | relative_url }}" alt="{{ cap | escape }}">
    </a>
  {% endfor %}
</div>

<h2>Cities and the wide view.</h2>

<p>A lot of what fascinates me off the clock rhymes with my day job: planning, systems, and complexity emerging from simple rules. I'm endlessly curious about urban planning and architecture, and I explore what I find on foot and by rail, snapping pictures on the long walks in between. Off to the side, I'm a sucker for good typography and slowly learning the Swedish language. For the very long horizon, I let Dan Carlin's <a href="https://www.dancarlin.com/hardcore-history-series/" target="_blank" rel="noopener noreferrer"><em>Hardcore History</em></a> narrate the slow arc of humanity.</p>

<div class="tags">
  <span class="tag is-medium">Urban planning</span>
  <span class="tag is-medium">Architecture</span>
  <span class="tag is-medium">Nature reserves</span>
  <span class="tag is-medium">City parks</span>
  <span class="tag is-medium">Photography</span>
  <span class="tag is-medium">Typography</span>
  <span class="tag is-medium">Svenska</span>
  <span class="tag is-medium">History</span>
</div>

<h2>Let's talk motion, math, or any of our shared passions!</h2>

<div class="buttons">
  <a class="button is-dark" href="https://github.com/BenGravell" target="_blank" rel="noopener noreferrer">
    <span class="icon"><i class="fab fa-github"></i></span>
    <span>GitHub</span>
  </a>
  <a class="button is-info" href="https://www.linkedin.com/in/benjamin-gravell/" target="_blank" rel="noopener noreferrer">
    <span class="icon"><i class="fab fa-linkedin"></i></span>
    <span>LinkedIn</span>
  </a>
  <a class="button is-link" href="https://scholar.google.com/citations?user=kaeqpX4AAAAJ" target="_blank" rel="noopener noreferrer">
    <span class="icon"><i class="fab fa-google-scholar"></i></span>
    <span>Scholar</span>
  </a>
</div>

<style>
/* ── Journey: interactive WebGL globe (globe.gl / three.js) ─────────────── */
.globe-wrap { max-width: 480px; margin: 1.5rem auto 2.25rem; }
#journey-globe { width: 100%; min-height: 320px; cursor: grab; border-radius: 50%;
  background: radial-gradient(circle at 50% 48%, var(--globe-halo, rgba(42, 179, 231, 0.13)) 0,
    rgba(42, 179, 231, 0.045) 43%, transparent 70%); }
#journey-globe:active { cursor: grabbing; }
#journey-globe canvas { display: block; outline: none;
  filter: drop-shadow(0 12px 18px var(--globe-shadow, rgba(2, 79, 130, 0.14))); }
/* Controls + legend callout under the globe */
.globe-legend { width: max-content; max-width: 100%; margin: 0.75rem auto 0; padding: 0.6rem 1rem;
  background: var(--color-card-bg); border: 1px solid var(--color-card-border); border-radius: 9px;
  font-family: 'Space Mono', monospace; font-size: 0.72rem; letter-spacing: 0.03em;
  color: var(--color-text-muted);
  display: grid; grid-template-columns: auto auto; justify-content: center; justify-items: start;
  align-items: center; gap: 0.5rem 1.4rem; }
.globe-legend__item { display: inline-flex; align-items: center; gap: 0.45rem; white-space: nowrap; }
.globe-legend__icon { color: var(--color-accent); }
.legend-swatch { display: inline-block; flex: 0 0 auto; }
.legend-swatch--arc { width: 20px; height: 0; border-top: 3px solid var(--color-accent); }
.legend-swatch--ring { width: 11px; height: 11px; border: 2px solid var(--color-accent); border-radius: 50%; }

/* Outbound platform link on each book / game / album cover (added by JS): a single icon
   that is its own click/tap target. The platform name lives in the aria-label + title. */
.content-link { display: inline-flex; align-items: center; justify-content: center; margin-top: 0.35rem;
  padding: 0.3rem; border-radius: 6px; line-height: 0; color: var(--color-accent);
  text-decoration: none; transition: background 0.15s ease, color 0.15s ease; }
.content-link:hover { background: var(--color-card-bg); color: var(--color-text-heading); }
.content-link i { font-size: 0.95rem; }

/* City markers — HTML overlays (crisp text, auto-hidden on the globe's far side).
   The wrapper is a 0×0 box centred on the city; dot + name are offset from that origin. */
.globe-marker { position: relative; width: 0; height: 0; pointer-events: none;
  font-family: 'Atkinson Hyperlegible Next', sans-serif; }
.globe-dot { position: absolute; left: 0; top: 0; width: 9px; height: 9px; border-radius: 50%;
  background: var(--marker-accent); transform: translate(-50%, -50%); box-shadow: 0 0 0 2px var(--color-bg); }
.globe-marker.is-current .globe-dot { width: 11px; height: 11px; }
.globe-name { position: absolute; left: 0; top: 0; white-space: nowrap; font-weight: 700;
  font-size: 15px; line-height: 1; color: var(--marker-accent);
  text-shadow: 0 0 3px var(--color-bg), 0 0 6px var(--color-bg), 0 1px 2px rgba(0, 0, 0, 0.45); }
.globe-marker--e .globe-name { transform: translate(13px, -50%); }
.globe-marker--nw .globe-name { transform: translate(calc(-100% - 11px), calc(-100% - 7px)); }

/* ── Journey: vertical timeline ────────────────────────────────────────── */
.timeline { position: relative; margin: 0 0 1rem; padding-left: 1.85rem; }
/* Rail and dots share one centre line: x = 0.5rem from the timeline's left edge. */
.timeline::before { content: ""; position: absolute; left: 0.5rem; top: 0.5rem; bottom: 0.5rem;
  width: 2px; margin-left: -1px; background: var(--color-card-border); }
.tl-stop { position: relative; margin-bottom: 2rem; }
.tl-stop:last-child { margin-bottom: 0; }
.tl-marker { position: absolute; left: calc(0.5rem - 1.85rem); top: 0.35rem; transform: translateX(-50%);
  width: 0.85rem; height: 0.85rem; border-radius: 50%; background: var(--color-accent);
  box-shadow: 0 0 0 4px var(--color-bg); }
.tl-stop.is-current .tl-marker::after { content: ""; position: absolute; inset: 0; border-radius: 50%;
  border: 2px solid var(--color-accent); animation: tl-halo 2.4s ease-out infinite; }
@keyframes tl-halo { 0% { transform: scale(1); opacity: 0.7; } 100% { transform: scale(2.6); opacity: 0; } }
.tl-head { display: flex; align-items: baseline; flex-wrap: wrap; gap: 0.55rem; margin-bottom: 0.6rem !important; }
.tl-city { font-family: 'Space Grotesk', sans-serif; font-weight: 700; font-size: 1.2rem;
  color: var(--color-text-heading); }
.tl-years { font-family: 'Space Mono', monospace; font-size: 0.8rem; color: var(--color-text-muted); }
.tl-blurb { margin: 0 0 0.7rem !important; color: var(--color-text); line-height: 1.55; }

/* ── Album covers ──────────────────────────────────────────────────────── */
.albums { display: flex; flex-wrap: wrap; align-items: flex-start; gap: 1.1rem; margin: 0.75rem 0 0.25rem; }
.album { width: 150px; }
/* The theme's `.content figure:not(:first-child) { margin-top: 2em }` outweighs a plain
   `.album` rule and shoves every cover but the first down 2em — reset it for the grid. */
.albums .album { margin: 0 !important; }
.albums .album img { display: block; }
.album img { width: 150px; height: 150px; object-fit: cover; display: block; margin: 0;
  border-radius: 8px; border: 1px solid var(--color-card-border);
  transition: transform 0.18s ease, box-shadow 0.18s ease; }
.album a:hover img { transform: translateY(-2px); box-shadow: 0 6px 18px rgba(0, 0, 0, 0.22); }
.album figcaption { font-size: 0.8rem; line-height: 1.3; margin-top: 0.45rem; color: var(--color-text-muted); }
.album figcaption strong { color: var(--color-text-heading); }

/* Genre shelves and the "that's me" highlight on Styg */
.album-group { margin-top: 1rem; }
.album-group__label { font-family: 'Space Mono', monospace; text-transform: uppercase;
  letter-spacing: 0.12em; font-size: 0.72rem; color: var(--color-text-muted);
  margin: 0 0 0.65rem !important; }
.album.is-me img { border-color: var(--color-accent); box-shadow: 0 0 0 2px var(--color-accent); }
.album.is-me a:hover img { box-shadow: 0 0 0 2px var(--color-accent), 0 6px 18px rgba(0, 0, 0, 0.22); }
.me-badge { display: inline-block; font-family: 'Space Mono', monospace; font-size: 0.62rem;
  text-transform: uppercase; letter-spacing: 0.07em; background: var(--color-accent);
  color: var(--color-bg); border-radius: 999px; padding: 0.08rem 0.45rem; margin-left: 0.4rem;
  vertical-align: 0.06em; }

/* ── Book covers (genre shelves; mirrors the album grid, portrait covers) ─ */
.book-group { margin-top: 1.5rem; }
.book-group__label { font-family: 'Space Mono', monospace; text-transform: uppercase;
  letter-spacing: 0.12em; font-size: 0.72rem; color: var(--color-text-muted);
  margin: 0 0 0.35rem !important; }
.book-group__note { margin: 0 0 0.75rem !important; color: var(--color-text-muted);
  font-size: 0.9rem; line-height: 1.5; }
.books { display: flex; flex-wrap: wrap; align-items: flex-start; gap: 1.1rem; margin: 0.5rem 0 0.25rem; }
.book { width: 132px; }
/* Same reset as the album grid: cancel the theme's `figure:not(:first-child)` top-margin. */
.books .book { margin: 0 !important; }
.books .book img { display: block; }
.book img { width: 132px; height: 198px; object-fit: cover; display: block; margin: 0;
  border-radius: 8px; border: 1px solid var(--color-card-border);
  transition: transform 0.18s ease, box-shadow 0.18s ease; }
.book a:hover img { transform: translateY(-2px); box-shadow: 0 6px 18px rgba(0, 0, 0, 0.22); }
.book figcaption { font-size: 0.8rem; line-height: 1.3; margin-top: 0.45rem; color: var(--color-text-muted); }
.book figcaption strong { color: var(--color-text-heading); }

/* ── Game covers (portrait box art; mirrors the book grid) ─────────────── */
.games { display: flex; flex-wrap: wrap; align-items: flex-start; gap: 1.1rem; margin: 0.75rem 0 0.25rem; }
.game { width: 140px; }
/* Same reset as the album/book grids: cancel the theme's `figure:not(:first-child)` top-margin. */
.games .game { margin: 0 !important; }
.games .game img { display: block; }
.game img { width: 140px; height: 210px; object-fit: cover; display: block; margin: 0;
  border-radius: 8px; border: 1px solid var(--color-card-border);
  transition: transform 0.18s ease, box-shadow 0.18s ease; }
.game a:hover img { transform: translateY(-2px); box-shadow: 0 6px 18px rgba(0, 0, 0, 0.22); }
.game figcaption { font-size: 0.8rem; line-height: 1.3; margin-top: 0.45rem; color: var(--color-text-muted); }
.game figcaption strong { color: var(--color-text-heading); }

/* ── Photo strips (timeline + coffee) ──────────────────────────────────── */
.photo-strip { display: flex; flex-wrap: wrap; gap: 0.5rem; }
.photo-strip a { display: inline-block; line-height: 0; }
.photo-strip img { height: 104px; width: auto; max-width: 168px; object-fit: cover;
  border-radius: 7px; border: 1px solid var(--color-card-border); margin: 0; cursor: pointer;
  transition: transform 0.18s ease, box-shadow 0.18s ease; }
.photo-strip a:hover img { transform: translateY(-2px) scale(1.02); box-shadow: 0 6px 18px rgba(0, 0, 0, 0.22); }
.photo-strip.is-large img { height: 230px; max-width: 340px; }

/* ── Lightbox captions ─────────────────────────────────────────────────────
   GLightbox's "clean" skin sets `font-family:arial` on the caption via
   `.glightbox-clean .gslide-title/.gslide-desc` (specificity 0,2,0). Its CSS
   loads from the CDN *after* this block, so an equal-specificity override
   loses on source order — `!important` is needed to force the house font. */
.glightbox-container .gslide-title,
.glightbox-container .gslide-desc,
.glightbox-container .gslide-description {
  font-family: 'Atkinson Hyperlegible Next', sans-serif !important;
}

@media screen and (max-width: 768px) {
  .photo-strip img { height: 88px; max-width: 130px; }
  .photo-strip.is-large img { height: 180px; max-width: 260px; }

  /* Albums / books / games: compact list rows to minimise vertical space — a small
     thumbnail on the left, title over artist in the middle, and an external-link icon
     pinned to the right. Far tighter than a grid of full-size covers. */
  .albums, .books, .games { display: flex; flex-direction: column; flex-wrap: nowrap;
    align-items: stretch; gap: 0.45rem; }
  .album, .book, .game { width: auto; display: flex; align-items: center; gap: 0.7rem; }
  .album > a.glightbox, .book > a.glightbox, .game > a.glightbox { flex: 0 0 auto; line-height: 0; }
  .album img, .book img, .game img { margin: 0; }
  .album img { width: 48px; height: 48px; }
  .book img, .game img { width: 42px; height: 63px; }
  .album figcaption, .book figcaption, .game figcaption {
    flex: 1 1 auto; min-width: 0; margin: 0; text-align: left; font-size: 0.8rem; line-height: 1.3;
  }
  .album figcaption strong, .book figcaption strong, .game figcaption strong { font-size: 0.86rem; }
  /* icon pinned to the right of the row, sized as a comfortable tap target */
  .content-link { flex: 0 0 auto; margin: 0 0 0 auto; padding: 0.6rem; }
  .content-link i { font-size: 1.2rem; }
}
@media (prefers-reduced-motion: reduce) {
  .tl-stop.is-current .tl-marker::after { animation: none; }
}
</style>

<!-- GLightbox: standard gallery component — grouped batches, arrow-key + swipe navigation -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glightbox@3.3.1/dist/css/glightbox.min.css">
<script src="https://cdn.jsdelivr.net/npm/glightbox@3.3.1/dist/js/glightbox.min.js"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    if (window.GLightbox) {
      GLightbox({ selector: '.glightbox', loop: true, openEffect: 'fade', closeEffect: 'fade' });
    }
  });
</script>

<!-- Outbound links under each cover (lightbox untouched; the link sits below the
     caption, outside the lightbox anchor). Concrete destinations live in LINKS, keyed
     by the cover's bold title: music → a specific Tidal album page, games → the Steam
     store page. Anything not in LINKS falls back to a platform search built from the
     caption — every book, plus a handful of albums whose Tidal page wasn't locatable. -->
<script>
  document.addEventListener('DOMContentLoaded', function () {
    var enc = encodeURIComponent;
    var LINKS = {
      // Music → Tidal album pages
      'In Futuro': 'https://tidal.com/album/35795206',
      'Outer Edges': 'https://tidal.com/album/63594627',
      'Galerie': 'https://tidal.com/album/223864633',
      'Schvitz': 'https://tidal.com/album/264635870',
      'Texas Sun': 'https://tidal.com/album/125059335',
      'Living Room': 'https://tidal.com/album/94266051',
      'Oncle Jazz': 'https://tidal.com/album/113866499',
      'Straight, No Chaser': 'https://tidal.com/album/107370316',
      'Study in Brown': 'https://tidal.com/album/57430460',
      'Polychrome': 'https://tidal.com/album/338585613',
      'Be the Wheel': 'https://tidal.com/album/279787591',
      'If This Isn\'t Nice, I Don\'t Know What Is': 'https://tidal.com/album/193892190',
      'Dear Meadowlark': 'https://tidal.com/album/394605616',
      'Beautiful Things': 'https://tidal.com/album/3360789',
      'Sonny Clark Trio': 'https://tidal.com/album/1398978',
      'Cuban Fire': 'https://tidal.com/album/1332384',
      'Violin Concerto in A minor': 'https://tidal.com/album/77616026',
      'Turangalîla Symphony': 'https://tidal.com/album/402591134',
      // The recordings originally pictured for these two works aren't on Tidal, so both the
      // cover art and the link were switched to a well-regarded alternate recording of the
      // same work that is on Tidal — cover and link stay in sync.
      'Prélude à l\'après-midi d\'un faune': 'https://tidal.com/album/224207001',
      'Shaker Loops': 'https://tidal.com/album/34792250',
      // Games → Steam store pages
      'Cities: Skylines': 'https://store.steampowered.com/app/255710/',
      'Townscaper': 'https://store.steampowered.com/app/1291340/',
      'Mini Metro': 'https://store.steampowered.com/app/287980/',
      'Kerbal Space Program': 'https://store.steampowered.com/app/220200/',
      'Forza Horizon': 'https://store.steampowered.com/app/1551360/'
    };
    // Pull the bold title and the secondary line (artist / author) from a figcaption,
    // ignoring the "that's me" badge so it never leaks into a search-fallback query.
    function captionParts(fc) {
      var strong = fc.querySelector('strong');
      var title = strong ? strong.textContent.trim() : '';
      var clone = fc.cloneNode(true);
      clone.querySelectorAll('strong, .me-badge').forEach(function (n) { n.remove(); });
      var secondary = clone.textContent.replace(/\s+/g, ' ').trim();
      return { title: title, secondary: secondary };
    }
    function addLink(fc, href, label) {
      // Append to the figure (sibling of the caption): an icon-only link that is its
      // own click/tap target — below the cover on desktop, pinned right on mobile.
      // The platform name lives in aria-label + title (accessible name + hover tooltip).
      var figure = fc.closest('figure') || fc.parentNode;
      if (!href || figure.querySelector('.content-link')) return;
      var a = document.createElement('a');
      a.className = 'content-link';
      a.href = href;
      a.target = '_blank';
      a.rel = 'noopener noreferrer';
      var name = 'Open on ' + label;
      a.setAttribute('aria-label', name);
      a.title = name;
      a.innerHTML = '<i class="fas fa-external-link-alt" aria-hidden="true"></i>';
      figure.appendChild(a);
    }
    function wire(selector, label, makeHref) {
      document.querySelectorAll(selector + ' figcaption').forEach(function (fc) {
        var p = captionParts(fc);
        if (!p.title) return;
        addLink(fc, LINKS[p.title] || makeHref(p), label);
      });
    }
    wire('.album', 'Tidal', function (p) {
      return 'https://tidal.com/search?q=' + enc((p.secondary + ' ' + p.title).trim());
    });
    wire('.book', 'Goodreads', function (p) {
      return 'https://www.goodreads.com/search?q=' + enc((p.title + ' ' + p.secondary).trim());
    });
    wire('.game', 'Steam', function (p) {
      return 'https://store.steampowered.com/search/?term=' + enc(p.title);
    });
  });
</script>

<!-- Globe.GL (three.js): real Natural Earth country polygons on a sphere, with arc waypoints -->
<script src="https://cdn.jsdelivr.net/npm/globe.gl@2.46.1/dist/globe.gl.min.js"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    var el = document.getElementById('journey-globe');
    if (!el || typeof Globe === 'undefined') return;

    var mm = window.matchMedia || function () { return { matches: false }; };
    function isDark() {
      var t = document.documentElement.getAttribute('data-theme');
      if (t === 'dark') return true;
      if (t === 'light') return false;
      return mm('(prefers-color-scheme: dark)').matches;
    }
    function cssVar(name, fallback) {
      var v = getComputedStyle(document.documentElement).getPropertyValue(name).trim();
      return v || fallback;
    }
    function hexToRgb(h) {
      h = (h || '').replace('#', '');
      if (h.length === 3) h = h.split('').map(function (c) { return c + c; }).join('');
      var n = parseInt(h, 16);
      return [(n >> 16) & 255, (n >> 8) & 255, n & 255];
    }

    var reduce = mm('(prefers-reduced-motion: reduce)').matches;
    var dark = isDark();
    var accent = cssVar('--color-accent', dark ? '#60c6f0' : '#026bac');
    var accentRgb = hexToRgb(accent);
    var ocean = dark ? '#0e1b27' : '#edf7fb';
    var land = dark ? '#33485c' : '#91bfd0';
    var landStroke = dark ? '#496177' : '#f8fcfe';
    var atmosphere = dark ? accent : '#63bde2';

    // Coalesced map markers — tight metro clusters merged into one label each.
    // (The timeline below still lists all six cities individually.)
    // dir = where the text sits relative to its dot: 'e' (east) or 'nw' (north-west).
    var markers = [
      { name: 'Austin',               lat: 30.27, lng: -97.74, dir: 'e'  },
      { name: 'Dallas–Fort Worth',    lat: 32.76, lng: -97.07, dir: 'nw' },
      { name: 'Boston',               lat: 42.36, lng: -71.06, dir: 'e'  },
      { name: 'Stockholm–Södertälje', lat: 59.30, lng:  17.85, dir: 'e', current: true }
    ];
    var home = markers[markers.length - 1];

    // Waypoints (markers + ring + the ends of each route leg) all sit at this
    // altitude — just above the raised continents — so the route plugs cleanly
    // into each dot instead of diving to the surface.
    var WAYPOINT_ALT = 0.022;

    // Build each leg as a great-circle PATH: endpoints pinned to WAYPOINT_ALT,
    // the middle bowing up. Gives arcs whose ends meet the waypoints exactly.
    var DEG = Math.PI / 180;
    function toVec(lat, lng) {
      var phi = lat * DEG, lam = lng * DEG, c = Math.cos(phi);
      return [c * Math.cos(lam), c * Math.sin(lam), Math.sin(phi)];
    }
    function toLatLng(v) {
      return [Math.asin(Math.max(-1, Math.min(1, v[2]))) / DEG, Math.atan2(v[1], v[0]) / DEG];
    }
    function legPath(a, b) {
      var va = toVec(a.lat, a.lng), vb = toVec(b.lat, b.lng);
      var d = Math.max(-1, Math.min(1, va[0] * vb[0] + va[1] * vb[1] + va[2] * vb[2]));
      var omega = Math.acos(d);                              // central angle, 0..π
      var apex = Math.max(0.07, 0.5 * (omega / Math.PI));    // bow height (floor clears land)
      var N = 48, pts = [];
      for (var k = 0; k <= N; k++) {
        var t = k / N, lat, lng;
        if (omega < 1e-6) { lat = a.lat; lng = a.lng; }
        else {
          var s0 = Math.sin((1 - t) * omega) / Math.sin(omega);
          var s1 = Math.sin(t * omega) / Math.sin(omega);
          var ll = toLatLng([s0 * va[0] + s1 * vb[0], s0 * va[1] + s1 * vb[1], s0 * va[2] + s1 * vb[2]]);
          lat = ll[0]; lng = ll[1];
        }
        var alt = WAYPOINT_ALT + (apex - WAYPOINT_ALT) * Math.sin(Math.PI * t); // ends → WAYPOINT_ALT
        pts.push([lat, lng, alt]);
      }
      return pts;
    }
    var ROUTE_STROKE = 1.4;
    var legs = [];
    for (var i = 0; i < markers.length - 1; i++) legs.push(legPath(markers[i], markers[i + 1]));

    var world = Globe()(el)
      .backgroundColor('rgba(0,0,0,0)')
      .showAtmosphere(true).atmosphereColor(atmosphere).atmosphereAltitude(dark ? 0.18 : 0.14)
      .showGraticules(true)
      .htmlElementsData(markers)
        .htmlLat('lat').htmlLng('lng').htmlAltitude(WAYPOINT_ALT)
        .htmlElement(function (d) {
          var wrap = document.createElement('div');
          wrap.className = 'globe-marker globe-marker--' + d.dir + (d.current ? ' is-current' : '');
          wrap.style.setProperty('--marker-accent', accent);
          var dot = document.createElement('span'); dot.className = 'globe-dot';
          var name = document.createElement('span'); name.className = 'globe-name'; name.textContent = d.name;
          wrap.appendChild(dot); wrap.appendChild(name);
          return wrap;
        })
      .pathsData(legs)
        .pathPoints(function (d) { return d; })
        .pathPointLat(function (p) { return p[0]; })
        .pathPointLng(function (p) { return p[1]; })
        .pathPointAlt(function (p) { return p[2]; })
        .pathColor(function () { return accent; })
        .pathStroke(ROUTE_STROKE)
        .pathDashLength(0.4).pathDashGap(0.18)
        .pathDashAnimateTime(reduce ? 0 : 2200)
        .pathTransitionDuration(0)
      .ringsData(reduce ? [] : [home])
        .ringLat('lat').ringLng('lng')
        .ringMaxRadius(5).ringPropagationSpeed(2).ringRepeatPeriod(900).ringAltitude(WAYPOINT_ALT)
        .ringColor(function () {
          return function (t) { return 'rgba(' + accentRgb[0] + ',' + accentRgb[1] + ',' + accentRgb[2] + ',' + (1 - t) + ')'; };
        })
      .pointOfView({ lat: 46, lng: -34, altitude: 2.0 }, 0);

    world.globeMaterial().color.set(ocean);
    world.globeMaterial().roughness = dark ? 0.72 : 0.88;
    world.globeMaterial().metalness = 0;

    var controls = world.controls();
    controls.enableZoom = true;       // mouse wheel + touchpad pinch (desktop)
    controls.enablePan = false;       // a globe never needs panning
    controls.zoomSpeed = 0.9;
    controls.minDistance = 120;       // how close you can zoom in
    controls.maxDistance = 600;       // how far you can zoom out

    // Pinch-to-zoom, done by hand. OrbitControls' own two-finger handling (even
    // with pan disabled) kept letting the globe drift vertically on mobile, because
    // it ties the dolly to the gesture's moving midpoint. So we take two-finger
    // gestures over completely and translate them into a pure change of camera
    // distance to the globe centre — the view zooms about the screen centre and
    // never slides. (One finger still rotates via OrbitControls as usual.)
    if (controls.touches) controls.touches.TWO = 1;   // THREE.TOUCH.PAN → a no-op (pan is off)
    (function () {
      var camera = world.camera();
      var startGap = 0, startDist = 0, active = false;
      function gap(t) { return Math.hypot(t[0].clientX - t[1].clientX, t[0].clientY - t[1].clientY); }
      el.addEventListener('touchstart', function (e) {
        if (e.touches.length === 2) {
          active = true; startGap = gap(e.touches); startDist = camera.position.length();
          e.preventDefault();
        }
      }, { passive: false });
      el.addEventListener('touchmove', function (e) {
        if (!active || e.touches.length !== 2) return;
        e.preventDefault();
        var g = gap(e.touches);
        if (startGap <= 0 || g <= 0) return;
        var target = Math.max(120, Math.min(600, startDist * (startGap / g)));  // apart → closer
        var cur = camera.position.length() || 1;
        camera.position.multiplyScalar(target / cur);
        controls.update();
      }, { passive: false });
      function end(e) { if (e.touches.length < 2) active = false; }
      el.addEventListener('touchend', end);
      el.addEventListener('touchcancel', end);
    })();
    // Ambient motion = a guided tour: the camera flies the route waypoint to
    // waypoint, then ping-pongs back, forever. It yields the instant the user
    // grabs the globe and only resumes after a short lull. 4s is the sweet spot
    // for "have they disengaged?" — long enough never to fight a gesture or a
    // pause-to-read, short enough that it feels alive again before attention
    // wanders. (OrbitControls fires 'start' on grab/scroll, 'end' when it settles.)
    if (!reduce) {
      var TOUR_ALT = 1.7;            // camera distance while touring
      var HOLD_MS = 900;            // beat held at each waypoint
      var RESUME_AFTER_MS = 4000;   // idle before the tour takes over again
      var idx = 0, dir = 1, touring = true, stepTimer = null;

      function legDuration(a, b) {   // longer hops get longer flights
        var va = toVec(a.lat, a.lng), vb = toVec(b.lat, b.lng);
        var ang = Math.acos(Math.max(-1, Math.min(1, va[0] * vb[0] + va[1] * vb[1] + va[2] * vb[2])));
        return Math.round(Math.min(3200, Math.max(800, 700 + ang * 2600)));
      }
      function flyTo(i, ms) {
        world.pointOfView({ lat: markers[i].lat, lng: markers[i].lng, altitude: TOUR_ALT }, ms);
      }
      function step(prevLegMs) {
        clearTimeout(stepTimer);
        stepTimer = setTimeout(function () {
          if (!touring) return;
          if (idx + dir < 0 || idx + dir > markers.length - 1) dir = -dir;   // bounce at the ends
          var from = idx; idx += dir;
          var ms = legDuration(markers[from], markers[idx]);
          flyTo(idx, ms);
          step(ms);
        }, prevLegMs + HOLD_MS);
      }

      // Kick off at the first waypoint, then walk the route.
      flyTo(0, 1200);
      step(1200);

      controls.addEventListener('start', function () {
        touring = false;
        clearTimeout(stepTimer);
        world.pointOfView(world.pointOfView(), 0);   // hand the camera over; cancel any fly-in
      });
      controls.addEventListener('end', function () {
        clearTimeout(stepTimer);
        stepTimer = setTimeout(function () { touring = true; step(0); }, RESUME_AFTER_MS);
      });
    }

    // Real continents from vendored Natural Earth (public domain) GeoJSON
    fetch('{{ "/assets/data/countries-110m.geojson" | relative_url }}')
      .then(function (r) { return r.json(); })
      .then(function (geo) {
        world
          .polygonsData(geo.features)
          .polygonAltitude(0.015)
          .polygonCapColor(function () { return land; })
          .polygonSideColor(function () { return 'rgba(0,0,0,0)'; })
          .polygonStrokeColor(function () { return landStroke; });
      })
      .catch(function () { /* keep the bare sphere if the geometry fails to load */ });

    // WebGL colours do not inherit CSS variables after the scene is created.
    // Re-apply the palette when the three-state theme toggle changes, or when
    // an "Auto" theme follows a system appearance change.
    function applyTheme() {
      dark = isDark();
      accent = cssVar('--color-accent', dark ? '#60c6f0' : '#026bac');
      accentRgb = hexToRgb(accent);
      ocean = dark ? '#0e1b27' : '#edf7fb';
      land = dark ? '#33485c' : '#91bfd0';
      landStroke = dark ? '#496177' : '#f8fcfe';
      atmosphere = dark ? accent : '#63bde2';

      el.style.setProperty('--globe-halo', dark ? 'rgba(96, 198, 240, 0.08)' : 'rgba(42, 179, 231, 0.13)');
      el.style.setProperty('--globe-shadow', dark ? 'rgba(0, 0, 0, 0.28)' : 'rgba(2, 79, 130, 0.14)');
      world.atmosphereColor(atmosphere).atmosphereAltitude(dark ? 0.18 : 0.14);
      world.globeMaterial().color.set(ocean);
      world.globeMaterial().roughness = dark ? 0.72 : 0.88;
      world
        .polygonCapColor(function () { return land; })
        .polygonStrokeColor(function () { return landStroke; })
        .pathColor(function () { return accent; })
        .ringColor(function () {
          return function (t) { return 'rgba(' + accentRgb[0] + ',' + accentRgb[1] + ',' + accentRgb[2] + ',' + (1 - t) + ')'; };
        });
      el.querySelectorAll('.globe-marker').forEach(function (marker) {
        marker.style.setProperty('--marker-accent', accent);
      });
    }
    applyTheme();

    new MutationObserver(applyTheme).observe(document.documentElement, {
      attributes: true,
      attributeFilter: ['data-theme']
    });
    var scheme = mm('(prefers-color-scheme: dark)');
    if (scheme.addEventListener) scheme.addEventListener('change', applyTheme);
    else if (scheme.addListener) scheme.addListener(applyTheme);

    function resize() {
      var w = el.clientWidth || 480;
      var h = Math.round(Math.min(Math.max(w, 320), 460));
      world.width(w).height(h);
    }
    resize();
    window.addEventListener('resize', resize);

    // Stop the WebGL render loop (and its per-frame repositioning of the HTML city
    // markers) whenever the globe scrolls out of view — that perpetual work is the
    // main thing making mobile page-scrolling stutter once you've passed the globe.
    if ('IntersectionObserver' in window && world.pauseAnimation) {
      var ticking = true;
      new IntersectionObserver(function (entries) {
        var visible = entries[0].isIntersecting;
        if (visible && !ticking) { world.resumeAnimation(); ticking = true; }
        else if (!visible && ticking) { world.pauseAnimation(); ticking = false; }
      }, { rootMargin: '150px' }).observe(el);
    }
  });
</script>
