---
layout: default
title: "Home"
---


<div class="post-list">
    {% for post in site.posts %}
    <article class="post">
        <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
        <p>{{ post.excerpt }}</p>
        <p>{{ post.date | date: "%Y년 %m월 %d일" }}</p>
    </article>
    <hr>
    {% endfor %}
</div>
