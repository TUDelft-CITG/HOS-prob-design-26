---
layout: page
title: Announcements
nav_order: 3
nav_exclude: false
description: A feed containing all of the class announcements.
---

# Announcements

{% assign announcements = site.announcements | reverse %}
{% for announcement in announcements %}
{{ announcement }}
{% endfor %}
