---
layout: default
title: Home 
---

<ul class="index">
  {% for post in site.posts %}
    <li>
      <h2 style="display: inline"><a href="{{ post.url }}">{{ post.title }}</a></h2>
      <i> {{ post.date | date_to_long_string}} </i>
      <br/>
      {{ post.content | strip_html | truncatewords:25 }}
      <a href="{{ post.url }}">Read more ⟶</a>
    </li>
  {% endfor %}
</ul>
