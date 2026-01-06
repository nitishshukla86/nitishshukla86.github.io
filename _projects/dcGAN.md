---
layout: page
title: dc-GAN - Dual Conditioned GAN for Face Demorphing From a Single Morph
description: Nitish Shukla, Arun Ross; In Proceedings of 19th International Conference on Automatic Face and Gesture Recognition (FG 2025)
img: assets/img/fg2025.png
importance: 2
category: work
related_publications: true
---

## Abstract
A facial morph is an image strategically created by combining two face images pertaining to two distinct identities. The goal is to create a face image that can be matched to two different identities by a face matcher. Face demorphing inverts this process and attempts to recover the original images constituting a facial morph. Existing demorphing techniques have two major limitations: (a) they assume that some identities are common in the train and test sets; and (b) they are prone to the morph replication problem, where the outputs are merely replicates of the input morph. In this paper, we overcome these issues by proposing dc-GAN (dual-conditioned GAN), a novel demorphing method conditioned on the morph image as well as the embedding extracted from the image. Our method overcomes the morph replication problem and produces high-fidelity reconstructions of the constituent images. Moreover, the proposed method is highly generalizable and applicable to both reference-based and reference-free demorphing methods. Experiments were conducted using the AMSL, FRLL-Morphs, and MorDiff datasets to demonstrate the efficacy of the method.

<div class="row justify-content-sm-center">
  <div class="col-sm-8 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/fg2025.png" title="Overview of our proposed framework" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
Dual-Conditioned GAN for Reference-Free Demorphing: An image encoder, E, encodes the morph image, which is then used to condition the generator. The generator, based on a UNet architecture, G, takes in the MORPH image and the encoded representation, E(MORPH), producing two outputs, OUT1 and OUT2. The discriminator is trained to distinguish between the real set (MORPH, BF1, BF2) and the synthetic set (MORPH, OUT1, OUT2), differentiating real from synthetic pairs.
</div>

---

## Resources
<div class="mt-3">
  <a href="https://arxiv.org/pdf/2411.14494?" class="btn btn-primary btn-lg mr-2" role="button" target="_blank">
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
```html
@INPROCEEDINGS{11099072,
  author={Shukla, Nitish and Ross, Arun},
  booktitle={2025 IEEE 19th International Conference on Automatic Face and Gesture Recognition (FG)}, 
  title={dc-GAN: Dual-Conditioned GAN for Face Demorphing From a Single Morph}, 
  year={2025},
  volume={},
  number={},
  pages={1-9},
  keywords={Face recognition;Gesture recognition;Image reconstruction},
  doi={10.1109/FG61629.2025.11099072}}

```
{% endraw %}
---
