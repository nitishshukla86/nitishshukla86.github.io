---
layout: page
title: MorphLens - Exploiting Intermediate MLLM Representations for Single-Image Morph Attack Detection
description: Nitish Shukla et al.; Under review
importance: 8
img: assets/img/publication_preview/morphlens_preview.png
category: work
related_publications: false
---

## Research Goal
Morph attack detection decides whether a single face image is a morph that could match two people.
Multimodal LLMs already show useful morph-detection ability, but existing approaches read only the model's
endpoints: its final answer or its vision-encoder features. MorphLens asks where inside the decoder the
morph evidence is strongest, and finds that morph and bona fide images can separate before the final
language output.

## How it works
- **Frozen MLLM.** The face image and a fixed yes/no instruction pass once through a fully frozen
  multimodal LLM.
- **Probe every depth.** A lightweight linear probe reads pooled image-token representations at each
  decoder layer.
- **Select and calibrate.** The most informative intermediate layers are chosen on validation data, and
  their scores are aligned with validation percentiles.
- **Fuse and classify.** The calibrated scores are combined into one morph score. The probes are fit on
  synthetic data only and evaluated unchanged on external morph databases.

<div class="row justify-content-sm-center">
  <div class="col-sm-12 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/publication_preview/morphlens_overview.png" title="MorphLens overview" class="img-fluid rounded z-depth-1" %}
  </div>
</div>

**Status:** under review.
