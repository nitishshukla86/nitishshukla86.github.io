---
layout: page
title: The Model Is Its Own Reward - Online Reinforcement Learning of Visual Token Pruning for Multi-Image VLMs
description: Nitish Shukla et al.; Under review
importance: 9
category: work
related_publications: false
---

## Research Goal
Visual token pruning rules for multi-image models are usually fixed by hand. This work learns the pruning
rule instead, at test time, without labels or external verifiers.

## How it works
- **Online reinforcement learning.** A pruning policy is trained online while the model runs.
- **Internal rewards.** The reward comes from the frozen model's own internal signals, so no labels or
  verifiers are needed.

**Status:** under review.
