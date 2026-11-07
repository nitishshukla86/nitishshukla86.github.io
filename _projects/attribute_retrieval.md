---
layout: page
title: Harnessing Multimodal LLMs for Attribute-Specific Image Retrieval
description: Nitish Shukla, Siddhant Prakash, Arun Ross, Harsh Rangwani; Under review
importance: 7
category: work
related_publications: false
---

## Research Goal
Global image embeddings mix every visual attribute together, so retrieving images that share one specific
attribute, such as a style, is hard without training a dedicated model.

## How it works
- **Training-free embeddings.** Attribute-specific style embeddings are read out of intermediate layers of
  a multimodal LLM, with no additional training.
- **Dynamically generated prefixes** steer the model toward the attribute of interest before the
  embedding is read.

Work done at Adobe Research. **Status:** under review.
