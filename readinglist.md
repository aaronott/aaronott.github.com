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
    <span class="post-meta">{{ item.date | date: "%b %-d, %Y" }}</span>
    <span class="reading-list-item"><a href="{{item.link}}">{{item.title}}</a></span>
  </li>
{% endfor %}
</ul>

