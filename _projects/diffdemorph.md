---
layout: page
title: diffDeMorph - Extending Reference-Free Demorphing to Unseen Faces
description: Nitish Shukla, Arun Ross; In Proceedings of IEEE ICIP 2025
img: assets/img/diffdemorph_arch.png
importance: 4
category: work
related_publications: true
---

## Research Goal
Earlier reference-free demorphers assume the test morphs use the *same* morphing
technique and *same* face style as training. This work removes those assumptions: a
demorpher trained purely on **synthetic** morphs that generalizes to **real** morphs made
with **unseen** techniques and styles — the realistic operational setting.

## How it works
- **Coupled forward diffusion.** The two faces are treated as a single 6-channel object
  $i=(i_1,i_2)$ and noised together, so the reverse process must denoise both at once
  rather than producing two near-duplicate marginals.
- **Morph-guided reverse sampling in RGB.** At each step the denoising UNet (9-in / 6-out)
  concatenates the morph image *in the RGB domain* with the noisy sample. Conditioning in
  pixel space — rather than a compressed latent — lets the model attend to hair,
  background, and other low-salience details essential for demorphing.
- This fixes a key flaw in prior diffusion demorphing, whose evaluation lacked a true
  backward-sampling step (reducing it to an autoencoder) and so failed on unseen morphs.

<div class="row justify-content-sm-center">
  <div class="col-sm-10 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/diffdemorph_arch.png" title="diffDeMorph architecture" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
Coupled diffusion: both constituent faces are reconstructed jointly from noise, with the
morph injected as RGB guidance at every denoising step.
</div>

## Key results
- First method to generalize across morph techniques **and** face styles; beats the prior
  state of the art by **≥59.46%** Restoration Accuracy under a common protocol (per-dataset
  RA gains of 73.80 / 59.46 / 62.18 / 74.21 / 61.88 / 79.75%).
- TMR@10%FMR gains of **27–69%** across the six datasets over the closest competitor;
  near-saturated TMR (99–100%) on AMSL, OpenCV, FaceMorpher, WebMorph, MorDiff, StyleGAN.
- **RGB vs. latent ablation:** RGB conditioning reaches 99.21% TMR / 99.97% RA vs. 87.72% /
  97.44% in latent space — latent compression erases details demorphing depends on.

---

## Resources
<div class="mt-3">
  <a href="https://arxiv.org/abs/2505.14527" class="btn btn-primary btn-lg mr-2" role="button" target="_blank">
    📑 Paper
  </a>
</div>

---

## Results
<div class="row">
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/diffdemorph_examples.png" title="Qualitative examples" class="img-fluid rounded z-depth-1" %}
  </div>
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/diffdemorph_rgb_latent.png" title="RGB vs latent" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
(Left) Demorphing across multiple techniques and styles. (Right) RGB conditioning preserves
hair/background that latent compression removes.
</div>

---

## Citation
If you use this work, please cite:
{% raw %}
```bibtex
@inproceedings{shukla2025diffdemorph,
  title={diffDeMorph: Extending Reference-Free Demorphing to Unseen Faces},
  author={Shukla, Nitish and Ross, Arun},
  booktitle={IEEE International Conference on Image Processing (ICIP)},
  year={2025}
}
```
{% endraw %}
