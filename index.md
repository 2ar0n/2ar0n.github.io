---
layout: default
title: Home
---

<h1>{{ "Hello World!" | downcase }}</h1>
what the hell is this

yes

<ul>
  {% for post in site.posts %}
    <li>
      <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      {{ post.excerpt }}
      lol
    </li>
  {% endfor %}
</ul>
