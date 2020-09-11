---
layout: default
title: Home 
---

<ul>
  {% for post in site.posts %}
    <li>
      <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      <p><i> {{ post.date | date_to_long_string}} </i></p>
      {{ post.content | strip_html | truncatewords:25 }}
      <a href="{{ post.url }}">Read more ⟶</a>
    </li>
  {% endfor %}
</ul>
