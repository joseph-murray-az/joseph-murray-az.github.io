<a href="{{ post.url }}"</a>
<a href="{{ post.title }}"</a>
<a href="{{ contents }}"</a>


<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
