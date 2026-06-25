---
layout: page
title: Enhancing Single-Image Facial Demorphing using Multimodal LLMs
description: Nitish Shukla, Arun Ross; Under review, arXiv 2026
img: assets/img/llmdemorph_arch.png
importance: 1
category: work
related_publications: true
---

## Research Goal
A morph attack hides two identities inside one face image. Morph Attack Detection (MAD)
can flag a morph but cannot say *who* is in it. This work recovers both constituent
faces from a single morph — **reference-free**, with no second image — by feeding the
high-level reasoning of a Multimodal LLM into a diffusion reconstruction.

## How it works
- **Coupled diffusion.** The two target faces are stacked into one 6-channel object
  $i=(i_1,i_2)$ and denoised *jointly* from a shared noise trajectory. Because both
  faces are recovered as a single entity, the network cannot collapse to two
  independent (and near-identical) reconstructions — directly attacking the
  *morph-replication* problem.
- **MLLM hidden states as conditioning.** Instead of using the MLLM's decoded text, we
  extract hidden states from an *intermediate transformer layer*, linearly project them,
  and inject them through the UNet's cross-attention at every scale. This skips the lossy
  "generate text → re-encode" cycle and exposes the diffusion model to rich semantic cues
  (identity, gender, age, structure).
- **RGB-domain reconstruction.** Denoising happens directly in pixel space (not a
  compressed latent), so cues like hair, background, and skin texture survive — details
  that latent compression discards but demorphing needs.

<div class="row justify-content-sm-center">
  <div class="col-sm-10 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/llmdemorph_arch.png" title="MLLM-guided demorphing architecture" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
The morph is described by an MLLM; hidden states from intermediate layers condition a
coupled diffusion model that jointly reconstructs both constituent faces in RGB space.
</div>

## Key results
- **>96%** restoration accuracy at a strict **0.1% FMR** on landmark-based morphs.
- **6–9 dB** PSNR improvement over prior methods on challenging StyleGAN morphs.
- Ablations show *middle* MLLM layers are the most identity-discriminative; RGB-domain
  demorphing beats latent-space by **30–40%** at strict operating points; and full MLLM
  embeddings outperform raw ViT features thanks to multimodal pretraining.

---

## Resources
<div class="mt-3">
  <a href="https://arxiv.org/abs/2605.25442" class="btn btn-primary btn-lg mr-2" role="button" target="_blank">
    📑 Paper
  </a>
</div>

---

## Citation
If you use this work, please cite:
{% raw %}
```bibtex
@article{shukla2026llmdemorph,
  title={Enhancing Single-Image Facial Demorphing using Multimodal Large Language Models},
  author={Shukla, Nitish and Ross, Arun},
  journal={arXiv preprint arXiv:2605.25442},
  year={2026}
}
```
{% endraw %}
