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
    <p>Most of my working life happens in the fraction of a second that a machine has to decide how to move. That's where a modern motion planner sits: quietly anticipating possible futures and  realizing one that is smooth, safe, and defensible in front of a whiteboard. I got here by way of a PhD spent making uncertain dynamical systems behave when the world refuses to.</p>
  </div>
</div>

<h2>My journey: six cities along one thoughtful trajectory.</h2>

<p>I plan trajectories for a living, so it should come as no surprise that I've planned my own.</p>

<p>The route so far: born & raised in the heart of Texas, drifted steadily northeast to Boston, and washed up south of Stockholm.</p>

<div class="globe-wrap">
  <div id="journey-globe" role="img" aria-label="An interactive globe tracing my move across six cities, from Texas to Stockholm. Drag to spin."></div>
  <div class="globe-legend" role="note">
    <p class="globe-legend__row globe-legend__controls">
      <span class="globe-legend__icon"><i class="fas fa-arrows-up-down-left-right"></i></span> Drag to spin
      <span class="globe-legend__sep" aria-hidden="true">·</span>
      <span class="globe-legend__icon"><i class="fas fa-magnifying-glass-plus"></i></span> Scroll or pinch to zoom
    </p>
    <p class="globe-legend__row globe-legend__key">
      <span class="legend-key"><span class="legend-swatch legend-swatch--arc" aria-hidden="true"></span> Route</span>
      <span class="legend-key"><span class="legend-swatch legend-swatch--ring" aria-hidden="true"></span> Home</span>
    </p>
  </div>
</div>

{% assign stops = "stockholm::Stockholm::2025–present::Scania, from Sweden's capital: digging deep into search trees, trajectory optimization, and the tooling that tells you whether a motion planner is genuinely good or just got lucky.|sodertalje::Södertälje::2024–2025::Scania, on its home turf: I landed in Sweden and hit the ground running towards making a mining truck drive itself. |boston::Boston::2022–2024::Zoox, and the unglamorous art of autonomy evaluation: turning “yeah, that drive felt fine” into a number you can actually argue about and optimize against.|fort_worth::Fort Worth::2017–2018::My first real engineering job: analyzing the structural load-handling of high-performance metallic aerospace parts.|dallas::Dallas::2013–2017 · 2018–2022::Where I learned the theory of decision-making: a bachelor's in mechanical engineering, then a PhD focused on control theory and reinforcement learning.|austin::Austin::1994–2013::Where I grew up - out in the Texas suburbs, cutting my teeth on the basics of engineering and nurturing a love for jazz improvisation on the trumpet & bass." | split: "|" %}
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
          <a class="glightbox" href="{{ ph.path | relative_url }}" data-gallery="city-{{ folder }}" data-title="{{ p[1] }} · {{ p[2] }}">
            <img loading="lazy" src="{{ ph.path | relative_url }}" alt="{{ p[1] }}">
          </a>
        {% endfor %}
      </div>
    </div>
  {% endfor %}
</div>

<h2>A humble catchy melody, currently in residence.</h2>

<p>I find far too much music on Tidal and mangle my favorites into mixtapes. My taste never picked a lane - orchestral and jazz in one ear; indie and electronic in the other. Vulfpeck convinced me that <em>the pocket</em> is a moral virtue, and Koan Sound convinced me that a sub-bass can have a personality.</p>

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
  <p class="album-group__label">Funk &amp; soul</p>
  <div class="albums">
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/vulfpeck-schvitz.jpg' | relative_url }}" data-gallery="albums" data-title="Vulfpeck — Schvitz">
        <img loading="lazy" src="{{ '/assets/images/about/music/vulfpeck-schvitz.jpg' | relative_url }}" alt="Vulfpeck — Schvitz album cover">
      </a>
      <figcaption><strong>Schvitz</strong><br>Vulfpeck</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/theo-katzman-be-the-wheel.jpg' | relative_url }}" data-gallery="albums" data-title="Theo Katzman — Be the Wheel">
        <img loading="lazy" src="{{ '/assets/images/about/music/theo-katzman-be-the-wheel.jpg' | relative_url }}" alt="Theo Katzman — Be the Wheel album cover">
      </a>
      <figcaption><strong>Be the Wheel</strong><br>Theo Katzman</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/khruangbin-leon-bridges-texas-sun.jpg' | relative_url }}" data-gallery="albums" data-title="Khruangbin &amp; Leon Bridges — Texas Sun">
        <img loading="lazy" src="{{ '/assets/images/about/music/khruangbin-leon-bridges-texas-sun.jpg' | relative_url }}" alt="Khruangbin &amp; Leon Bridges — Texas Sun album cover">
      </a>
      <figcaption><strong>Texas Sun</strong><br>Khruangbin &amp; Leon Bridges</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/lawrence-living-room.jpg' | relative_url }}" data-gallery="albums" data-title="Lawrence — Living Room">
        <img loading="lazy" src="{{ '/assets/images/about/music/lawrence-living-room.jpg' | relative_url }}" alt="Lawrence — Living Room album cover">
      </a>
      <figcaption><strong>Living Room</strong><br>Lawrence</figcaption>
    </figure>
  </div>
</div>

<div class="album-group">
  <p class="album-group__label">Dream pop &amp; folk</p>
  <div class="albums">
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/men-i-trust-oncle-jazz.jpg' | relative_url }}" data-gallery="albums" data-title="Men I Trust — Oncle Jazz">
        <img loading="lazy" src="{{ '/assets/images/about/music/men-i-trust-oncle-jazz.jpg' | relative_url }}" alt="Men I Trust — Oncle Jazz album cover">
      </a>
      <figcaption><strong>Oncle Jazz</strong><br>Men I Trust</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/still-woozy-if-this-isnt-nice.jpg' | relative_url }}" data-gallery="albums" data-title="Still Woozy — If This Isn't Nice, I Don't Know What Is">
        <img loading="lazy" src="{{ '/assets/images/about/music/still-woozy-if-this-isnt-nice.jpg' | relative_url }}" alt="Still Woozy — If This Isn't Nice, I Don't Know What Is album cover">
      </a>
      <figcaption><strong>If This Isn't Nice, I Don't Know What Is</strong><br>Still Woozy</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/taeko-onuki-mignonne.jpg' | relative_url }}" data-gallery="albums" data-title="Taeko Onuki — Mignonne">
        <img loading="lazy" src="{{ '/assets/images/about/music/taeko-onuki-mignonne.jpg' | relative_url }}" alt="Taeko Onuki — Mignonne album cover">
      </a>
      <figcaption><strong>Mignonne</strong><br>Taeko Onuki</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/norah-jones-come-away-with-me.jpg' | relative_url }}" data-gallery="albums" data-title="Norah Jones — Come Away with Me">
        <img loading="lazy" src="{{ '/assets/images/about/music/norah-jones-come-away-with-me.jpg' | relative_url }}" alt="Norah Jones — Come Away with Me album cover">
      </a>
      <figcaption><strong>Come Away with Me</strong><br>Norah Jones</figcaption>
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
      <a class="glightbox" href="{{ '/assets/images/about/music/freddie-hubbard-red-clay.jpg' | relative_url }}" data-gallery="albums" data-title="Freddie Hubbard — Red Clay">
        <img loading="lazy" src="{{ '/assets/images/about/music/freddie-hubbard-red-clay.jpg' | relative_url }}" alt="Freddie Hubbard — Red Clay album cover">
      </a>
      <figcaption><strong>Red Clay</strong><br>Freddie Hubbard</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/oscar-peterson-night-train.jpg' | relative_url }}" data-gallery="albums" data-title="Oscar Peterson — Night Train">
        <img loading="lazy" src="{{ '/assets/images/about/music/oscar-peterson-night-train.jpg' | relative_url }}" alt="Oscar Peterson — Night Train album cover">
      </a>
      <figcaption><strong>Night Train</strong><br>Oscar Peterson</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/thelonious-monk-straight-no-chaser.jpg' | relative_url }}" data-gallery="albums" data-title="Thelonious Monk — Straight, No Chaser">
        <img loading="lazy" src="{{ '/assets/images/about/music/thelonious-monk-straight-no-chaser.jpg' | relative_url }}" alt="Thelonious Monk — Straight, No Chaser album cover">
      </a>
      <figcaption><strong>Straight, No Chaser</strong><br>Thelonious Monk</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/sonny-rollins-saxophone-colossus.jpg' | relative_url }}" data-gallery="albums" data-title="Sonny Rollins — Saxophone Colossus">
        <img loading="lazy" src="{{ '/assets/images/about/music/sonny-rollins-saxophone-colossus.jpg' | relative_url }}" alt="Sonny Rollins — Saxophone Colossus album cover">
      </a>
      <figcaption><strong>Saxophone Colossus</strong><br>Sonny Rollins</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/clifford-brown-study-in-brown.jpg' | relative_url }}" data-gallery="albums" data-title="Clifford Brown — Study in Brown">
        <img loading="lazy" src="{{ '/assets/images/about/music/clifford-brown-study-in-brown.jpg' | relative_url }}" alt="Clifford Brown — Study in Brown album cover">
      </a>
      <figcaption><strong>Study in Brown</strong><br>Clifford Brown</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/count-basie-the-atomic-mr-basie.jpg' | relative_url }}" data-gallery="albums" data-title="Count Basie — The Atomic Mr. Basie">
        <img loading="lazy" src="{{ '/assets/images/about/music/count-basie-the-atomic-mr-basie.jpg' | relative_url }}" alt="Count Basie — The Atomic Mr. Basie album cover">
      </a>
      <figcaption><strong>The Atomic Mr. Basie</strong><br>Count Basie</figcaption>
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
      <a class="glightbox" href="{{ '/assets/images/about/music/mussorgsky-pictures-at-an-exhibition.jpg' | relative_url }}" data-gallery="albums" data-title="Mussorgsky — Pictures at an Exhibition">
        <img loading="lazy" src="{{ '/assets/images/about/music/mussorgsky-pictures-at-an-exhibition.jpg' | relative_url }}" alt="Mussorgsky — Pictures at an Exhibition album cover">
      </a>
      <figcaption><strong>Pictures at an Exhibition</strong><br>Mussorgsky</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/ravel-daphnis-et-chloe.jpg' | relative_url }}" data-gallery="albums" data-title="Ravel — Daphnis et Chloé">
        <img loading="lazy" src="{{ '/assets/images/about/music/ravel-daphnis-et-chloe.jpg' | relative_url }}" alt="Ravel — Daphnis et Chloé album cover">
      </a>
      <figcaption><strong>Daphnis et Chloé</strong><br>Ravel</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/debussy-prelude-faun.jpg' | relative_url }}" data-gallery="albums" data-title="Debussy — Prélude à l'après-midi d'un faune">
        <img loading="lazy" src="{{ '/assets/images/about/music/debussy-prelude-faun.jpg' | relative_url }}" alt="Debussy — Prélude à l'après-midi d'un faune album cover">
      </a>
      <figcaption><strong>Prélude à l'après-midi d'un faune</strong><br>Debussy</figcaption>
    </figure>
    <figure class="album">
      <a class="glightbox" href="{{ '/assets/images/about/music/rachmaninov-rhapsody-paganini.jpg' | relative_url }}" data-gallery="albums" data-title="Rachmaninov — Rhapsody on a Theme of Paganini">
        <img loading="lazy" src="{{ '/assets/images/about/music/rachmaninov-rhapsody-paganini.jpg' | relative_url }}" alt="Rachmaninov — Rhapsody on a Theme of Paganini album cover">
      </a>
      <figcaption><strong>Rhapsody on a Theme of Paganini</strong><br>Rachmaninov</figcaption>
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
  <p class="book-group__note">Far futures, first contact, and thinking machines — the big ideas that linger long after the plot resolves.</p>
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
    <figure class="book">
      <a class="glightbox" href="{{ '/assets/images/about/books/exhalation.jpg' | relative_url }}" data-gallery="books" data-title="Exhalation — Ted Chiang">
        <img loading="lazy" src="{{ '/assets/images/about/books/exhalation.jpg' | relative_url }}" alt="Exhalation — Ted Chiang book cover">
      </a>
      <figcaption><strong>Exhalation</strong><br>Ted Chiang</figcaption>
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
  <p class="book-group__note">And the occasional book that reads suspiciously like my job description — randomness, uncertainty, and machines being handed the decision.</p>
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

<h2>Coffee, tea, and the serious business of <em>fika</em>.</h2>

<p>A distressing share of my life is organized around cafés. Sweden invited me <em>fika</em> — coffee and a pastry, observed with the reverence of a daily standup — and I took to it immediately. I'll happily travel for a good cup; the one that recalibrated my expectations was <a href="https://www.hvala.com.sg" target="_blank" rel="noopener noreferrer">Hvala</a> in Singapore.</p>

{% assign coffeepics = site.static_files | where_exp: "f", "f.path contains '/assets/images/about/coffee/'" | sort: "name" %}
<div class="photo-strip is-large">
  {% for ph in coffeepics %}
    <a class="glightbox" href="{{ ph.path | relative_url }}" data-gallery="coffee" data-title="Fika">
      <img loading="lazy" src="{{ ph.path | relative_url }}" alt="A café moment">
    </a>
  {% endfor %}
</div>

<h2>How cities think, and the long view of history.</h2>

<p>A lot of what fascinates me off the clock rhymes with the day job: planning, systems, and complexity emerging from simple rules. I'm endlessly curious about urban planning and architecture — how a city decides to grow, and how a building decides to stand — and I explore what I find on foot and by rail, photographing the long walks in between. Off to the side, I'm a sucker for good typography and slowly learning the Swedish language. For the very long view, I let Dan Carlin's <a href="https://www.dancarlin.com/hardcore-history-series/" target="_blank" rel="noopener noreferrer"><em>Hardcore History</em></a> narrate the slow arc of humanity.</p>

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

<h2>When the walking's done, I plan in miniature.</h2>

<p>The same itch — build a system, then watch it run — follows me onto the gaming screen. For me, chilling means laying out cities, stranding the occasional Kerbal in low orbit, untangling subway lines under a ticking clock, and chasing a clean racing line through the hills.</p>

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
#journey-globe { width: 100%; min-height: 320px; cursor: grab; }
#journey-globe:active { cursor: grabbing; }
#journey-globe canvas { display: block; outline: none; }
/* Controls + legend callout under the globe */
.globe-legend { width: max-content; max-width: 100%; margin: 0.75rem auto 0; padding: 0.5rem 0.95rem;
  background: var(--color-card-bg); border: 1px solid var(--color-card-border); border-radius: 9px;
  font-family: 'Space Mono', monospace; font-size: 0.72rem; letter-spacing: 0.03em;
  color: var(--color-text-muted); text-align: center; }
.globe-legend__row { margin: 0 !important; display: flex; flex-wrap: wrap; justify-content: center;
  align-items: center; gap: 0.4rem; }
.globe-legend__controls { color: var(--color-text); }
.globe-legend__key { margin-top: 0.35rem !important; gap: 1.2rem; }
.globe-legend__icon { color: var(--color-accent); }
.globe-legend__sep { opacity: 0.45; }
.legend-key { display: inline-flex; align-items: center; gap: 0.4rem; }
.legend-swatch { display: inline-block; flex: 0 0 auto; }
.legend-swatch--arc { width: 18px; height: 0; border-top: 2px dashed var(--color-accent); }
.legend-swatch--ring { width: 11px; height: 11px; border: 2px solid var(--color-accent); border-radius: 50%; }

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

@media screen and (max-width: 768px) {
  .photo-strip img { height: 88px; max-width: 130px; }
  .photo-strip.is-large img { height: 180px; max-width: 260px; }
  .book { width: 104px; }
  .book img { width: 104px; height: 156px; }
  .game { width: 110px; }
  .game img { width: 110px; height: 165px; }
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

    var dark = isDark();
    var reduce = mm('(prefers-reduced-motion: reduce)').matches;
    var accent = cssVar('--color-accent', dark ? '#60c6f0' : '#026bac');
    var accentRgb = hexToRgb(accent);
    var ocean = dark ? '#0e1b27' : '#dfeaf2';
    var land = dark ? '#33485c' : '#aebfcc';
    var landStroke = dark ? '#496177' : '#93a7b6';

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
    var legs = [];
    for (var i = 0; i < markers.length - 1; i++) legs.push(legPath(markers[i], markers[i + 1]));

    var world = Globe()(el)
      .backgroundColor('rgba(0,0,0,0)')
      .showAtmosphere(true).atmosphereColor(accent).atmosphereAltitude(0.18)
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
        .pathStroke(0.6)
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

    var controls = world.controls();
    controls.enableZoom = true;       // mouse wheel + touchpad pinch
    controls.zoomSpeed = 0.9;
    controls.minDistance = 120;       // how close you can zoom in
    controls.maxDistance = 600;       // how far you can zoom out
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

    function resize() {
      var w = el.clientWidth || 480;
      var h = Math.round(Math.min(Math.max(w, 320), 460));
      world.width(w).height(h);
    }
    resize();
    window.addEventListener('resize', resize);
  });
</script>
