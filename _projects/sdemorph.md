---
layout: page
title: SDeMorph - Towards Better Facial De-morphing from a Single Morph
description: Nitish Shukla; In Proceedings of IEEE IJCB 2023
img: assets/img/sdemorph_arch.png
importance: 8
category: work
related_publications: true
---

## Research Goal
At the time, demorphing was mostly reference-based (needing one identity to recover the
other) and produced low-realism outputs. This work — my first on demorphing — is
**reference-free** and uses diffusion to recover both bona fide identities from a single
morph with high facial fidelity.

## How it works
- **Destroy-then-reconstruct.** A Denoising Diffusion Probabilistic Model (DDPM)
  progressively adds Gaussian noise to the morph until it becomes pure noise, then learns
  the reverse process to reconstruct the constituent faces.
- **Branched-UNet.** A single UNet with two output branches sharing one latent code, so both
  reconstructions stay semantically tied to the input.
- **Cross-road loss.** Since the two outputs have no inherent order, the loss tries both
  output↔ground-truth pairings and keeps the lower one — automatically learning the correct
  match. A useful side-effect: given a *non*-morph, the model simply replicates the input.

<div class="row justify-content-sm-center">
  <div class="col-sm-10 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/sdemorph_arch.png" title="SDeMorph architecture" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
SDeMorph destroys the morph signal via diffusion and reconstructs the two bona fide faces
through a branched-UNet trained with a cross-road loss.
</div>

## Key results
- **Restoration accuracy** (Subject 1 / Subject 2): AMSL 97.70% / 97.24%, FRLL-FaceMorph
  96.00% / 99.50%, SMDD 96.57% / 99.37%, FRLL-MorDIFF 78.00% / 74.00%.
- ArcFace similarity confirms outputs match their *own* bona fide (scores near 1) while the
  two outputs stay distinct from each other (centered ~0.5) — i.e., no morph replication.
- Produces noticeably sharper, more feature-rich faces (hairstyle, skin features) than prior
  reference-free methods.

---

## Resources
<div class="mt-3">
  <a href="https://arxiv.org/abs/2308.11442" class="btn btn-primary btn-lg mr-2" role="button" target="_blank">
    📑 Paper
  </a>
  <a href="https://doi.org/10.1109/IJCB57857.2023.10448779" class="btn btn-dark btn-lg" role="button" target="_blank">
    🔗 IEEE Xplore
  </a>
</div>

---

## Citation
If you use this work, please cite:
{% raw %}
```bibtex
@inproceedings{shukla2023sdemorph,
  title={SDeMorph: Towards Better Facial De-morphing from Single Morph},
  author={Shukla, Nitish},
  booktitle={IEEE International Joint Conference on Biometrics (IJCB)},
  pages={1--9},
  year={2023},
  doi={10.1109/IJCB57857.2023.10448779}
}
```
{% endraw %}
