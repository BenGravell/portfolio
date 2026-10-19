---
permalink: /apps
layout: page
title: Apps
show_sidebar: false
---

{% assign apps_navigation = site.data.navigation | where: "link", "/apps" | first %}

<div class="apps-layout">
  {% for entry in apps_navigation.dropdown %}
    {% if entry.label %}
      {% unless forloop.first %}
        </div>
      </div>
      {% endunless %}
      <div class="apps-section">
        <div class="apps-section-label">
          <span class="apps-section-name">{{ entry.label | escape }}</span>
        </div>
        <div class="apps-bento-grid">
    {% elsif entry.app %}
      {% assign app = site.data.apps[entry.app] %}
      <a class="apps-bento-card" href="{{ app.link }}">
        <p class="apps-bento-title">{{ app.name | escape }}</p>
        <p class="apps-bento-desc">{{ app.description }}</p>
        <div class="apps-bento-preview" aria-hidden="true">
          <img src="{{ app.image | relative_url }}" alt="" loading="lazy">
        </div>
      </a>
    {% endif %}
  {% endfor %}
    </div>
  </div>
</div>
