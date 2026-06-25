---
layout: page
title: projects
permalink: /projects/
description: Selected research projects in face demorphing, biometric security, and multimodal large language models.
nav: true
nav_order: 3
display_categories:
horizontal: false
---

<!-- pages/projects.md -->

<div class="research-goal">
  <h2>Research Goal</h2>
  <p>
    My research sits at the intersection of <strong>representation learning</strong> and
    <strong>model reliability</strong> in deep learning, with a focus on how complex neural
    systems encode, reason over, and sometimes fail to disentangle fine-grained visual
    information in <strong>security-critical settings</strong>. I pursue two complementary
    threads:
  </p>
  <ul>
    <li>
      <strong>Generative face demorphing &amp; biometric security.</strong> Morph attacks
      let a single forged face match multiple identities and threaten face recognition
      systems. I build diffusion- and GAN-based reconstruction models, benchmarks, and
      evaluation protocols that not only <em>detect</em> morphs but <em>recover</em> the
      constituent identities — providing forensic evidence and strengthening downstream
      morph attack detection.
    </li>
    <li>
      <strong>Multimodal large language models (MLLMs).</strong> I study how MLLMs encode
      and reason over visual information, addressing two questions: (a) how to optimize
      MLLMs for multi-image reasoning without extensive human annotation, and (b) how to
      leverage their internal representations to learn richer features for downstream
      retrieval and generation tasks.
    </li>
  </ul>
  <p>
    The unifying goal is <strong>trustworthy visual intelligence</strong>: models that are
    accurate, interpretable, and dependable when the stakes are high.
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
