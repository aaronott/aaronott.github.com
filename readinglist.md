---
layout: page
title: Reading List
permalink: /readinglist/
---

This is a list of security related whitepapers, blog posts, and books that I've
read

<ul>
{% for item in site.data.readinglist %}
  <li>
    <time datetime="{{item.date}}T12:34:00-06:00" itemprop="datePublished">{{item.date}}</time>
    <span class="reading-list-item"><a href="{{item.list}}">{{item.title}}</a>
  </li>
{% endfor %}

