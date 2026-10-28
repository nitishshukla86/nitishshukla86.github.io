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

I am a Ph.D. student in Computer Science at Michigan State University, advised by
[Prof. Arun Ross](https://engineering.msu.edu/faculty/Arun-Ross) in the
[iPRoBe Lab](https://iprobe.cse.msu.edu/index.php). My research focuses on **efficient, interpretable,
and reliable visual AI**, spanning multimodal learning, generative modeling, and biometric security.

A central question connects my work: **How can we use the information within pretrained models to make
visual inference more efficient and dependable?** I investigate how models represent visual evidence,
how that evidence can guide decisions under computational constraints, and how generative models can
recover identity information from ambiguous images.

My work on facial demorphing provides a concrete foundation for this research. A morphed face combines
two identities into a single image; recovering the contributing identities requires more than producing
visually plausible reconstructions. It requires models that preserve identity, generalize to unfamiliar
faces and morphing methods, and are evaluated against meaningful biometric criteria. These challenges
also motivate my broader work on multimodal representations and reliable inference.

#### Research directions

- **Efficient multimodal inference:** selecting visual evidence across images and model layers to support
  reasoning within an explicit computational budget.
- **Multimodal representation analysis:** studying intermediate model representations for interpretable
  detection and attribute-specific image retrieval.
- **Generative inverse problems:** developing diffusion models, GANs, and latent optimization methods to
  recover constituent identities from a single morphed face.
- **Trustworthy visual AI:** investigating adversarial robustness, morphing attack detection, and
  evaluation protocols that distinguish identity recovery from reconstruction shortcuts.

Read more about the questions and methods on my [research]({{ '/research/' | relative_url }}) page,
explore individual [projects]({{ '/projects/' | relative_url }}), or see my
[publications]({{ '/publications/' | relative_url }}).

#### Research highlights

- **Findings of ACL 2026:** S2H-DPO, a hardness-aware preference optimization framework for vision–language models.
- **IAPR Best Biometrics Student Paper Award, IJCB 2025:** facial demorphing from a single morph using a latent conditional GAN.
- **Adobe Research internships, 2025 and 2026:** research on attribute-specific image retrieval and robust enterprise Text-to-SQL.

#### Background

My training in mathematics and computer science informs my approach to representation learning and
model evaluation. Before joining MSU, I earned an M.Sc. in Computer Science from
[Chennai Mathematical Institute](https://www.cmi.ac.in) and an M.Sc. in Mathematics from
[IIT Guwahati](https://www.iitg.ac.in). At CMI, I worked with
[Prof. K. V. Subramanyam](https://www.cmi.ac.in/~kv/) and
[Prof. Madhavan Mukund](https://www.cmi.ac.in/~madhavan/) on robustness properties induced by prototypes
in deep neural networks.

Outside research, I enjoy cooking, films, video games, and hiking, especially in snowy mountain landscapes.
I share some of my cooking on [Instagram](https://www.instagram.com/_the_doctor_chef_/).
For research discussions and collaboration, please [contact me](mailto:shuklan3@msu.edu).
