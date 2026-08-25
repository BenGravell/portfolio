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

    <p>My day job is designing and deploying the brain that makes all that happen. Keep reading to see how I got here, and what I like to do when I'm not on the job.</p>
  </div>
</div>

<h2>My journey: six cities along one trajectory.</h2>

<p>I plan trajectories for a living, so it should come as no surprise that I've planned my own.</p>

<p>The route so far: born & raised in the heart of Texas, drifted steadily northeast to Boston, and washed up south of Stockholm.</p>

{% assign stops = "austin::Austin::1994–2013::Where I grew up: out in the Texas suburbs, cutting my teeth on the basics of engineering and nurturing a love for jazz improvisation on the trumpet & bass.|dallas::Dallas::2013–2017 · 2018–2022::Where I learned the theory of decision-making: a bachelor's in mechanical engineering, then a PhD focused on control theory and reinforcement learning.|fort_worth::Fort Worth::2017–2018::My first real engineering job: analyzing the structural load-handling of high-performance metallic aerospace parts.|boston::Boston::2022–2024::Zoox, and the unglamorous art of autonomy evaluation: turning “yeah, that drive felt fine” into a number you can actually argue about and optimize against.|sodertalje::Södertälje::2024–2025::Scania, on its home turf: I landed in Sweden and hit the ground running making a mining truck drive itself. |stockholm::Stockholm::2025–present::Scania, from Sweden's capital: digging deep into search trees, trajectory optimization, and the tooling that tells you whether a motion planner is genuinely good or just got lucky." | split: "|" %}
<div class="journey-grid">
  <div class="journey-timeline-shell" aria-label="Journey timeline">
    <div class="timeline" id="journey-timeline">
      {% for stop in stops %}
        {% assign p = stop | split: "::" %}
        {% assign folder = p[0] %}
        {% assign dir = '/assets/images/about/cities/' | append: folder | append: '/' %}
        {% assign photos = site.static_files | where_exp: "f", "f.path contains dir" | sort: "name" %}
        <div class="tl-stop{% if folder == 'stockholm' %} is-active is-current{% endif %}"
             data-city="{{ folder }}" tabindex="0" role="button" aria-controls="journey-globe"
             aria-pressed="{% if folder == 'stockholm' %}true{% else %}false{% endif %}"
             aria-label="Show {{ p[1] }} on the journey globe">
          <span class="tl-marker" aria-hidden="true"></span>
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
  </div>

  <div class="journey-globe-column">
    <div class="globe-wrap">
      <div id="journey-globe" role="group" aria-label="An interactive globe tracing my move across six cities, from Texas to Stockholm. Select a city, drag to spin, or scroll to zoom."></div>
      <div class="globe-legend" role="note">
        <span class="globe-legend__item"><span class="globe-legend__icon"><i class="fas fa-arrows-up-down-left-right"></i></span> Drag to spin</span>
        <span class="globe-legend__item"><span class="globe-legend__icon"><i class="fas fa-magnifying-glass-plus"></i></span> Scroll or pinch to zoom</span>
        <span class="globe-legend__item"><span class="legend-swatch legend-swatch--arc" aria-hidden="true"></span> Route</span>
        <span class="globe-legend__item"><span class="legend-swatch legend-swatch--ring" aria-hidden="true"></span> Selected city</span>
      </div>
    </div>
  </div>
</div>

<h2>A humble catchy melody, currently in residence.</h2>

<p>I'm on a never-ending search for fresh music. My taste never picked a lane - orchestral and jazz in one ear, indie and electronic in the other. Vulfpeck convinced me that <em>the pocket</em> is a moral virtue, and Koan Sound convinced me that a sub-bass can have a personality.</p>

<div class="album-group">
  <p class="album-group__label">Electronic</p>
  <div class="albums">
    <figure class="album is-me">
      <a class="glightbox" href="{{ '/assets/images/about/music/styg-in-futuro.jpg' | relative_url }}" data-gallery="albums" data-title="Styg — In Futuro (that's me!)">
        <img loading="lazy" src="{{ '/assets/images/about/music/styg-in-futuro.jpg' | relative_url }}" alt="Styg — In Futuro album cover">
      </a>
      <figcaption><strong>In Futuro</strong><br>Styg<span class="me-badge">That's Me</span></figcaption>
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
      <a class="glightbox" href="{{ '/assets/images/about/books/project-hail-mary.jpg' | relative_url }}" data-gallery="books" data-title="Project Hail Mary — Andy Weir">
        <img loading="lazy" src="{{ '/assets/images/about/books/project-hail-mary.jpg' | relative_url }}" alt="Project Hail Mary — Andy Weir book cover">
      </a>
      <figcaption><strong>Project Hail Mary</strong><br>Andy Weir</figcaption>
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

<p>For me, chilling means scratching the builder's itch - to create an elegant system and watch it run - on the gaming screen, at my own pace. Whether it's laying out cities, sending Kerbals into orbit, untangling subway lines, or chasing a clean racing line through the hills.</p>

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

<h2>Other assorted interests.</h2>

<p>Off to the side, I'm a sucker for good typography and slowly learning the Swedish language. For the very long horizon, I let Dan Carlin's <a href="https://www.dancarlin.com/hardcore-history-series/" target="_blank" rel="noopener noreferrer"><em>Hardcore History</em></a> narrate the slow arc of humanity.</p>

<div class="tags">
  <span class="tag is-medium">Typography</span>
  <span class="tag is-medium">Svenska</span>
  <span class="tag is-medium">History</span>
</div>

{% include travelogue.html %}

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
.journey-grid { --journey-panel-height: clamp(400px, 40vw, 500px); display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr)); gap: clamp(1.25rem, 3vw, 2.5rem);
  align-items: start; width: 100%; margin: 1.5rem 0 2.25rem; }
.journey-globe-column, .globe-wrap { width: 100%; min-width: 0; }
.journey-globe-column, .journey-timeline-shell { height: var(--journey-panel-height);
  border: 1px solid var(--color-card-border); border-radius: 12px;
  background: color-mix(in srgb, var(--color-card-bg) 72%, transparent); box-sizing: border-box; }
.journey-globe-column { padding: 0.75rem; overflow: hidden; contain: layout paint; }
.globe-wrap { height: 100%; margin: 0; display: grid; grid-template-rows: minmax(0, 1fr) auto; min-height: 0; }
#journey-globe { position: relative; width: 100%; max-width: 100%; height: 100%; min-width: 0; min-height: 0;
  overflow: hidden; cursor: grab; border-radius: 50%;
  background: radial-gradient(circle at 50% 48%, var(--globe-halo, rgba(42, 179, 231, 0.13)) 0,
    rgba(42, 179, 231, 0.045) 43%, transparent 70%); }
#journey-globe:active { cursor: grabbing; }
#journey-globe canvas { display: block; outline: none;
  filter: drop-shadow(0 12px 18px var(--globe-shadow, rgba(2, 79, 130, 0.14))); }
/* Controls + legend callout under the globe */
.globe-legend { width: max-content; max-width: 100%; box-sizing: border-box; margin: 0.75rem auto 0; padding: 0.6rem 1rem;
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

/* City markers — HTML overlays (crisp text, auto-hidden on the globe's far side).
   The wrapper is a 0×0 box centred on the city; dot + name are offset from that origin. */
.globe-marker { position: relative; width: 0; height: 0; pointer-events: none;
  font-family: 'Atkinson Hyperlegible Next', sans-serif; }
.globe-marker__button { position: absolute; left: 0; top: 0; width: 28px; height: 28px; padding: 0;
  transform: translate(-50%, -50%); overflow: visible; border: 0; border-radius: 50%; background: transparent;
  color: var(--marker-accent); font: inherit; cursor: pointer; pointer-events: auto; }
.globe-marker__button:focus-visible { outline: 3px solid var(--color-bg); box-shadow: 0 0 0 5px var(--marker-accent); }
.globe-dot { position: absolute; left: 50%; top: 50%; width: 9px; height: 9px; border-radius: 50%;
  background: var(--marker-accent); transform: translate(-50%, -50%); box-shadow: 0 0 0 2px var(--color-bg);
  transition: width 0.18s ease, height 0.18s ease, box-shadow 0.18s ease; }
.globe-marker.is-active .globe-dot { width: 13px; height: 13px;
  box-shadow: 0 0 0 3px var(--color-bg), 0 0 0 6px var(--marker-accent); }
.globe-name { position: absolute; white-space: nowrap; font-weight: 700; pointer-events: none;
  font-size: 14px; line-height: 1; color: var(--marker-accent);
  text-shadow: 0 0 3px var(--color-bg), 0 0 6px var(--color-bg), 0 1px 2px rgba(0, 0, 0, 0.45); }
.globe-marker--e .globe-name { left: calc(100% + 2px); top: 50%; transform: translateY(-50%); }
.globe-marker--w .globe-name { right: calc(100% + 2px); top: 50%; transform: translateY(-50%); }
.globe-marker--ne .globe-name { left: calc(100% - 2px); bottom: calc(100% - 2px); }
.globe-marker--nw .globe-name { right: calc(100% - 2px); bottom: calc(100% - 2px); }

/* Outbound platform link on each book / game / album cover (added by JS): a single icon
   that is its own click/tap target. The platform name lives in the aria-label + title. */
.content a.content-link { display: inline-flex; align-items: center; justify-content: center; margin-top: 0.35rem;
  padding: 0.3rem; border-radius: 6px; line-height: 0; color: var(--color-accent);
  text-decoration: none; transition: background 0.15s ease, color 0.15s ease; }
.content a.content-link:hover { background: var(--color-card-bg); color: var(--color-text-heading); }
.content-link i { font-size: 0.95rem; }

/* ── Journey: vertical timeline ────────────────────────────────────────── */
.journey-timeline-shell { min-width: 0; overflow-y: auto; overscroll-behavior: contain;
  scrollbar-gutter: stable; scroll-behavior: smooth; }
.timeline { position: relative; margin: 0; padding: 1.1rem 1rem 1.1rem 2.85rem; }
/* Rail and dots share one centre line: x = 0.5rem from the timeline's left edge. */
.timeline::before { content: ""; position: absolute; left: 1.5rem; top: 1.6rem; bottom: 1.6rem;
  width: 2px; margin-left: -1px; background: var(--color-card-border); }
.tl-stop { position: relative; margin-bottom: 1.5rem; padding: 0.4rem 0.5rem; border-radius: 9px;
  cursor: pointer; transition: opacity 0.22s ease, filter 0.22s ease, background 0.18s ease; }
.tl-stop:last-child { margin-bottom: 0; }
.tl-stop:not(.is-active) { opacity: 0.34; filter: saturate(0) grayscale(0.8); }
.tl-stop:not(.is-active):hover, .tl-stop:not(.is-active):focus-visible { opacity: 0.72; }
.tl-stop:hover { background: color-mix(in srgb, var(--color-accent) 7%, transparent); }
.tl-stop:focus-visible { outline: 2px solid var(--color-accent); outline-offset: 2px; }
.tl-stop.is-active { background: color-mix(in srgb, var(--color-accent) 10%, transparent); }
.tl-marker { position: absolute; left: calc(1.5rem - 2.85rem); top: 0.75rem; transform: translateX(-50%);
  width: 0.85rem; height: 0.85rem; border-radius: 50%; background: var(--color-accent);
  box-shadow: 0 0 0 4px var(--color-bg); }
.tl-stop.is-active .tl-marker::after { content: ""; position: absolute; inset: 0; border-radius: 50%;
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
.me-badge { display: inline-block; font-family: inherit; font-size: 0.62rem;
  background: var(--color-accent);
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
.timeline .photo-strip img { height: 72px; max-width: 116px; }
.photo-strip a:hover img { transform: translateY(-2px) scale(1.02); box-shadow: 0 6px 18px rgba(0, 0, 0, 0.22); }
.photo-strip.is-large img { height: 230px; max-width: 340px; }

/* ── Travelogue: synchronized map and city rows ──────────────────────── */
.travelogue { --travel-selection: #d97706;
  --travel-country-fill: color-mix(in srgb, var(--color-text-muted) 27%, var(--color-card-bg));
  --travel-visited-fill: color-mix(in srgb, var(--color-accent) 32%, var(--color-card-bg));
  --travel-selected-fill: color-mix(in srgb, var(--travel-selection) 78%, var(--color-card-bg));
  /* travel.yml statically guarantees that the U.S. receives the visited fill. */
  --travel-state-stroke: #f8fafc;
  --travel-tooltip-bg: #f7fafc;
  margin-top: 2.5rem; }
html[data-theme="dark"] .travelogue { --travel-selection: #fbbf24; --travel-tooltip-bg: #172033; }
@media (prefers-color-scheme: dark) {
  html:not([data-theme="light"]) .travelogue { --travel-selection: #fbbf24; --travel-tooltip-bg: #172033; }
}
.travelogue-kpis { display: grid; grid-template-columns: repeat(2, minmax(0, 13rem)); gap: 0.7rem;
  margin: 0.85rem 0 1rem; }
.travelogue-kpi { display: flex; align-items: baseline; gap: 0.55rem; padding: 0.8rem 0.9rem;
  border: 1px solid var(--color-card-border); border-radius: 10px;
  background: color-mix(in srgb, var(--color-accent) 9%, var(--color-bg));
  color: var(--color-text-heading); font-family: 'Space Grotesk', sans-serif; font-weight: 700; }
.travelogue-kpi strong { color: var(--color-accent); font: inherit; font-size: clamp(1.65rem, 3vw, 2.25rem); line-height: 1; }
.travelogue-kpi span { font-size: 0.95rem; letter-spacing: 0.01em; }
.travelogue-views { --travel-view-height: clamp(300px, 46vw, 440px); display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 1rem;
  align-items: start; margin-top: 1.25rem; }
.travel-map-shell { position: relative; min-width: 0; height: var(--travel-view-height); overflow: hidden;
  border: 1px solid var(--color-card-border); border-radius: 12px;
  background: linear-gradient(145deg, var(--color-card-bg), var(--color-bg)); }
.travel-map-canvas, .travel-map-pins-canvas { position: absolute; inset: 0; width: 100%; height: 100%; pointer-events: none; }
.travel-map-pins-canvas { z-index: 1; }
.travel-map { position: relative; z-index: 2; display: block; width: 100%; height: 100%;
  touch-action: none; cursor: grab; }
.travel-map:active, .travel-map.is-dragging { cursor: grabbing; }
.travel-map.has-pin-hover { cursor: pointer; }
.travel-map-tooltip { position: absolute; z-index: 3; max-width: 15rem; padding: 0.35rem 0.5rem;
  border: 1px solid var(--color-card-border); border-radius: 6px; background: var(--travel-tooltip-bg);
  color: var(--color-text-heading); box-shadow: 0 4px 14px rgba(0, 0, 0, 0.28); pointer-events: none;
  font-size: 0.75rem; line-height: 1.25; transform: translate(10px, calc(-100% - 8px)); white-space: nowrap; }
.travel-map-controls { position: absolute; z-index: 4; right: 0.75rem; bottom: 0.75rem; display: grid; gap: 0.35rem; }
.travel-map-controls button { width: 2rem; height: 2rem; padding: 0; border: 1px solid var(--color-card-border);
  border-radius: 7px; background: var(--color-card-bg); color: var(--color-text-heading); cursor: pointer;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.12); }
.travel-map-controls button:hover, .travel-map-controls button:focus-visible { color: var(--color-accent);
  border-color: var(--color-accent); }

/* One shared scroll viewport keeps header and row columns aligned regardless of scrollbar metrics. */
.travel-list { min-width: 0; height: var(--travel-view-height); border: 1px solid var(--color-card-border);
  border-radius: 10px; overflow-x: hidden; overflow-y: auto; scrollbar-gutter: stable;
  background: var(--color-card-bg); }
.travel-list-header, .travel-row { display: grid;
  grid-template-columns: minmax(0, 1.45fr) minmax(0, 1fr) minmax(0, 1fr) minmax(0, 0.9fr);
  width: 100%; gap: 0.75rem; align-items: center; }
.travel-list-header > span, .travel-row > span { min-width: 0; overflow-wrap: anywhere; }
.travel-list-header { position: sticky; z-index: 1; top: 0; padding: 0.55rem 0.8rem;
  border-bottom: 1px solid var(--color-card-border);
  color: var(--color-text-muted); background: var(--color-card-bg); font-family: 'Space Mono', monospace;
  font-size: 0.66rem; font-weight: 700; letter-spacing: 0.08em; text-transform: uppercase; }
.travel-sort-button { display: flex; align-items: center; justify-content: flex-start; gap: 0.3rem;
  width: 100%; min-width: 0; padding: 0; border: 0; background: transparent; color: inherit;
  font: inherit; letter-spacing: inherit; text-align: left; text-transform: inherit; cursor: pointer; }
.travel-sort-button::after { content: "↕"; flex: 0 0 auto; opacity: 0.45; }
.travel-list-header [aria-sort="ascending"] .travel-sort-button::after { content: "↑"; opacity: 1; }
.travel-list-header [aria-sort="descending"] .travel-sort-button::after { content: "↓"; opacity: 1; }
.travel-sort-button:hover, .travel-sort-button:focus-visible { color: var(--color-accent); }
.travel-sort-button:focus-visible { outline: 2px solid var(--color-accent); outline-offset: 2px; border-radius: 2px; }
.travel-list-rows { width: 100%; }
.travel-row { width: 100%; padding: 0.62rem 0.8rem; border: 0; border-bottom: 1px solid var(--color-card-border);
  background: transparent; color: var(--color-text); text-align: left; font: inherit; font-size: 0.88rem;
  cursor: pointer; transition: background 0.13s ease, color 0.13s ease; }
.travel-row:last-child { border-bottom: 0; }
.travel-row:hover { background: color-mix(in srgb, var(--color-accent) 8%, transparent); }
.travel-row:focus-visible { outline: 2px solid var(--color-accent); outline-offset: -2px; }
.travel-row.is-selected { background: color-mix(in srgb, var(--color-accent) 14%, transparent); color: var(--color-text-heading); }
.travel-row-city { font-weight: 700; color: var(--color-text-heading); }

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
  /* GLightbox normally absolutely positions its mobile caption over the bottom
     of the image. Make image and caption separate grid rows so long captions
     reduce the available image area instead of covering it. */
  .glightbox-container .ginner-container {
    display: grid !important;
    grid-template-rows: minmax(0, 1fr) auto;
    align-items: stretch;
  }
  .glightbox-container .gslide-media {
    min-height: 0;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  .glightbox-container .gslide-image {
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  .glightbox-container .gslide-image img {
    max-height: 100% !important;
    object-fit: contain;
  }
  .glightbox-container .gslide-description {
    position: relative !important;
    inset: auto !important;
    width: 100%;
    max-height: 35vh !important;
    overflow-y: auto;
  }

  .photo-strip img { height: 88px; max-width: 130px; }
  .timeline .photo-strip img { height: 64px; max-width: 96px; }
  .photo-strip.is-large img { height: 180px; max-width: 260px; }
  .travelogue-views { --travel-view-height: 320px; }
  .travel-list-header, .travel-row { gap: 0.55rem; padding-left: 0.65rem; padding-right: 0.65rem; }

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
@media screen and (max-width: 960px) {
  .journey-grid { --journey-panel-height: clamp(340px, 82vw, 480px); grid-template-columns: 1fr; }
  .travelogue-views { grid-template-columns: 1fr; }
}
@media screen and (max-width: 480px) {
  .travel-list-header, .travel-row { font-size: 0.78rem; }
}
@media (prefers-reduced-motion: reduce) {
  .journey-timeline-shell { scroll-behavior: auto; }
  .tl-stop.is-active .tl-marker::after { animation: none; }
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

<script src="https://cdn.jsdelivr.net/npm/d3@7.9.0/dist/d3.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/topojson-client@3.1.0/dist/topojson-client.min.js"></script>
<!-- Travelogue: one collection and one selectedEntryId synchronize the Equal Earth map and city rows. -->
<script>
  document.addEventListener('DOMContentLoaded', function () {
    var component = document.getElementById('travel-and-fika');
    var canvasEl = document.getElementById('travel-map-canvas');
    var pinCanvasEl = document.getElementById('travel-map-pins');
    var svgEl = document.getElementById('travel-map');
    if (!component || !canvasEl || !pinCanvasEl || !svgEl || !window.d3) return;

    var entries = {{ site.data.travel | jsonify }};
    if (!entries.length) return;
    var selectedEntryId = component.dataset.initialEntryId || entries[0].id;
    var entryById = new Map(entries.map(function (entry) { return [entry.id, entry]; }));
    var rows = Array.from(component.querySelectorAll('.travel-row'));
    var sortButtons = Array.from(component.querySelectorAll('.travel-sort-button'));
    var statusEl = document.getElementById('travel-map-status');
    var tooltipEl = document.getElementById('travel-map-tooltip');
    var canvasContext = canvasEl.getContext('2d', { alpha: true });
    var pinContext = pinCanvasEl.getContext('2d', { alpha: true });
    if (!canvasContext || !pinContext) return;
    var svg = window.d3.select(svgEl);
    var projection, canvasPath;
    var visitedCountries, lowVisitedCountries, selectedCountry, lowSelectedCountry;
    var featureByCountryCode = new Map();
    var lowFeatureByCountryCode = new Map();
    var mapWidth, mapHeight, worldData, baseProjectionScale, baseProjectedWorldHeight;
    var pixelRatio = 1, mapColors;
    var projectedPins = [], hoveredEntryId = null, isDragging = false;
    var centerLon = 0, panY = 0, zoomLevel = 1;
    // One-time travel.yml scan: Palo Alto ↔ Stanford is the closest pair
    // (2.088 km). At the minimum 320px map, 862× separates two 5.5px dots
    // by their 11px diameter plus a 3px buffer; 1024× is the next clean cap.
    var MIN_ZOOM = 1, MAX_ZOOM = 1024;
    var renderFrame = 0, projectionDirty = false, panDirty = false, geographyDirty = false, pinsDirty = false;
    var interactionActive = false, interactionTimer = 0, refinementIdle = 0;
    var countryCodeByA3 = {
      AUT: 'AT', CHN: 'CN', DNK: 'DK', FIN: 'FI', FRA: 'FR', ISL: 'IS',
      JAM: 'JM', MEX: 'MX', MYS: 'MY', NOR: 'NO', POL: 'PL', SGP: 'SG',
      SWE: 'SE', USA: 'US', VNM: 'VN'
    };
    var countryCodeByNumeric = {
      '040': 'AT', '156': 'CN', '208': 'DK', '246': 'FI', '250': 'FR',
      '352': 'IS', '388': 'JM', '458': 'MY', '484': 'MX', '578': 'NO',
      '616': 'PL', '702': 'SG', '752': 'SE', '704': 'VN', '840': 'US'
    };

    function resolveMapColor(customProperty) {
      var probe = document.createElement('span');
      probe.style.cssText = 'position:absolute;visibility:hidden;color:var(' + customProperty + ')';
      component.appendChild(probe);
      var color = window.getComputedStyle(probe).color;
      probe.remove();
      return color;
    }
    function readMapColors() {
      mapColors = {
        sphere: resolveMapColor('--color-bg'),
        sphereStroke: resolveMapColor('--color-card-border'),
        country: resolveMapColor('--travel-country-fill'),
        visited: resolveMapColor('--travel-visited-fill'),
        selected: resolveMapColor('--travel-selected-fill'),
        countryStroke: resolveMapColor('--color-bg'),
        stateStroke: resolveMapColor('--travel-state-stroke'),
        pin: resolveMapColor('--color-accent'),
        pinSelected: resolveMapColor('--travel-selection'),
        pinStroke: resolveMapColor('--color-bg')
      };
    }
    function paintGeometry(geometry, fill, stroke, lineWidth, alpha) {
      if (!geometry) return;
      canvasContext.beginPath();
      canvasPath(geometry);
      if (fill) {
        canvasContext.fillStyle = fill;
        canvasContext.fill();
      }
      if (stroke) {
        canvasContext.globalAlpha = alpha == null ? 1 : alpha;
        canvasContext.strokeStyle = stroke;
        canvasContext.lineWidth = lineWidth;
        canvasContext.stroke();
        canvasContext.globalAlpha = 1;
      }
    }
    function drawGeography() {
      if (!projection || !canvasPath || !worldData || !mapColors) return;
      var coarse = interactionActive && worldData.lowWorld;
      // Clip in pre-pan coordinates so extreme zoom only streams geometry
      // that can actually land inside the visible canvas.
      projection.clipExtent([[0, -panY], [mapWidth, mapHeight - panY]]);
      canvasContext.setTransform(1, 0, 0, 1, 0, 0);
      canvasContext.clearRect(0, 0, canvasEl.width, canvasEl.height);
      canvasContext.setTransform(pixelRatio, 0, 0, pixelRatio, 0, pixelRatio * panY);

      paintGeometry({ type: 'Sphere' }, mapColors.sphere, mapColors.sphereStroke, 1);
      paintGeometry(coarse ? worldData.lowWorld : worldData.land, mapColors.country);
      paintGeometry(coarse ? lowVisitedCountries : visitedCountries, mapColors.visited);
      paintGeometry(coarse ? lowSelectedCountry : selectedCountry, mapColors.selected);
      if (!coarse) {
        paintGeometry(worldData.countryBorders, null, mapColors.countryStroke, 0.7);
        paintGeometry(worldData.stateBorders, null, mapColors.stateStroke, 0.65, 0.92);
      }
    }
    function updatePinPositions() {
      projectedPins = entries.map(function (entry) {
        var point = projection([entry.coordinates.lon, entry.coordinates.lat]);
        return { entry: entry, x: point ? point[0] : -999, y: point ? point[1] + panY : -999 };
      });
      positionTooltip();
    }
    function drawPins() {
      if (!mapColors) return;
      pinContext.setTransform(1, 0, 0, 1, 0, 0);
      pinContext.clearRect(0, 0, pinCanvasEl.width, pinCanvasEl.height);
      pinContext.setTransform(pixelRatio, 0, 0, pixelRatio, 0, 0);
      projectedPins.forEach(function (pin) {
        if (pin.x < -8 || pin.x > mapWidth + 8 || pin.y < -8 || pin.y > mapHeight + 8) return;
        var emphasized = pin.entry.id === selectedEntryId || pin.entry.id === hoveredEntryId;
        pinContext.beginPath();
        pinContext.arc(pin.x, pin.y, emphasized ? 5.5 : 4.2, 0, Math.PI * 2);
        pinContext.fillStyle = pin.entry.id === selectedEntryId ? mapColors.pinSelected : mapColors.pin;
        pinContext.fill();
        pinContext.strokeStyle = mapColors.pinStroke;
        pinContext.lineWidth = hoveredEntryId === pin.entry.id ? 3 : 1.8;
        pinContext.stroke();
      });
    }
    function mapPointFromEvent(event) {
      var bounds = svgEl.getBoundingClientRect();
      return {
        x: (event.clientX - bounds.left) * mapWidth / bounds.width,
        y: (event.clientY - bounds.top) * mapHeight / bounds.height
      };
    }
    function pinAtPoint(point) {
      var match = null;
      var closestDistance = 12 * 12;
      projectedPins.forEach(function (pin) {
        var dx = pin.x - point.x;
        var dy = pin.y - point.y;
        var distance = dx * dx + dy * dy;
        if (distance <= closestDistance) {
          closestDistance = distance;
          match = pin;
        }
      });
      return match;
    }
    function positionTooltip() {
      if (!hoveredEntryId) return;
      var pin = projectedPins.find(function (candidate) { return candidate.entry.id === hoveredEntryId; });
      if (!pin) return;
      tooltipEl.style.left = (pin.x / mapWidth * 100) + '%';
      tooltipEl.style.top = (pin.y / mapHeight * 100) + '%';
    }
    function setHoveredPin(pin) {
      var nextId = pin ? pin.entry.id : null;
      if (nextId === hoveredEntryId) return;
      hoveredEntryId = nextId;
      svgEl.classList.toggle('has-pin-hover', !!pin);
      tooltipEl.hidden = !pin;
      if (pin) {
        tooltipEl.textContent = [pin.entry.city, pin.entry.stateProvince, pin.entry.country]
          .filter(Boolean).join(', ');
        positionTooltip();
      }
      scheduleRender(false, false, false, true);
    }
    function finishInteraction() {
      window.clearTimeout(interactionTimer);
      interactionTimer = window.setTimeout(function () {
        interactionActive = false;
        var refine = function () {
          refinementIdle = 0;
          if (!interactionActive) scheduleRender(false, false, true);
        };
        if ('requestIdleCallback' in window) {
          refinementIdle = window.requestIdleCallback(refine, { timeout: 500 });
        } else {
          refine();
        }
      }, 160);
    }
    function beginInteraction() {
      window.clearTimeout(interactionTimer);
      if (refinementIdle && 'cancelIdleCallback' in window) window.cancelIdleCallback(refinementIdle);
      refinementIdle = 0;
      if (!interactionActive) {
        interactionActive = true;
        scheduleRender(false, false, true);
      }
    }

    function updateMapSelection() {
      var selected = entryById.get(selectedEntryId);
      selectedCountry = selected ? featureByCountryCode.get(selected.countryCode) || null : null;
      lowSelectedCountry = selected ? lowFeatureByCountryCode.get(selected.countryCode) || null : null;
      scheduleRender(false, false, true, true);
    }

    function mapCountryCode(feature) {
      var properties = feature.properties || {};
      var twoLetterCode = [properties.ISO_A2, properties.WB_A2, properties.FIPS_10_].find(function (code) {
        return typeof code === 'string' && /^[A-Z]{2}$/.test(code);
      });
      if (twoLetterCode) return twoLetterCode;

      var numericCode = feature.id == null ? '' : String(feature.id).padStart(3, '0');
      return countryCodeByA3[properties.ADM0_A3] || countryCodeByNumeric[numericCode] || '';
    }

    function wrapLongitude(value) {
      return ((value + 180) % 360 + 360) % 360 - 180;
    }
    function clamp(value, minimum, maximum) {
      return Math.max(minimum, Math.min(maximum, value));
    }
    function applyProjectionState() {
      if (!projection) return;
      projection
        .rotate([-centerLon, 0, 0])
        .scale(baseProjectionScale * zoomLevel)
        .translate([mapWidth / 2, mapHeight / 2]);
    }
    function updateProjection() {
      if (!projection) return;
      applyProjectionState();
    }
    function scheduleRender(reproject, pan, geography, pins) {
      projectionDirty = projectionDirty || reproject;
      panDirty = panDirty || pan;
      geographyDirty = geographyDirty || geography;
      pinsDirty = pinsDirty || pins;
      if (renderFrame) return;
      renderFrame = requestAnimationFrame(function () {
        renderFrame = 0;
        var redrawGeography = projectionDirty || panDirty || geographyDirty;
        var redrawPins = projectionDirty || panDirty || pinsDirty;
        if (projectionDirty) updateProjection();
        if (projectionDirty || panDirty) updatePinPositions();
        if (redrawGeography) drawGeography();
        if (redrawPins) drawPins();
        projectionDirty = false;
        panDirty = false;
        geographyDirty = false;
        pinsDirty = false;
      });
    }
    function panLimit() {
      if (!baseProjectedWorldHeight || zoomLevel <= MIN_ZOOM) return 0;
      return Math.max(0, (baseProjectedWorldHeight * zoomLevel - mapHeight) / 2);
    }
    function zoomAtPoint(targetZoom, sourcePoint, targetPoint) {
      if (!projection || !sourcePoint) return;
      targetPoint = targetPoint || sourcePoint;
      var anchor = projection.invert([sourcePoint.x, sourcePoint.y - panY]);
      if (!anchor) return;

      zoomLevel = clamp(targetZoom, MIN_ZOOM, MAX_ZOOM);
      projection
        .rotate([-centerLon, 0, 0])
        .scale(baseProjectionScale * zoomLevel)
        .translate([mapWidth / 2, mapHeight / 2]);

      // Equal Earth is pseudocylindrical: at a fixed latitude, x varies with
      // longitude. Shift the central meridian so the anchored location keeps
      // the pointer's x coordinate, then use the layer pan for its y coordinate.
      var projected = projection(anchor);
      var longitudeAtTarget = projected && projection.invert([targetPoint.x, projected[1]]);
      if (longitudeAtTarget) {
        centerLon = wrapLongitude(centerLon + wrapLongitude(anchor[0] - longitudeAtTarget[0]));
        projection.rotate([-centerLon, 0, 0]);
        projected = projection(anchor);
      }
      if (projected) panY = clamp(targetPoint.y - projected[1], -panLimit(), panLimit());
      scheduleRender(true, true);
    }
    function animateProjection(targetLon, targetPanY, targetZoom) {
      if (!projection) return;
      svg.interrupt('reproject');
      beginInteraction();
      var nearestLon = centerLon + wrapLongitude(targetLon - centerLon);
      var lonInterpolator = window.d3.interpolateNumber(centerLon, nearestLon);
      var zoomInterpolator = window.d3.interpolateNumber(zoomLevel, clamp(targetZoom, MIN_ZOOM, MAX_ZOOM));
      var panInterpolator = window.d3.interpolateNumber(panY, targetPanY);
      var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
      svg.transition('reproject').duration(reduce ? 0 : 360).tween('projection', function () {
        return function (t) {
          centerLon = wrapLongitude(lonInterpolator(t));
          zoomLevel = zoomInterpolator(t);
          panY = clamp(panInterpolator(t), -panLimit(), panLimit());
          scheduleRender(true, true);
        };
      }).on('end interrupt', finishInteraction);
    }
    function focusMap(entry) {
      var targetZoom = Math.max(zoomLevel, 2.6);
      var targetProjection = window.d3.geoEqualEarth()
        .rotate([-entry.coordinates.lon, 0, 0])
        .scale(baseProjectionScale * targetZoom)
        .translate([mapWidth / 2, mapHeight / 2]);
      var point = targetProjection([entry.coordinates.lon, entry.coordinates.lat]);
      var targetPanY = point ? mapHeight / 2 - point[1] : 0;
      animateProjection(entry.coordinates.lon, targetPanY, targetZoom);
    }

    var sortColumnIndex = { area: 0, city: 1, state: 2, country: 3 };
    var sortHierarchy = ['country', 'state', 'city', 'area'];
    var activeSortKey = null;
    var activeSortDirection = 'ascending';
    var sortCollator = new Intl.Collator(undefined, { numeric: true, sensitivity: 'base' });
    rows.forEach(function (row, index) {
      var areaText = row.children[sortColumnIndex.area].textContent.trim();
      row.dataset.originalOrder = String(index);
      row.dataset.areaNames = JSON.stringify(areaText === '—' ? [] : areaText.split(' · '));
    });

    function rowSortValue(row, key) {
      var cell = row.children[sortColumnIndex[key]];
      var value = cell ? cell.textContent.trim() : '';
      return value === '—' ? '' : value;
    }
    function sortTravelRows(key, direction) {
      var hierarchyIndex = sortHierarchy.indexOf(key);
      // The selected aggregate is primary; every finer level sorts within its parent.
      // Higher levels are retained as deterministic tie-breakers when needed.
      var keys = sortHierarchy.slice(hierarchyIndex).concat(sortHierarchy.slice(0, hierarchyIndex));
      var directionFactor = direction === 'ascending' ? 1 : -1;
      rows.forEach(function (row) {
        var areaNames = JSON.parse(row.dataset.areaNames);
        areaNames.sort(function (a, b) { return sortCollator.compare(a, b) * directionFactor; });
        row.children[sortColumnIndex.area].textContent = areaNames.length ? areaNames.join(' · ') : '—';
      });
      rows.sort(function (a, b) {
        for (var index = 0; index < keys.length; index++) {
          var aValue = rowSortValue(a, keys[index]);
          var bValue = rowSortValue(b, keys[index]);
          if (!aValue && bValue) return 1;
          if (aValue && !bValue) return -1;
          var comparison = sortCollator.compare(aValue, bValue);
          if (comparison) return comparison * directionFactor;
        }
        return Number(a.dataset.originalOrder) - Number(b.dataset.originalOrder);
      });
      var rowGroup = component.querySelector('.travel-list-rows');
      rows.forEach(function (row) { rowGroup.appendChild(row); });
      sortButtons.forEach(function (button) {
        button.parentElement.setAttribute('aria-sort', button.dataset.sortKey === key ? direction : 'none');
      });
      statusEl.textContent = 'Travelogue sorted by ' + key + ' ' + direction + '.';
    }

    sortButtons.forEach(function (button) {
      button.addEventListener('click', function () {
        var key = button.dataset.sortKey;
        activeSortDirection = activeSortKey === key && activeSortDirection === 'ascending'
          ? 'descending'
          : 'ascending';
        activeSortKey = key;
        sortTravelRows(activeSortKey, activeSortDirection);
      });
    });

    function selectEntry(id, options) {
      var entry = entryById.get(id);
      if (!entry) return;
      selectedEntryId = id;
      rows.forEach(function (row) {
        var selected = row.dataset.entryId === selectedEntryId;
        row.classList.toggle('is-selected', selected);
        row.setAttribute('aria-selected', selected ? 'true' : 'false');
      });
      updateMapSelection();
      statusEl.textContent = entry.city + ', ' + entry.country + ' selected.';
      if (options && options.focusRow) {
        var row = component.querySelector('.travel-row[data-entry-id="' + id + '"]');
        var rowViewport = component.querySelector('.travel-list-rows');
        if (row && rowViewport) {
          var rowBounds = row.getBoundingClientRect();
          var viewportBounds = rowViewport.getBoundingClientRect();
          var targetScrollTop = rowViewport.scrollTop;
          if (rowBounds.top < viewportBounds.top) {
            targetScrollTop += rowBounds.top - viewportBounds.top;
          } else if (rowBounds.bottom > viewportBounds.bottom) {
            targetScrollTop += rowBounds.bottom - viewportBounds.bottom;
          }
          if (targetScrollTop !== rowViewport.scrollTop) {
            rowViewport.scrollTo({ top: targetScrollTop, behavior: 'smooth' });
          }
        }
      }
      if (options && options.focusMap) focusMap(entry);
    }

    rows.forEach(function (row) {
      row.addEventListener('click', function () {
        selectEntry(row.dataset.entryId, { focusMap: true });
      });
    });

    function drawMap(world) {
      if (renderFrame) cancelAnimationFrame(renderFrame);
      renderFrame = 0;
      projectionDirty = false;
      panDirty = false;
      geographyDirty = false;
      pinsDirty = false;
      mapWidth = Math.max(svgEl.clientWidth || 760, 320);
      mapHeight = Math.max(svgEl.clientHeight || 360, 260);
      // One device pixel per CSS pixel keeps gesture rendering cheap even on
      // very high-DPI phones; geographic fidelity comes from the settled data.
      pixelRatio = 1;
      canvasEl.width = Math.round(mapWidth * pixelRatio);
      canvasEl.height = Math.round(mapHeight * pixelRatio);
      pinCanvasEl.width = Math.round(mapWidth * pixelRatio);
      pinCanvasEl.height = Math.round(mapHeight * pixelRatio);
      svg.attr('viewBox', '0 0 ' + mapWidth + ' ' + mapHeight);
      svg.selectAll('*:not(title):not(desc)').remove();

      projection = window.d3.geoEqualEarth()
        .rotate([0, 0, 0])
        .fitExtent([[14, 14], [mapWidth - 14, mapHeight - 14]], { type: 'Sphere' })
        .clipExtent([[0, 0], [mapWidth, mapHeight]]);
      baseProjectionScale = projection.scale();
      var worldBounds = window.d3.geoPath(projection).bounds({ type: 'Sphere' });
      baseProjectedWorldHeight = worldBounds[1][1] - worldBounds[0][1];
      panY = clamp(panY, -panLimit(), panLimit());
      canvasPath = window.d3.geoPath(projection, canvasContext);

      var visitedCodes = new Set(entries.map(function (entry) { return entry.countryCode; }));
      featureByCountryCode = new Map();
      world.features.forEach(function (feature) {
        var code = mapCountryCode(feature);
        if (code) featureByCountryCode.set(code, feature);
      });
      lowFeatureByCountryCode = new Map();
      world.lowFeatures.forEach(function (feature) {
        var code = mapCountryCode(feature);
        if (code) lowFeatureByCountryCode.set(code, feature);
      });
      visitedCountries = {
        type: 'FeatureCollection',
        features: world.features.filter(function (feature) { return visitedCodes.has(mapCountryCode(feature)); })
      };
      lowVisitedCountries = {
        type: 'FeatureCollection',
        features: world.lowFeatures.filter(function (feature) { return visitedCodes.has(mapCountryCode(feature)); })
      };
      readMapColors();

      var dragStart;
      svg.call(window.d3.drag()
        .clickDistance(5)
        .filter(function (event) {
          return !event.touches && !event.button;
        })
        .on('start', function (event) {
          svg.interrupt('reproject');
          beginInteraction();
          isDragging = true;
          setHoveredPin(null);
          dragStart = { x: event.x, y: event.y, lon: centerLon, panY: panY };
          svgEl.classList.add('is-dragging');
        })
        .on('drag', function (event) {
          var horizontalRate = 0.32 / zoomLevel;
          centerLon = wrapLongitude(dragStart.lon - (event.x - dragStart.x) * horizontalRate);
          panY = clamp(dragStart.panY + (event.y - dragStart.y), -panLimit(), panLimit());
          scheduleRender(Math.abs(event.x - dragStart.x) > 0.01, true);
        })
        .on('end', function () {
          isDragging = false;
          svgEl.classList.remove('is-dragging');
          finishInteraction();
        }));

      svg.on('pointermove.travel-pin', function (event) {
        if (isDragging || event.pointerType === 'touch') return;
        setHoveredPin(pinAtPoint(mapPointFromEvent(event)));
      });
      svg.on('pointerleave.travel-pin', function () { setHoveredPin(null); });
      svg.on('click.travel-pin', function (event) {
        var pin = pinAtPoint(mapPointFromEvent(event));
        if (pin) selectEntry(pin.entry.id, { focusRow: true, focusMap: true });
      });

      var touchGesture;
      function touchPoint(touch) {
        var bounds = svgEl.getBoundingClientRect();
        return {
          x: (touch.clientX - bounds.left) * mapWidth / bounds.width,
          y: (touch.clientY - bounds.top) * mapHeight / bounds.height
        };
      }
      function touchDistance(touches) {
        var first = touchPoint(touches[0]);
        var second = touchPoint(touches[1]);
        return Math.hypot(second.x - first.x, second.y - first.y);
      }
      function touchCenter(touches) {
        var first = touchPoint(touches[0]);
        var second = touchPoint(touches[1]);
        return { x: (first.x + second.x) / 2, y: (first.y + second.y) / 2 };
      }
      function beginTouchGesture(event) {
        svg.interrupt('reproject');
        beginInteraction();
        if (event.touches.length > 1) {
          event.preventDefault();
          touchGesture = {
            mode: 'pinch',
            distance: Math.max(touchDistance(event.touches), 1),
            point: touchCenter(event.touches)
          };
        } else if (event.touches.length === 1) {
          event.preventDefault();
          var point = touchPoint(event.touches[0]);
          touchGesture = {
            mode: 'pan',
            point: point,
            startPoint: point,
            allowTap: true,
            lon: centerLon,
            panY: panY
          };
        }
      }
      svg.on('touchstart.travel-touch', beginTouchGesture, { passive: false });
      svg.on('touchmove.travel-touch', function (event) {
        if (!touchGesture) return;
        event.preventDefault();
        if (event.touches.length > 1) {
          if (touchGesture.mode !== 'pinch') beginTouchGesture(event);
          var distance = Math.max(touchDistance(event.touches), 1);
          var point = touchCenter(event.touches);
          zoomAtPoint(zoomLevel * distance / touchGesture.distance, touchGesture.point, point);
          touchGesture.distance = distance;
          touchGesture.point = point;
          return;
        }
        if (event.touches.length === 1 && touchGesture.mode === 'pan') {
          var point = touchPoint(event.touches[0]);
          var deltaX = point.x - touchGesture.point.x;
          centerLon = wrapLongitude(touchGesture.lon - deltaX * (0.32 / zoomLevel));
          panY = clamp(touchGesture.panY + point.y - touchGesture.point.y, -panLimit(), panLimit());
          scheduleRender(Math.abs(deltaX) > 0.01, true);
        }
      }, { passive: false });
      svg.on('touchend.travel-touch touchcancel.travel-touch', function (event) {
        if (event.touches && event.touches.length === 1) {
          var point = touchPoint(event.touches[0]);
          touchGesture = {
            mode: 'pan',
            point: point,
            startPoint: point,
            allowTap: false,
            lon: centerLon,
            panY: panY
          };
        } else {
          if (touchGesture && touchGesture.mode === 'pan' && touchGesture.allowTap && event.changedTouches && event.changedTouches.length) {
            var endPoint = touchPoint(event.changedTouches[0]);
            if (Math.hypot(endPoint.x - touchGesture.startPoint.x, endPoint.y - touchGesture.startPoint.y) <= 8) {
              var tappedPin = pinAtPoint(endPoint);
              if (tappedPin) selectEntry(tappedPin.entry.id, { focusRow: true, focusMap: true });
            }
          }
          touchGesture = null;
          finishInteraction();
        }
      }, { passive: false });

      svg.on('wheel.reproject', function (event) {
        event.preventDefault();
        svg.interrupt('reproject');
        beginInteraction();
        finishInteraction();
        var pointer = window.d3.pointer(event, svgEl);
        var zoomPoint = { x: pointer[0], y: pointer[1] };
        var shouldReproject = false;
        if (Math.abs(event.deltaX) > 0.01) {
          centerLon = wrapLongitude(centerLon + event.deltaX * 0.18 / zoomLevel);
          shouldReproject = true;
        }
        if (Math.abs(event.deltaY) > 0.01) {
          var zoomRate = event.ctrlKey ? 0.01 : 0.002;
          if (shouldReproject) applyProjectionState();
          zoomAtPoint(zoomLevel * Math.exp(-event.deltaY * zoomRate), zoomPoint);
          return;
        }
        scheduleRender(shouldReproject, false);
      }, { passive: false });
      updateProjection();
      updatePinPositions();
      updateMapSelection();
      drawGeography();
      drawPins();
    }

    Promise.all([
      fetch('{{ "/assets/data/countries-50m.json" | relative_url }}').then(function (response) { return response.json(); }),
      fetch('{{ "/assets/data/states-10m.json" | relative_url }}').then(function (response) { return response.json(); }),
      fetch('{{ "/assets/data/countries-110m.geojson" | relative_url }}').then(function (response) { return response.json(); })
    ])
      .then(function (topologies) {
        var countries = topologies[0];
        var states = topologies[1];
        var lowCountries = topologies[2];
        worldData = {
          features: window.topojson.feature(countries, countries.objects.countries).features,
          land: window.topojson.feature(countries, countries.objects.land),
          countryBorders: window.topojson.mesh(countries, countries.objects.countries),
          stateBorders: window.topojson.mesh(states, states.objects.states, function (a, b) { return a !== b; }),
          lowFeatures: lowCountries.features,
          lowWorld: lowCountries
        };
        drawMap(worldData);
      })
      .catch(function () {
        statusEl.textContent = 'The map could not be loaded; the city rows remain available.';
      });

    component.querySelectorAll('[data-map-action]').forEach(function (button) {
      button.addEventListener('click', function () {
        if (!projection) return;
        var action = button.dataset.mapAction;
        if (action === 'zoom-in') animateProjection(centerLon, panY, zoomLevel * 2);
        else if (action === 'zoom-out') animateProjection(centerLon, panY, zoomLevel / 2);
        else animateProjection(0, 0, 1);
      });
    });

    if ('ResizeObserver' in window) {
      var resizeFrame;
      new ResizeObserver(function () {
        cancelAnimationFrame(resizeFrame);
        resizeFrame = requestAnimationFrame(function () {
          if (worldData) drawMap(worldData);
        });
      }).observe(svgEl);
    }

    new MutationObserver(function () {
      if (!worldData) return;
      readMapColors();
      scheduleRender(false, false, true, true);
    }).observe(document.documentElement, { attributes: true, attributeFilter: ['data-theme'] });

    selectEntry(selectedEntryId);
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

    // One globe marker per timeline stop. Label directions keep the two tight
    // metro clusters readable while preserving a one-to-one selection model.
    var markers = [
      { id: 'austin',     name: 'Austin',      lat: 30.2672, lng: -97.7431, dir: 'e'  },
      { id: 'dallas',     name: 'Dallas',      lat: 32.7767, lng: -96.7970, dir: 'ne' },
      { id: 'fort_worth', name: 'Fort Worth',  lat: 32.7555, lng: -97.3308, dir: 'w'  },
      { id: 'boston',     name: 'Boston',      lat: 42.3601, lng: -71.0589, dir: 'e'  },
      { id: 'sodertalje', name: 'Södertälje',  lat: 59.1955, lng:  17.6253, dir: 'w'  },
      { id: 'stockholm',  name: 'Stockholm',   lat: 59.3293, lng:  18.0686, dir: 'ne', current: true }
    ];
    var activeCity = markers[markers.length - 1];

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
          wrap.className = 'globe-marker globe-marker--' + d.dir + (d.id === activeCity.id ? ' is-active' : '');
          wrap.dataset.city = d.id;
          wrap.style.setProperty('--marker-accent', accent);
          var button = document.createElement('button');
          button.type = 'button';
          button.className = 'globe-marker__button';
          button.setAttribute('aria-label', 'Select ' + d.name);
          button.setAttribute('aria-pressed', d.id === activeCity.id ? 'true' : 'false');
          var dot = document.createElement('span'); dot.className = 'globe-dot';
          var name = document.createElement('span'); name.className = 'globe-name'; name.textContent = d.name;
          button.appendChild(dot); button.appendChild(name); wrap.appendChild(button);
          button.addEventListener('click', function (event) {
            event.stopPropagation();
            selectCity(d.id);
          });
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
      .ringsData(reduce ? [] : [activeCity])
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
    // Timeline and globe share one selected city. Centering is confined to the
    // timeline's own scroll box, so changing stops never moves the page itself.
    var timelineShell = document.querySelector('.journey-timeline-shell');
    var timelineStops = Array.prototype.slice.call(document.querySelectorAll('.tl-stop[data-city]'));
    function centerTimelineStop(stop, animate) {
      if (!timelineShell || !stop) return;
      var shellRect = timelineShell.getBoundingClientRect();
      var stopRect = stop.getBoundingClientRect();
      var top = timelineShell.scrollTop + stopRect.top - shellRect.top - (timelineShell.clientHeight - stopRect.height) / 2;
      timelineShell.scrollTo({ top: Math.max(0, top), behavior: animate && !reduce ? 'smooth' : 'auto' });
    }
    function selectCity(id, options) {
      options = options || {};
      var next = markers.find(function (marker) { return marker.id === id; });
      if (!next) return;
      activeCity = next;

      timelineStops.forEach(function (stop) {
        var selected = stop.dataset.city === id;
        stop.classList.toggle('is-active', selected);
        stop.setAttribute('aria-pressed', selected ? 'true' : 'false');
        if (selected && options.centerTimeline !== false) centerTimelineStop(stop, options.animate !== false);
      });
      el.querySelectorAll('.globe-marker[data-city]').forEach(function (marker) {
        var selected = marker.dataset.city === id;
        marker.classList.toggle('is-active', selected);
        var button = marker.querySelector('.globe-marker__button');
        if (button) button.setAttribute('aria-pressed', selected ? 'true' : 'false');
      });
      world.ringsData(reduce ? [] : [next]);
      if (options.moveGlobe !== false) {
        world.pointOfView({ lat: next.lat, lng: next.lng, altitude: 1.7 }, reduce || options.animate === false ? 0 : 900);
      }
    }
    timelineStops.forEach(function (stop) {
      stop.addEventListener('click', function () { selectCity(stop.dataset.city); });
      stop.addEventListener('keydown', function (event) {
        if (event.target !== stop || (event.key !== 'Enter' && event.key !== ' ')) return;
        event.preventDefault();
        selectCity(stop.dataset.city);
      });
    });
    selectCity(activeCity.id, { moveGlobe: false, animate: false });

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
      var rect = el.getBoundingClientRect();
      var w = Math.max(1, Math.floor(rect.width || el.clientWidth || 480));
      var h = Math.max(1, Math.floor(rect.height || el.clientHeight || Math.min(Math.max(w, 320), 500)));
      world.width(w).height(h);
    }
    resize();
    window.addEventListener('resize', resize);
    if ('ResizeObserver' in window) {
      var resizeFrame;
      new ResizeObserver(function () {
        cancelAnimationFrame(resizeFrame);
        resizeFrame = requestAnimationFrame(resize);
      }).observe(el);
    }

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
