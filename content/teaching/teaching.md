---
permalink: /teaching
layout: page
title: Teaching
show_sidebar: false
---

{% include pub-styles.html %}

<div class="teaching-layout">
  <div class="teaching-bento-grid">
    {% for entry in site.data.teaching %}
    {% include teach-entry.html entry=entry %}
    {% endfor %}
  </div>
</div>
