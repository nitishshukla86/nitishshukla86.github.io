---
layout: page
title: S2H-DPO - Hardness-Aware Preference Optimization for Vision–Language Models
description: Nitish Shukla, Surgan Jandial, Arun Ross; Findings of ACL 2026
img: assets/img/s2hdpo_main.png
importance: 2
category: work
related_publications: true
---

## Research Goal
Vision-Language Models are strong on single images but weak at reasoning *across* images.
Existing multi-image alignment data leans on pre-specified indices ("Look at Image 3…"),
which sidesteps the two skills that matter: **global visual search** and **autonomous
cross-image comparison**. This work builds preference data that teaches those skills —
without human annotation and without model-specific tricks.

## How it works
A **Simple-to-Hard (S2H)** curriculum of preference pairs spanning three reasoning levels:
- **Level 1 — single-image localized.** A VQA sample padded with distractor images; the
  model must ignore irrelevant context. Rejected answers come from the model's own
  hallucinations.
- **Level 2 — multi-image localized.** Explicit cross-image grounding via *kinship
  recognition* (asymmetric relational inference) and *visual arithmetic* (symmetric
  aggregation across images), with deterministically generated chosen/rejected pairs.
- **Level 3 — global visual search.** Open-ended queries ("Caption the image containing a
  peacock") force the model to scan *all* images before localizing. Negatives are
  plausible-but-wrong captions, then quality-filtered with CLIP/MPNet so the contrast
  stays meaningful.

Because pairs are **prompt-driven**, the method is model-agnostic — no per-model hallucination
or attention heuristics, and no new dataset needed per model (20K samples per level).

<div class="row justify-content-sm-center">
  <div class="col-sm-10 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/s2hdpo_finegrained.png" title="S2H DPO data format across three levels" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
The three S2H levels escalate from single-image localization to multi-image comparison to
global visual search, each yielding model-agnostic chosen/rejected preference pairs.
</div>

## Key results
- **LLaVA-1.5-7B:** +6.30 (BLINK), +6.03 (MANTIS), +3.49 (NLVR2) over baseline; beats the
  closest DPO baseline (MIA-DPO) on every benchmark.
- **Qwen2.5-VL-7B:** +2.49 average across multi-image benchmarks; **Qwen3-VL-2B:** +1.77 —
  gains hold from 2B to 7B models.
- Single-image ability is preserved (MMStar/POPE), so multi-image gains don't cost core skills.
- A surprising finding: for multi-image reasoning, **flat training beats curriculum
  ordering** (e.g., L2-flat 48.13% vs. L1→L2 44.83%) — gradual curricula induce myopic,
  locally-anchored reasoning.

---

## Resources
<div class="mt-3">
  <a href="https://scholar.google.com/citations?view_op=view_citation&hl=en&user=pAedm2oAAAAJ&citation_for_view=pAedm2oAAAAJ:roLk4NBRz8UC" class="btn btn-primary btn-lg mr-2" role="button" target="_blank">
    📑 Paper
  </a>
</div>

---

## Citation
If you use this work, please cite:
{% raw %}
```bibtex
@inproceedings{shukla2026s2hdpo,
  title={S2H-DPO: Hardness-Aware Preference Optimization for Vision--Language Models},
  author={Shukla, Nitish and Jandial, Surgan and Ross, Arun},
  booktitle={Findings of the Association for Computational Linguistics (ACL)},
  year={2026}
}
```
{% endraw %}
