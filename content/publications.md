---
permalink: /publications
layout: page
title: Publications
subtitle: My Peer-Reviewed & Published Research
show_sidebar: false
---

{% include pub-styles.html %}
{% include pub-modal.html %}

{% for pub in site.data.publications %}
{% include pub-entry.html pub=pub %}
{% endfor %}

{% include pub-scripts.html %}
