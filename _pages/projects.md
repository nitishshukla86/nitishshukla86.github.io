---
layout: page
title: projects
permalink: /projects/
description: Selected research projects in face demorphing, biometric security, and multimodal large language models.
nav: true
nav_order: 4
display_categories:
horizontal: false
---

<!-- pages/projects.md -->

<div class="research-goal">
  <h2>From research questions to methods</h2>
  <p>
    My projects investigate how visual models represent evidence, recover information from ambiguous
    inputs, and support reliable decisions. Two complementary threads connect this work:
  </p>
  <ul>
    <li>
      <strong>Generative face demorphing and biometric security.</strong> I develop diffusion models,
      GANs, and identity-preserving decomposition methods to recover contributing identities from a
      single morphed face. This work also examines generalization to unfamiliar faces and morphing
      techniques, with evaluation protocols that distinguish identity recovery from input replication.
    </li>
    <li>
      <strong>Multimodal learning and inference.</strong> I study preference optimization for multi-image
      reasoning, visual token selection under computational constraints, and intermediate representations
      for detection and attribute-specific retrieval. These projects examine how existing model
      representations can reduce dependence on additional computation or human annotation.
    </li>
  </ul>
  <p>
    The projects below present the methods, experiments, and findings behind these directions.
    For the broader research agenda, visit my <a href="{{ '/research/' | relative_url }}">research page</a>.
  </p>
</div>

---

<div class="projects">
{% if site.enable_project_categories and page.display_categories %}
  <!-- Display categorized projects -->
  {% for category in page.display_categories %}
  <a id="{{ category }}" href=".#{{ category }}">
    <h2 class="category">{{ category }}</h2>
  </a>
  {% assign categorized_projects = site.projects | where: "category", category %}
  {% assign sorted_projects = categorized_projects | sort: "importance" %}
  <!-- Generate cards for each project -->
  {% if page.horizontal %}
  <div class="container">
    <div class="row row-cols-1 row-cols-md-2">
    {% for project in sorted_projects %}
      {% include projects_horizontal.liquid %}
    {% endfor %}
    </div>
  </div>
  {% else %}
  <div class="row row-cols-1 row-cols-md-3">
    {% for project in sorted_projects %}
      {% include projects.liquid %}
    {% endfor %}
  </div>
  {% endif %}
  {% endfor %}

{% else %}

<!-- Display projects without categories -->

{% assign sorted_projects = site.projects | sort: "importance" %}

  <!-- Generate cards for each project -->

{% if page.horizontal %}

  <div class="container">
    <div class="row row-cols-1 row-cols-md-2">
    {% for project in sorted_projects %}
      {% include projects_horizontal.liquid %}
    {% endfor %}
    </div>
  </div>
  {% else %}
  <div class="row row-cols-1 row-cols-md-3">
    {% for project in sorted_projects %}
      {% include projects.liquid %}
    {% endfor %}
  </div>
  {% endif %}
{% endif %}
</div>
