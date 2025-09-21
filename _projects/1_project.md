---
layout: page
title: Facial Demorphing from a Single Morph Using a Latent Conditional GAN
description: Paper, IJCB 2025
img: assets/img/ijcb2025.jpg
importance: 1
category: work
related_publications: true
---

## Abstract
A morph is created by combining two (or more) face images from two (or more) identities to create a composite image that is highly similar to all constituent identities, allowing the forged morph to be biometrically associated with more than one individual. Morph Attack Detection (MAD) can be used to detect a morph, but does not reveal the constituent images. Demorphing - the process of deducing the constituent images - is thus vital to provide additional evidence about a morph. Existing demorphing methods suffer from the morph replication problem, where the outputs tend to look very similar to the morph itself, or assume that train and test morphs are generated using the same morph technique. The proposed method overcomes these issues. The method decomposes a morph in latent space allowing it to demorph images created from unseen morph techniques and face styles. We train our method on morphs created from synthetic faces and test on morphs created from real faces using different morph techniques. Our method outperforms existing  methods by a considerable margin and produces high fidelity  demorphed face images.

<div class="row justify-content-sm-center">
  <div class="col-sm-8 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/ijcb2025.PNG" title="Overview of our proposed framework" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
    Proposed Demorphing Architecture: An encoder, compresses the morph along with the constituent face images during training. The generator, G, reconstructs two face images conditioned on the morph in the encoder's latent domain. The discriminator distinguishes between real and synthesized face feature triplets. During inference, a decompressor, recovers the constituent images. Note that the decoder, is used only during inference to decompress the demorphed outputs
</div>

---

## Resources
<div class="mt-3">
  <a href="https://arxiv.org/pdf/2507.18566" class="btn btn-primary btn-lg mr-2" role="button" target="_blank">
    📑 Paper
  </a>
  <a href="https://github.com/nitishshukla86/Facial-Demorphing-from-a-Single-Morph-Using-a-Latent-Conditional-GAN" class="btn btn-dark btn-lg" role="button" target="_blank">
    💻 Code
  </a>
<a href="assets/pdf/ijcb2025.pdf" class="btn btn-dark btn-lg" role="button" target="_blank"
   onclick="if(!this.href.endsWith('.pdf')) { alert('PDF file missing!'); return false; }">
  👨‍🏫 Slides
</a>
</div>

---

## Results
<div class="row">
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/ijcb2025-r1.png" title="Example 1" class="img-fluid rounded z-depth-1" %}
  </div>
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/ijcb2025-r2.png" title="Example 2" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
Results: (Left) Demorphing outcomes across six different morphing techniques. (Right) Comparison to current state-of-the-art methods.
</div>

---

## Citation
If you use this work, please cite:
{% raw %}
@inproceedings{shukla2025demorphing,
  title={Facial Demorphing from a Single Morph Using a Latent Conditional GAN},
  author={Shukla, Nitish and Others},
  booktitle={International Joint Conference on Biometrics (IJCB)},
  year={2025}
}
{% endraw %}
---
