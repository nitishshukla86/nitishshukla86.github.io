---
layout: page
permalink: /publications/
title: publications
description: Publications and preprints in multimodal learning, generative modeling, and biometric security, followed by ongoing manuscripts.
nav: true
nav_order: 3

# Set to false and rebuild to remove every unpublished manuscript from the public site.
show_inprogress: true
---

<!-- _pages/publications.md -->

<!-- Bibsearch Feature -->

{% include bib_search.liquid %}

<div class="publications">

<h2 class="bibliography">Publications &amp; preprints</h2>

{% bibliography %}

{% if page.show_inprogress %}

<h2 class="bibliography">Under review &amp; in preparation</h2>

<p>
  The following manuscripts are under review or in preparation and have not yet been accepted for publication.
  Each entry includes its current status. Please <a href="mailto:shuklan3@msu.edu">contact me</a> to request a draft.
</p>

{% bibliography -f preprints %}

{% endif %}

</div>
