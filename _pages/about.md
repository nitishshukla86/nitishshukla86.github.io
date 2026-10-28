---
layout: about
title: about
permalink: /
subtitle: PhD Student, Computer Science · <a href="https://iprobe.cse.msu.edu/index.php">iPRoBe Lab</a>, Michigan State University

profile:
  align: right
  image: prof_pic.jpg
  image_circular: false # crops the image to make it circular
  more_info: >
    <p>2335, Engineering Building</p>
    <p>Michigan State University</p>
    <p>East Lansing, MI, 48864</p>
    <p><a href="mailto:shuklan3@msu.edu">shuklan3@msu.edu</a></p>

selected_papers: true # includes a list of papers marked as "selected={true}"
social: true # includes social icons at the bottom of the page

announcements:
  enabled: true # includes a list of news items
  scrollable: true # adds a vertical scroll bar if there are more than 3 news items
  limit: 5 # leave blank to include all the news in the `_news` folder

latest_posts:
  enabled: false
  scrollable: true # adds a vertical scroll bar if there are more than 3 new posts items
  limit: 3 # leave blank to include all the blog posts
---

I am a Ph.D. student at Michigan State University, in the [iPRoBe lab](https://iprobe.cse.msu.edu/index.php) with [Prof. Arun Ross](https://engineering.msu.edu/faculty/Arun-Ross).

Large pretrained models compute far more than they report. A vision–language model forms a decision across
dozens of layers and then emits a single token; it attends to thousands of visual tokens, of which a handful
carry the answer. **My research treats that gap as a resource** — I extract the signal already inside a
frozen model and use it to make inference cheaper, decisions more faithful, and human supervision
unnecessary. I apply these ideas to ill-posed visual inverse problems, above all recovering the two
identities fused into a single morphed face.

#### What I work on

- **Efficient multimodal inference** — which visual tokens a vision–language model actually needs, and at
  which depth, under an explicit compute budget.
- **Representation analysis in multimodal LLMs** — where inside a frozen model a decision is really formed,
  and how to read it out with lightweight probes instead of trusting the final answer.
- **Generative models for inverse problems** — diffusion and latent-space optimisation for recovery tasks
  where the honest difficulty is separating what a loss function is happy to conflate.
- **Trustworthy visual AI and biometric security** — morphing attack detection, adversarial robustness, and
  evaluation protocols that collapse-style shortcuts cannot game.

A longer tour of each direction is on the [research]({{ '/research/' | relative_url }}) page, the papers are
under [publications]({{ '/publications/' | relative_url }}), and individual
[projects]({{ '/projects/' | relative_url }}) have their own pages.

#### Recent

- Paper on hardness-aware preference optimisation for vision–language models accepted to **Findings of
  ACL 2026**.
- **IAPR Best Biometrics Student Paper Award** at IJCB 2025 for work on single-morph facial demorphing.
- Two research internships at **Adobe Research** (2025, 2026), on interpretable attribute-specific image
  retrieval and on robust enterprise Text-to-SQL.

Before MSU I studied M.Sc. Computer Science at [Chennai Mathematical Institute](https://www.cmi.ac.in) and
M.Sc. Mathematics at [IIT Guwahati](https://www.iitg.ac.in). At CMI I worked with
Prof. [K. V. Subramanyam](https://www.cmi.ac.in/~kv/) and
Prof. [Madhavan Mukund](https://www.cmi.ac.in/~madhavan/) on the robustness properties that prototypes
induce in deep networks.

Outside academia, I find joy in cooking ([My Instagram](https://www.instagram.com/_the_doctor_chef_?igsh=aG5qeTlic3JrYTcx&utm_source=qr)),
watching movies, and playing video games during my free time. Beyond that, I'm an enthusiastic hiker and
hold a deep admiration for snowy mountains. If there's anything specific you'd like to discuss or share,
feel free to [contact me](mailto:shuklan3@msu.edu)!
