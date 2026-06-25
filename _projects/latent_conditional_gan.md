---
layout: page
title: Facial Demorphing from a Single Morph Using a Latent Conditional GAN
description: Nitish Shukla, Arun Ross; In Proceedings of IEEE IJCB 2025
img: assets/img/ijcb2025.PNG
importance: 3
category: work
related_publications: true
---

> 🏆 **IAPR Best Biometrics Student Paper Award (BBSPA)**, IEEE IJCB 2025.

## Research Goal
Demorphing methods often suffer the *morph-replication problem* — both outputs end up
looking like the input morph — or assume train and test morphs share the same morphing
technique. This work demorphs in a **compressed latent space**, recovering constituent
faces from morphs made with unseen techniques and face styles, at high resolution.

## How it works
- **Perceptual compression.** A *frozen* Stable-Diffusion KL-autoencoder maps a
  512×512 morph to a 64×64×4 latent, stripping away distractors (background, lighting,
  morph artifacts) and making training/inference far cheaper.
- **Conditional GAN in latent space.** An image-to-image generator conditioned on the
  encoded morph demorphs in the latent domain; a discriminator separates real vs.
  synthetic *triplets* (encoded morph + two faces). Computing losses in latent space
  avoids penalizing irrelevant RGB differences.
- **Kurtosis loss against replication.** Beyond adversarial + $\mathcal{L}_1$ losses, a
  kurtosis term aligns the higher-order statistics of outputs and ground truth, preventing
  the "average face" trivial solution that plagues passport-style morphs.
- **Order-robust training.** Outputs are explicitly ordered but ground-truth pairs are
  randomly swapped, exposing the model to both orderings with a simple per-pixel loss.

<div class="row justify-content-sm-center">
  <div class="col-sm-8 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/ijcb2025.PNG" title="Latent conditional GAN architecture" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
A frozen encoder compresses the morph; a conditional GAN demorphs in latent space and a
decoder reconstructs the two constituent faces at inference.
</div>

## Key results
- **97.77%** TMR@10%FMR on AMSL (ArcFace), versus 70.55% for the prior GAN baseline.
- Outperforms SDeMorph and Identity-Preserving Decomposition across all datasets on TMR,
  Restoration Accuracy, IQA, and the biometrically cross-weighted BW-IQA metric.
- **Live human study** (17 images, 8 subjects, 28 morphs): 95.65% RA with AdaFace,
  91.30% with ArcFace — confirming the method works beyond benchmark morphs.

---

## Resources
<div class="mt-3">
  <a href="https://arxiv.org/abs/2507.18566" class="btn btn-primary btn-lg mr-2" role="button" target="_blank">
    📑 Paper
  </a>
  <a href="https://github.com/nitishshukla86/Facial-Demorphing-from-a-Single-Morph-Using-a-Latent-Conditional-GAN" class="btn btn-dark btn-lg" role="button" target="_blank">
    💻 Code
  </a>
</div>

---

## Results
<div class="row">
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/ijcb2025-r1.png" title="Example 1" class="img-fluid rounded z-depth-1" %}
  </div>
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/ijcb2025-r2.PNG" title="Example 2" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
(Left) Demorphing outcomes across six morphing techniques. (Right) Comparison with the
state of the art under a unified protocol.
</div>

<div class="row">
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/ijcb2025-results.png" title="Quantitative comparison" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
Evaluated with IQA (PSNR/SSIM), Restoration Accuracy, and biometrically-weighted IQA (BW);
our method outperforms IPD, SDeMorph, and Face Demorphing.
</div>

---

## Citation
If you use this work, please cite:
{% raw %}
```bibtex
@inproceedings{shukla2025lcgan,
  title={Facial Demorphing from a Single Morph Using a Latent Conditional GAN},
  author={Shukla, Nitish and Ross, Arun},
  booktitle={IEEE International Joint Conference on Biometrics (IJCB)},
  year={2025}
}
```
{% endraw %}
