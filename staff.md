---
layout: page
title: Instructors
nav_order: 4
description: A listing of all the course staff members.
---

# Instructors

A number of instructors are involved in this unit. Your primary point of contact is Robert Lanzafame.
## Instructors

{% assign instructors = site.staffers | where: 'role', 'Instructor' %}
{% for staffer in instructors %}
{{ staffer }}
{% endfor %}

<!-- ## Teaching Assistant

{% assign teaching_assistants = site.staffers | where: 'role', 'Teaching Assistant' %}
{% assign num_teaching_assistants = teaching_assistants | size %}
{% if num_teaching_assistants != 0 %}

{% for staffer in teaching_assistants %}
{{ staffer }}
{% endfor %}
{% endif %} -->
