---
layout: page
permalink: /research/
title: research
description: Four directions, one question — what does a frozen model already know that it never reports?
nav: true
nav_order: 2

# Set to false and rebuild to hide every manuscript that is not yet published.
# Nothing in this block quotes unpublished results; it lists titles and status only.
show_inprogress: true
---

My work starts from one observation: **large pretrained models compute far more than they report.** A
vision–language model forms a decision across dozens of decoder layers and emits a single token; it attends
to thousands of visual tokens of which a handful carry the answer; it can tell you how certain it is without
anyone labelling the answer. Each of the directions below extracts some part of that unreported signal and
puts it to work — to cut compute, to make a decision legible, or to replace human supervision.

---

## 1. Efficient multimodal inference

A multi-image or multi-view prompt hands a vision–language model thousands of visual tokens, and the cost
of the decoder's prefill grows with all of them. The usual fix is a fixed pruning rule, but no fixed rule is
best across backbones, benchmarks and budgets — and pruning too early throws away evidence while pruning too
late pays to process redundancy. I study **what to keep and when to drop it**, under an explicit budget:
per-image quotas so no image disappears, depth-aware schedules derived in closed form, geometric coverage
to remove repeated observations of the same surface, and question-conditioned selection once the question
has had a chance to interact with the scene. All of it runs on frozen models at inference time, and all of
it is evaluated against measured prefill FLOPs rather than token counts alone.

{% if page.show_inprogress %}
*Current manuscripts:* depth-aware token compression for multi-image models (SIEVE —
[code](https://github.com/nitishshukla86/SIEVE)); geometry- and question-aware reduction for multi-view 3D
question answering (CORA); and test-time online reinforcement learning of the pruning rule itself, where the
reward comes from the model's own intermediate signals rather than from labels. *Under review / in
preparation.*
{% endif %}

---

## 2. Representation analysis in multimodal LLMs

When a multimodal model answers a question, the answer token is the end of a long internal process — and not
necessarily the most informative part of it. Tracing a model's judgement across decoder depth shows that the
evidence often **peaks in intermediate layers and is attenuated by the output layer.** That makes the
model's final answer the wrong thing to read. I build lightweight probes and prompt/prefix mechanisms that
read the intermediate state instead: calibrated layer-attention probes for detection, and dynamically
generated prefixes that pull apart what a single global embedding conflates, giving one representation per
visual attribute. Nothing here fine-tunes the backbone; the contribution is in the readout.

**Published:** *S2H-DPO: Hardness-Aware Preference Optimization for Vision–Language Models*
(Findings of ACL 2026) — preference pairs derived from task hardness rather than human annotation.

{% if page.show_inprogress %}
*Current manuscripts:* intermediate-representation probing for single-image morphing attack detection
(MorphLens); attribute-specific, training-free image retrieval from intermediate MLLM layers
(with Adobe Research). *Under review / in preparation.*
{% endif %}

---

## 3. Generative models for inverse problems

A face morph blends two people into one image that matches both. Recovering those two faces from the morph
alone is badly ill-posed, and it has a seductive wrong answer: a model that simply returns its input twice
scores well on reconstruction while recovering nobody. My work on this problem has been a sequence of
attempts to make **separation**, not reconstruction, the thing being optimised and the thing being measured
— identity-preserving decomposition, dual conditioning, generalisation to unseen faces and unseen morph
generators, and an evaluation metric designed so that replication cannot win. The same toolkit —
conditional diffusion, GANs, and optimisation on a frozen generative manifold — recurs throughout, and the
most recent work needs no paired training data at all.

**Published:** latent conditional GAN demorphing (IJCB 2025, **IAPR Best Biometrics Student Paper Award**);
*diffDemorph* for unseen faces (ICIP 2025); *dc-GAN* (FG 2025); identity-preserving decomposition
(IJCB 2024); *SDeMorph* (IJCB 2023); and a metric for evaluating reference-free demorphing (WACVW 2025).

{% if page.show_inprogress %}
*Current manuscripts:* rank-regularised branched diffusion with region-level conditioning (SplitFace); and
fully unsupervised demorphing by latent optimisation on a frozen generative prior, with no
morph–contributor training pairs. *In preparation.*
{% endif %}

---

## 4. Trustworthy visual AI and biometric security

Detection, robustness and honest measurement, around the same application domain. This includes morphing
attack detection that must hold up against morph generators it has never seen, adversarial examples
synthesised in a generative latent space rather than in pixel space, and evaluation methodology — a
recurring concern of mine, since several failure modes in this literature are artefacts of metrics that
reward the wrong behaviour. Closing *coverage* gaps belongs here too: identifying where supervision is
missing and synthesising exactly that, which is the idea behind both my semiconductor-defect work and my
work on robust enterprise Text-to-SQL.

**Published:** *Generating Adversarial Attacks in the Latent Space* (CVPRW 2023); *Metric for Evaluating
Performance of Reference-Free Demorphing Methods* (WACVW 2025).

{% if page.show_inprogress %}
*Current manuscripts:* label-free morphing attack detection under leave-one-dataset-out evaluation; and
schema-coverage-driven data synthesis for Text-to-SQL (with Adobe Research). *Under review / in
preparation.*
{% endif %}

---

## How the directions connect

The four are not separate interests. Directions 1 and 2 ask the same question of a frozen model — *what
inside it tells us what matters?* — once for compute and once for interpretability. Direction 3 supplies the
inverse problems where that question has consequences, and direction 4 supplies the adversarial pressure and
the measurement discipline. A single methodological commitment runs through all of them: **get the signal
from the model or the data you already have, rather than from new human labels.**

Full bibliography, with status for each entry, is on the
[publications]({{ '/publications/' | relative_url }}) page.
