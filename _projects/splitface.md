---
layout: page
title: SplitFace - Rank-Regularized Branched Diffusion for Reference-Free Face Demorphing
description: Nitish Shukla, Rajeev Dwivedi, Vinod Kumar Kurmi, Arun Ross; Under review
img: assets/img/publication_preview/splitface_preview.png
importance: 3
category: work
related_publications: false
---

## Research Goal
A face morph combines two contributors into one image that can match both identities. Reference-free
demorphing recovers both contributors from the morph alone. Reconstruction supervision by itself does not
stop the two outputs from collapsing into copies of the morph, yet decorrelating everything would also
remove facial structure the two contributors genuinely share.

## How it works
- **One shared encoder, two decoder branches.** A conditional diffusion model encodes the morph once and
  reconstructs each contributor in its own decoder branch.
- **Rank-based soft decorrelation.** At every decoder resolution, a regularizer penalizes strong
  cross-branch canonical correlations while promoting feature diversity within each branch, so the
  branches separate without discarding shared structure.
- **Localized CLIP conditioning.** Region-pooled features from a frozen CLIP encoder give the decoders
  visual context through cross-attention.

<div class="row justify-content-sm-center">
  <div class="col-sm-10 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/publication_preview/splitface_preview.png" title="SplitFace architecture" class="img-fluid rounded z-depth-1" %}
  </div>
</div>

**Status:** under review.
