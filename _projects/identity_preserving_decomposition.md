---
layout: page
title: Facial Demorphing via Identity Preserving Image Decomposition
description: Nitish Shukla, Arun Ross; In Proceedings of IEEE IJCB 2024
img: assets/img/ipd_arch.png
importance: 7
category: work
related_publications: true
---

## Research Goal
Most early demorphers are *reference-based* — they need an image of one identity to recover
the other, which is rarely available. This work is **reference-free**: it frames demorphing
as ill-posed image decomposition and recovers both constituent faces from a single morph.

## How it works
- **Two-stage decompose–merge.** A *decomposer* (one encoder, $k$ decoders sharing a latent
  and skip connections) breaks the morph into $k$ identity-preserving components; a *merger*
  ($k$ encoders, one decoder) selects and recombines them into a face. For demorphing, a
  second merger decoder is added so the network reconstructs *both* bonafides.
- **Decomposition loss.** Components are explicitly pushed to look *unlike* the input and
  *unlike each other* — so each captures distinct, non-redundant identity information rather
  than copying the morph.
- **Cross-road loss** matches the two unordered outputs to the ordered ground-truth pair.
  Reconstruction vs. decomposition is balanced by setting $\lambda = 1/(k{+}1)$.
- **Privacy angle.** Because identity is *distributed* across components, individual
  components leak almost nothing — a built-in privacy-preserving decomposition.

<div class="row justify-content-sm-center">
  <div class="col-sm-10 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/ipd_arch.png" title="Decompose–merge architecture" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
The morph is decomposed into identity-preserving components, which a merger network weighs
and recombines to recover the two constituent bonafides.
</div>

## Key results
- **Restoration accuracy:** AMSL 99.84% (Subject 1) / 100% (Subject 2); SMDD 97.80% / 99.93%
  — beating SDeMorph on both.
- **Reconstruction quality:** CASIA-WebFace FID 0.184, SSIM 0.992, PSNR 43.86; SMDD FID
  0.216, SSIM 0.987, PSNR 39.22. Match accuracy on CASIA 96.03% (99.67% with undetected
  faces removed).
- **Identity hiding:** with $k=3$, two of three components leak 0% identity and the third
  only 16.43% — confirming identity is well distributed for privacy.

---

## Resources
<div class="mt-3">
  <a href="https://arxiv.org/abs/2408.10993" class="btn btn-primary btn-lg mr-2" role="button" target="_blank">
    📑 Paper
  </a>
  <a href="https://doi.org/10.1109/IJCB62174.2024.10744431" class="btn btn-dark btn-lg" role="button" target="_blank">
    🔗 IEEE Xplore
  </a>
</div>

---

## Results
<div class="row">
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/ipd_arch2.png" title="Decomposition pipeline" class="img-fluid rounded z-depth-1" %}
  </div>
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/ipd_dist.png" title="Score distributions" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
(Left) The decompose–merge pipeline. (Right) Match-score distributions show recovered
bonafides separating cleanly from the morph identities.
</div>

---

## Citation
If you use this work, please cite:
{% raw %}
```bibtex
@inproceedings{shukla2024ipd,
  title={Facial Demorphing via Identity Preserving Image Decomposition},
  author={Shukla, Nitish and Ross, Arun},
  booktitle={IEEE International Joint Conference on Biometrics (IJCB)},
  pages={1--10},
  year={2024},
  doi={10.1109/IJCB62174.2024.10744431}
}
```
{% endraw %}
