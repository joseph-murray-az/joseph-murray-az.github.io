<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ contents }}{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
