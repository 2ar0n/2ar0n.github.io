---
layout: default
title: Home 
---

<ul>
  {% for post in site.posts %}
    <li>
      <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      {{ post.content | strip_html | truncatewords:30 }}
    </li>
  {% endfor %}
</ul>
