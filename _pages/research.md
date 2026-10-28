---
layout: page
permalink: /research/
title: research
description: Research on efficient multimodal inference, interpretable representations, generative inverse problems, and biometric security.
nav: true
nav_order: 2

# Set to false and rebuild to hide every manuscript that is not yet published.
# Nothing in this block quotes unpublished results; it lists titles and status only.
show_inprogress: true
---

My research investigates **how visual AI systems can use available representations and data more
effectively to support efficient, interpretable, and reliable inference**. I approach this question through
four connected directions: multimodal efficiency, representation analysis, generative inverse problems,
and biometric security.

Facial demorphing is a recurring application and a demanding test of these ideas. Recovering two identities
from one composite image requires both effective generative modeling and careful evaluation of what the
model has actually recovered. My multimodal research extends this emphasis on informative representations
to visual reasoning, retrieval, and inference under computational constraints.

## Efficient multimodal inference

**Research question:** Which visual tokens should a model retain, and at which layers, to preserve the
evidence needed for reasoning within a fixed computational budget?

Multi-image and multi-view inputs can introduce thousands of visual tokens, increasing the cost of
processing the input before answer generation. A fixed pruning strategy may remove useful evidence or
retain redundant information. I study selection methods that account for the contribution of each image,
the depth of the decoder, scene geometry, and the question being asked.

The goal is to allocate computation to informative evidence while preserving coverage across images and
views. This work studies frozen models at inference time and evaluates efficiency using measured prefill
floating-point operations (FLOPs), alongside task performance.

{% if page.show_inprogress %}
**Ongoing work:** SIEVE studies depth-aware token compression for multi-image models
([code](https://github.com/nitishshukla86/SIEVE)); CORA investigates geometry- and question-aware reduction
for multi-view 3D question answering. A further direction explores online reinforcement learning of
pruning policies using internal model signals. These manuscripts are under review or in preparation.
{% endif %}

## Multimodal representation analysis

**Research question:** How can intermediate model representations provide useful evidence beyond a
model's final output?

A final answer or global image embedding can obscure information about visual attributes and the process
that produced a decision. I study how this information varies across decoder layers and how lightweight
probes and prompt-based mechanisms can extract it for downstream tasks. Applications include morphing
attack detection and image retrieval based on specific visual attributes.

This direction emphasizes interpretable readouts from frozen backbones. In complementary work on
multimodal learning, **S2H-DPO** (Findings of ACL 2026) constructs preference pairs based on task hardness,
reducing reliance on human preference annotation for multi-image reasoning.

{% if page.show_inprogress %}
**Ongoing work:** MorphLens investigates intermediate representations for single-image morphing attack
detection. Work with Adobe Research studies training-free, attribute-specific image retrieval using
intermediate multimodal representations and dynamically generated prefixes. These manuscripts are under
review or in preparation.
{% endif %}

## Generative models for inverse problems

**Research question:** How can a generative model recover distinct contributing identities from a single
morphed face without relying on reconstruction quality alone?

Facial demorphing is an ill-posed inverse problem: multiple pairs of faces may explain the same composite
image. A model can also reproduce the input morph in both outputs and receive favorable reconstruction
scores without separating the identities. My work addresses this ambiguity through identity-preserving
decomposition, conditional generation, and evaluation criteria that assess identity recovery explicitly.

This research progresses from diffusion-based demorphing and identity-preserving decomposition to
dual-conditioned GANs, diffusion models for unseen faces, and latent conditional generation. Across these
methods, I examine generalization to unfamiliar identities, face styles, and morphing techniques.

**Selected contributions:** SDeMorph (IJCB 2023); identity-preserving image decomposition (IJCB 2024);
dc-GAN (FG 2025); diffDeMorph (ICIP 2025); and latent conditional GAN demorphing
(IJCB 2025, **IAPR Best Biometrics Student Paper Award**). Complementary work at WACVW 2025 introduces
a metric for evaluating reference-free demorphing.

{% if page.show_inprogress %}
**Ongoing work:** SplitFace studies rank-regularized branched diffusion with region-level conditioning.
A separate direction investigates reconstruction-guided latent optimization on a frozen generative prior
without morph–contributor training pairs. Both manuscripts are in preparation.
{% endif %}

## Trustworthy visual AI and biometric security

**Research question:** How should models be developed and evaluated when unfamiliar inputs, adversarial
manipulation, or gaps in supervision can undermine reliability?

I investigate morphing attack detection, adversarial examples generated in latent space, and evaluation
protocols that expose failure modes hidden by aggregate performance measures. For biometric applications,
this includes testing generalization across morph generators and datasets, and distinguishing genuine
identity recovery from input replication.

My broader applied work also examines gaps in training coverage, including synthetic data for
semiconductor defect inspection and schema-aware data synthesis for enterprise Text-to-SQL.

**Selected contributions:** Generating Adversarial Attacks in the Latent Space (CVPRW 2023) and
Metric for Evaluating Performance of Reference-Free Demorphing Methods (WACVW 2025).

{% if page.show_inprogress %}
**Ongoing work:** label-free morphing attack detection under leave-one-dataset-out evaluation, and
schema-coverage-driven data synthesis for Text-to-SQL with Adobe Research. These manuscripts are under
review or in preparation.
{% endif %}

## A shared research agenda

These directions connect through three priorities: identifying informative representations, using
computation and supervision efficiently, and evaluating whether a model performs the intended task.
Multimodal analysis provides tools for understanding visual evidence; generative inverse problems and
biometric security provide settings in which the quality of that evidence has practical consequences.
Together, they support my goal of developing visual AI systems whose efficiency and reliability can be
assessed through explicit, task-relevant criteria.

See my [publications]({{ '/publications/' | relative_url }}) for individual papers and manuscript status,
and my [projects]({{ '/projects/' | relative_url }}) for detailed methods and results.
