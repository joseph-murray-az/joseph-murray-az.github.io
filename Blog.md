| [Home](index.md) | [Blog](About.md) | [Blog2](_posts\Blog2.md)
<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
