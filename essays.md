---
layout: page
title: On stuff and things
permalink: /essays/
---

<div class="essays">
  {% for essay in site.essays %}
    <article class="essay">

      <h1><a href="{{ site.baseurl }}{{ essay.url }}">{{ essay.title }}</a></h1>

      <div class="entry">
        {{ essay.excerpt }}
      </div>

      <a href="{{ site.baseurl }}{{ essay.url }}" class="read-more">Read More</a>
    </article>
  {% endfor %}
</div>
