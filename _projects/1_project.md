---
layout: page
title: Facial Demorphing from a Single Morph Using a Latent Conditional GAN
description: Paper
img: assets/img/ijcb2025.jpg
importance: 1
category: work
related_publications: true
---

## Abstract
Facial demorphing aims to recover the underlying identities from a single morphed face image.  
In this work, we propose a **Latent Conditional GAN** that learns to disentangle and reconstruct the original identities from the morph without requiring paired ground-truth images.  
Our method leverages latent space conditioning, adversarial training, and identity-preserving constraints to achieve robust demorphing across multiple datasets.

<div class="row justify-content-sm-center">
  <div class="col-sm-8 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/teaser.jpg" title="Overview of our proposed framework" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
    Overview of the proposed latent conditional GAN for facial demorphing.
</div>

---

## Resources
<div class="mt-3">
  <a href="assets/papers/demorphing_gan.pdf" class="btn btn-primary btn-lg mr-2" role="button" target="_blank">
    📄 Paper
  </a>
  <a href="https://github.com/username/demorphing-gan" class="btn btn-dark btn-lg" role="button" target="_blank">
    💻 Code
  </a>
</div>

---

## Results
<div class="row">
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/result1.jpg" title="Example 1" class="img-fluid rounded z-depth-1" %}
  </div>
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/result2.jpg" title="Example 2" class="img-fluid rounded z-depth-1" %}
  </div>
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/result3.jpg" title="Example 3" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
    Example results: input morph (left), reconstructed identities (middle, right).
</div>

---

## Citation
If you use this work, please cite:
```bibtex
@inproceedings{shukla2025demorphing,
  title={Facial Demorphing from a Single Morph Using a Latent Conditional GAN},
  author={Shukla, Nitish and Others},
  booktitle={International Joint Conference on Biometrics (IJCB)},
  year={2025}
}
