---
layout: page
title: USDM - Unsupervised Single-Image Face Demorphing via Reconstruction-Guided Latent Optimization
description: Nitish Shukla, Rajeev Dwivedi, Vinod Kumar Kurmi, Arun Ross; Under review
img: assets/img/publication_preview/usdm_preview.png
importance: 4
category: work
related_publications: false
---

## Research Goal
Existing demorphing methods train on sensitive biometric data and often need retraining for each new
domain. USDM recovers both contributors of a morph with no training at all: no morph–contributor pairs,
and no finetuning of any network.

## How it works
- **Start from the morph.** A StyleGAN inversion of the input morph gives a starting latent code.
- **Optimize two residuals.** Two latent residuals are optimized jointly so that the two generated faces,
  re-morphed, reproduce the input.
- **Identity-aware objectives.** Alongside reconstruction, identity-consistency and contributor-separation
  terms keep the two outputs distinct and identity-preserving. The encoder, generator and
  face-recognition network stay frozen.

<div class="row justify-content-sm-center">
  <div class="col-sm-10 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/publication_preview/usdm_preview.png" title="USDM: training-free demorphing" class="img-fluid rounded z-depth-1" %}
  </div>
</div>

**Status:** under review.
