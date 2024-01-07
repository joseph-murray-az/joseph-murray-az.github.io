| [Home](index.html) | [About](About.html) | [Blog](Blog.html)

## Past Posts

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
