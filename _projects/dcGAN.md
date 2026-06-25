---
layout: page
title: dc-GAN - Dual Conditioned GAN for Face Demorphing From a Single Morph
description: Nitish Shukla, Arun Ross; In Proceedings of 19th IEEE FG 2025
img: assets/img/fg2025.png
importance: 5
category: work
related_publications: true
---

## Research Goal
Existing demorphers assume some identities are shared between train and test sets, and tend
to merely replicate the morph. This work removes the shared-identity assumption and is the
first to overcome morph-replication when **test morphs use entirely unseen identities**
(the hardest "scenario 3"), in both reference-free and reference-based settings.

## How it works
- **Dual conditioning.** A UNet generator is conditioned on (i) the morph image in the
  *image* domain and (ii) the morph embedding $\mathcal{E}(x)$ injected into its
  *latent* layers — giving far richer guidance than the morph image alone.
- **Conditioned discriminator.** The discriminator also sees the morph, distinguishing a
  *real* triplet (morph, BF1, BF2) from a *fake* one (morph, OUT1, OUT2). The two
  conditions work in tandem to suppress morph-replication.
- **Cross-road loss** aligns the unordered generator outputs with the ordered ground-truth
  faces. For reference-based (differential) demorphing, the encoder simply takes the morph
  *and* a reference image (6-channel input).

<div class="row justify-content-sm-center">
  <div class="col-sm-8 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/dcgan_arch.png" title="dc-GAN architecture" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
An image encoder embeds the morph to condition a UNet generator (alongside the morph
image); the discriminator separates real from synthetic (morph, face, face) triplets.
</div>

## Key results
- **93.86%** average TMR on AMSL (ArcFace), **+23.32%** over the prior GAN baseline;
  strong TMR across OpenCV (93.99%), WebMorph (89.87%), FaceMorpher (94.39%), MorDiff
  (93.75%).
- Wins decisively in scenario 3 (unseen identities) while staying competitive in scenario 1.
- **Ablations:** removing the cross-road loss drops performance **−20.87%**; removing the
  embedding condition $\mathcal{E}$ drops it **−8.57%** — both conditions matter.
- Reference-based (differential) demorphing reaches **94.88%** TMR on AMSL.

---

## Resources
<div class="mt-3">
  <a href="https://arxiv.org/abs/2411.14494" class="btn btn-primary btn-lg mr-2" role="button" target="_blank">
    📑 Paper
  </a>
  <a href="https://github.com/nitishshukla86/dcGAN" class="btn btn-dark btn-lg" role="button" target="_blank">
    💻 Code
  </a>
</div>

---

## Citation
If you use this work, please cite:
{% raw %}
```bibtex
@INPROCEEDINGS{shukla2025dcgan,
  author={Shukla, Nitish and Ross, Arun},
  booktitle={2025 IEEE 19th International Conference on Automatic Face and Gesture Recognition (FG)},
  title={dc-GAN: Dual-Conditioned GAN for Face Demorphing From a Single Morph},
  year={2025},
  pages={1-9},
  doi={10.1109/FG61629.2025.11099072}}
```
{% endraw %}
