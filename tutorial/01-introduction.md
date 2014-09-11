---
layout: collection
title: New Year's Resolution
---

# My title! #

An introduction.

## Important subsection ##

<a href="/pictures/koalifications.jpg"><img src="/pictures/koalifications.jpg"></a>

## Another important subsection ##

{% if page.previous %}
<p>Previous: <a href="{{ page.previous.url }}">{{ page.previous.title }}</a></p>
{% endif %}
{% if page.next %}
<p>Next: <a href="{{ page.next.url }}">{{ page.next.title }}</a></p>
{% endif %}
