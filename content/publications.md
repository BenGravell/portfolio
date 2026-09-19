---
permalink: /publications
layout: page
title: Publications
show_sidebar: false
---

{% include pub-styles.html %}

{% for pub in site.data.publications %}
{% include pub-entry.html pub=pub gallery_id=forloop.index %}
{% endfor %}

{% include lightbox.html %}
