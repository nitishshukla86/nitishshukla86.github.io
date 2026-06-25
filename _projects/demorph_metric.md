---
layout: page
title: A Metric for Evaluating Reference-Free Demorphing Methods
description: Nitish Shukla, Arun Ross; In Proceedings of WACV Workshops (WACVW 2025)
img: assets/img/metric_comparison.png
importance: 6
category: work
related_publications: true
---

## Research Goal
As reference-free demorphers proliferated, there was no agreed way to *evaluate* them — and
the popular metrics are actively misleading. This work diagnoses why and proposes a metric
that faithfully measures how well a demorpher recovers the true constituent identities.

## Why existing metrics fail
- **TMR & Restoration Accuracy reward cheating.** A morph is, by construction, biometrically
  close to both its constituents — so a trivial demorpher that just *outputs the morph
  twice* scores ~100% TMR/RA. The metric can't tell real demorphing from regurgitation.
- **SSIM/PSNR ignore identity.** Operating purely in RGB pixel space, they can rate a face
  as structurally closer to a *different* identity than to a noisy copy of itself —
  nonsensical for a biometric task.

## The proposed metric
**Biometrically cross-weighted IQA — BW(iqa):** weight each output↔ground-truth image-quality
score (SSIM or PSNR) by the *biometric* match score between the same pair, and take the max
over the two possible (unordered) pairings. This couples structural fidelity in pixel space
with identity fidelity in feature space, so scores track what a human sees.

<div class="row justify-content-sm-center">
  <div class="col-sm-10 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/metric_psnr_ssim.png" title="Failure cases of PSNR/SSIM" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
Plain IQA can rate a face as "closer" to a different identity than to a noisy version of
itself — exactly the failure BW-IQA corrects.
</div>

## Key results
- Benchmarks three demorphers (Facial Demorphing, SDeMorph, IPD) across **six datasets** and
  **two matchers** (AdaFace, ArcFace).
- Under BW-IQA, **IPD ranks best** (BW-SSIM 0.23 / BW-PSNR 6.0), ahead of Facial Demorphing
  (0.17 / 3.84) and SDeMorph (0.14 / 3.62) — consistent with visual inspection, unlike
  TMR/RA which crown the trivial solution.

---

## Resources
<div class="mt-3">
  <a href="https://arxiv.org/abs/2501.12319" class="btn btn-primary btn-lg mr-2" role="button" target="_blank">
    📑 Paper
  </a>
</div>

---

## Results
<div class="row">
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/metric_comparison.png" title="Benchmark comparison" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
Benchmarking demorphing methods under the proposed metric across six datasets and two face
matchers.
</div>

---

## Citation
If you use this work, please cite:
{% raw %}
```bibtex
@inproceedings{shukla2025metric,
  title={Metric for Evaluating Performance of Reference-Free Demorphing Methods},
  author={Shukla, Nitish and Ross, Arun},
  booktitle={IEEE/CVF Winter Conference on Applications of Computer Vision Workshops (WACVW)},
  pages={1670--1676},
  year={2025}
}
```
{% endraw %}
