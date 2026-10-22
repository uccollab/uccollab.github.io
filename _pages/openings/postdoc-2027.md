---
layout: page
title: "Postdoctoral Researcher – Expert Judgment in LLMs, with a Focus on Cybersecurity"
permalink: /expnlp/postdoc-2027/
description:
nav: false
---

<p><strong>Position:</strong> Full-time Postdoctoral Researcher (fixed term, 01/01/2027 – 31/12/2027)</p>
<p><strong>Location:</strong> NLP for Expert Domains (<a href="{{ '/expnlp/' | relative_url }}">ExpNLP</a>), Department of Computer Science, Technical University of Darmstadt</p>
<p><strong>Application deadline:</strong> 15/11/2026 (after that, the position remains open until filled)</p>

We are looking for a postdoctoral researcher to study how LLM-based systems can produce valuable outputs at the intersection of several expert domains. A central theme is the effective use of **limited human data**: maximizing the utility of small amounts of expert input, rather than relying on large-scale annotation.

---

## Background

Expert domains are hard to model because many decisions have no single right answer: two engineers can structure the same code differently, two analysts can disagree on the same vulnerability's severity, and both can be right in context. Experts reach these judgments by combining evidence, constraints and experience [Klein, 1998; Gururaja et al., 2025]. Current NLP methods learn such judgments from human preference data, often treating it as a single ground truth [Siththaranjan et al., 2024] and struggling with domain experts [Dutta et al., 2025]; models can thus sound plausible without grasping the reasoning behind these choices [Mancoridis et al., 2025]. Teaching models how experts reason requires expert feedback, which is costly to collect [Kaufmann et al., 2025].

At the same time, AI systems can now produce outputs faster than experts can act on them [Lacombe and Bardin, 2025], while even experienced experts find it hard to agree on which of them matter [Wunder et al., 2024].

Our group's work points the same way: LLMs are often inconsistent and misaligned with experts on subjective choices [Mokhova et al., 2026], experts agree on whether an answer is correct far more than on how valuable it is [Wang and Balloccu, 2026], and models can shift their predictions on cues that carry no real evidence [Vu and Balloccu, 2026].

Across these domains, this position asks: how can AI systems recognize what experts consider important, and spend their effort accordingly? And how can they learn this from only a small amount of expert input?

## Responsibilities

As a postdoctoral researcher in this project, you will lead research in NLP on how LLM-based systems handle expert judgment, with cybersecurity as the main domain. Other expert domains (enterprise, health, coding) may also be explored, depending on progress and resources. Example directions include:

- **Severity and prioritization:** how security experts assess the severity of vulnerabilities, and how well AI security tools reflect these judgments.
- **Effort in investigations:** how security-oriented agents work under a limited budget, and where their choices differ from those of experienced analysts.
- **Expert-guided security testing:** how human input can provide online steering for AI-based security tools during their operation.

Across all directions, the focus is on using expert data effectively. Expert-annotated data from ongoing projects is available from the start.

You will have the option to develop your own research agenda across related directions, building on your own expertise and the group's ongoing projects.

**Team:** the position is in the ExpNLP group led by Dr. Simone Balloccu at TU Darmstadt, which focuses on AI for problem-solving in expert domains. More info on our research can be found on the <a href="{{ '/expnlp/' | relative_url }}">ExpNLP page</a>.

Additionally, you will collaborate with NLP, machine learning and security researchers at TU Darmstadt (e.g. UKP lab) and partner institutions, including an ongoing cybersecurity project with access to security experts.

## Qualifications

- A PhD in Computer Science, NLP, Machine Learning, Security or a related field (completed, or close to completion by the start date).
- A strong publication record in relevant venues in NLP (e.g. ACL, EMNLP, NeurIPS) or security (e.g. USENIX Security, NDSS, CCS).
- Strong programming skills in Python and hands-on experience with relevant tools/frameworks (e.g. HF Transformers, vLLM, and agentic frameworks such as OpenHands or Hermes Agent).
- Experience with LLM evaluation, human evaluation, or preference learning.
- Good communication skills, and the ability to drive research independently while collaborating closely with others.

The following are a plus, but not required:

- Background in cybersecurity, especially fuzzing and incident investigation (please specify during application).
- Experience with data-efficient learning.

## What we offer

- A full-time, 12-month postdoctoral position (January 2027 – December 2027). Salary will be according to qualification based on TV-TU Darmstadt.
- The opportunity to lead impactful research on AI for expert domains, with a clear path to top-tier publications.
- Expert-annotated data and expert access from ongoing projects to kickstart your research.
- A supportive and collaborative research environment, with connections across NLP and security.
- Opportunities for professional development and growth, including co-supervision of students.

## How to apply

If you feel like you're a good fit for the position, please submit the following documents:

- Detailed CV, including a list of publications
- PhD certificate, or a statement of the expected defense date
- Cover letter outlining your motivation, relevant experience, and which of the topics above interest you most
- Up to two representative publications
- Contact information for at least two academic or professional references

**Application deadline:** 15/11/2026. After that, the position will remain open until filled. We will consider applications as soon as they are submitted.

Please send your application to <a href="mailto:simone.balloccu@tu-darmstadt.de">Dr. Simone Balloccu (simone.balloccu@tu-darmstadt.de)</a> with object "Expert Judgment in LLMs, with a Focus on Cybersecurity".

---

## References

- [Dutta et al., 2025] [Subhabrata Dutta, Timo Kaufmann, Goran Glavaš, Ivan Habernal, Kristian Kersting, Frauke Kreuter, Mira Mezini, Iryna Gurevych, Eyke Hüllermeier and Hinrich Schütze. "Problem Solving Through Human–AI Preference-based Cooperation." _Computational Linguistics_, 51(4):1337–1372, 2025.](https://aclanthology.org/2025.cl-4.8/)
- [Gururaja et al., 2025] [Sireesh Gururaja, Nupoor Gandhi, Jeremiah Milbauer and Emma Strubell. "Beyond Text: Characterizing Domain Expert Needs in Document Research." Findings of ACL 2025, pages 4732–4745.](https://aclanthology.org/2025.findings-acl.244/)
- [Kaufmann et al., 2025] [Timo Kaufmann, Paul Weng, Viktor Bengs and Eyke Hüllermeier. "A Survey of Reinforcement Learning from Human Feedback." _Transactions on Machine Learning Research_, 2025.](https://arxiv.org/abs/2312.14925)
- [Klein, 1998] [Gary Klein. _Sources of Power: How People Make Decisions._ MIT Press, 1998.](https://mitpressbookstore.mit.edu/book/9780262534291)
- [Lacombe and Bardin, 2025] [Guilhem Lacombe and Sébastien Bardin. "Attacker Control and Bug Prioritization." USENIX Security 2025.](https://www.usenix.org/system/files/conference/usenixsecurity25/sec25cycle1-prepub-573-lacombe.pdf)
- [Mancoridis et al., 2025] [Marina Mancoridis, Bec Weeks, Keyon Vafa and Sendhil Mullainathan. "Potemkin Understanding in Large Language Models." ICML 2025.](https://arxiv.org/abs/2506.21521)
- [Mokhova et al., 2026] [A. Mokhova, Subhabrata Dutta, Iryna Gurevych and Simone Balloccu. "Subjective Code Preferences in Experts and Large Language Models." arXiv:2605.25296, 2026.](https://arxiv.org/abs/2605.25296)
- [Siththaranjan et al., 2024] [Anand Siththaranjan, Cassidy Laidlaw and Dylan Hadfield-Menell. "Distributional Preference Learning: Understanding and Accounting for Hidden Context in RLHF." ICLR 2024.](https://arxiv.org/abs/2312.08358)
- [Vu and Balloccu, 2026] [D. N. L. Vu and Simone Balloccu. "Prompts Without Evidence: How Neuroimaging Mentions Shift Clinical Vision-Language Model Predictions." arXiv:2603.28387, 2026.](https://arxiv.org/abs/2603.28387)
- [Wang and Balloccu, 2026] [R. Wang and Simone Balloccu. "ARQA: A Benchmark for Grounded Table–Text QA in Enterprise Annual Reports." EACL 2026 (Industry Track).](https://aclanthology.org/2026.eacl-industry.63/)
- [Wunder et al., 2024] [Julia Wunder, Andreas Kurtz, Christian Eichenmüller, Freya Gassmann and Zinaida Benenson. "Shedding Light on CVSS Scoring Inconsistencies: A User-Centric Study on Evaluating Widespread Security Vulnerabilities." IEEE S&P 2024.](https://arxiv.org/abs/2308.15259)