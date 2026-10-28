---
layout: page
permalink: /publications/
title: publications
description: Peer-reviewed papers, then manuscripts under review and in preparation. Status is stated for every entry.
nav: true
nav_order: 3

# Set to false and rebuild to remove every unpublished manuscript from the public site.
show_inprogress: true
---

<!-- _pages/publications.md -->

<!-- Bibsearch Feature -->

{% include bib_search.liquid %}

<div class="publications">

<h2 class="bibliography">peer-reviewed</h2>

{% bibliography %}

{% if page.show_inprogress %}

<h2 class="bibliography">under review &amp; in preparation</h2>

<p>
  These manuscripts have <strong>not</strong> been peer reviewed or accepted anywhere. They are listed with
  titles and status only; please <a href="mailto:shuklan3@msu.edu">email me</a> for a draft.
</p>

{% bibliography -f preprints %}

{% endif %}

</div>
