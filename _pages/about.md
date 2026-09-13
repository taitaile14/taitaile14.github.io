---
permalink: /
title: "Mingtai Zhang"
excerpt: ""
author_profile: true
redirect_from:
  - /about/
  - /about.html
---

<span class='anchor' id='about-me'></span>

I completed my **B.Eng. in Materials Science and Engineering** at **Guangxi University** in June 2026, working on lithium-metal battery interfaces with Prof. Meinan Liu. In parallel I do computational research on measurement and evaluation for machine-learning systems with Dr. Siyang Xu's group at **Northeastern University (Qinhuangdao)**.

Across projects in four fields I have held one role: **I build the part that decides whether a claim is true** — the measure, the control, or the harness. That has meant a two-channel audit of memory and attribution in conversational agents, the evaluation harness for an identifiability result in coherent imaging, the experimental verification of a minimax bound on estimating a selected system's accuracy from a fixed label budget, and, in the lab, an interface claim that had to survive three complementary cell configurations before I would report it.

Most of this work was done after the degree. Since June 2026 I have worked on research full time, and the two papers now under double-blind review were built in that period. I want to work on measurement design for systems that cannot be observed directly: what an evaluation has to cover, and what it costs, before a reported improvement can be believed. My interests are **evaluation and auditing of LLM systems**, **memory, attribution, and trustworthy human–AI interaction**, **inverse problems and sample complexity**, and **AI for experimental science**. I am applying for **PhD positions starting Fall 2027**.

<span class='anchor' id='news'></span>

# 🔥 News

- *2026.09*: &nbsp;📄 A **first-author** paper on attribution boundaries in conversational AI memory is under **double-blind review** at a top-tier HCI venue. Title withheld until notification.
- *2026.09*: &nbsp;📄 A **second-author** paper on the accuracy–evaluation trade-off in test-time selection is under **double-blind review** at a top-tier machine-learning venue.
- *2026.08*: &nbsp;🎉🎉 *The "10th Juror": Open-Set Standpoint Screening for Bureaucratic Bias Detection* was accepted to the [EMNLP 2026 Main Conference](https://2026.emnlp.org/).
- *2026.08*: &nbsp;📄 *Two-Scan Recovery of Sparse Defects in Ptychography* was submitted to *IEEE Signal Processing Letters* and is under review.
- *2026.02*: &nbsp;🚀 Founded the **Kangjie returning-student tutoring platform** in Yuncheng, Shanxi: 28 tutors, 37 high-school students, coordination run by AI agent tooling.
- *2026.06*: &nbsp;🎓 Completed my B.Eng. at Guangxi University, with a thesis on lithiophilic Mg interlayers for lithium-metal anodes.
- *2025.12*: &nbsp;📄 Our siloxane-additive electrolyte paper appeared in *Journal of Physics: Conference Series* (CEAMS 2025).
- *2025*: &nbsp;🏆 **First place**, Guangxi "Qianli Cup" Intercollegiate Football League (undergraduate division), as team captain.

<span class='anchor' id='publications'></span>

# 📝 Publications

<small>Co-author lists for papers under double-blind review are withheld until notification, following the anonymity policy of each venue.</small>

## Peer-reviewed

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">EMNLP 2026 Main</div><img src='/images/publications/emnlp-10th-juror.png' alt="MARS-Gov open-set standpoint screening framework" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

**The "10th Juror": Open-Set Standpoint Screening for Bureaucratic Bias Detection**

Yuchen Miao, Zijun Wang, Chang Han, Yurui Shi, **Mingtai Zhang**, and Siyang Xu

*EMNLP 2026, Main Conference* (CORE A\*; CCF-B)

An agent panel drops the closed-world assumption behind fixed bias taxonomies: a Scout proposes affected groups that no taxonomy defines, fixed and dynamic Jurors deliberate over retrieved legal and policy evidence, and a Judge verifies before a restoration agent rewrites. F1 = 0.880, 20.2 points above the strongest zero-shot LLM. My part: evaluation-set construction and experimental analysis.

[PDF](/files/emnlp-10th-juror.pdf) · [Conference](https://2026.emnlp.org/)
</div>
</div>

- **Modified Ether Electrolyte by Siloxane Additive with Abundant Si–O Bonds for High-Voltage Lithium Metal Batteries.**
  Guang Zhang, Dong Yang, Kewang Yang, Farwa Mushtaq, Meng Zhang, **Mingtai Zhang**, Jieshang Lu, Yucheng Wen, and Meinan Liu.
  *Journal of Physics: Conference Series* **3165**, 012009 (2025); CEAMS 2025 (EI-indexed).
  My part: cell fabrication and electrochemical testing for the DMCPS-additive study.
  [DOI](https://doi.org/10.1088/1742-6596/3165/1/012009)

## Under review

- **Two-Scan Recovery of Sparse Defects in Ptychography.** **Second author.**
  Yuchen Miao, **Mingtai Zhang**, Zijun Wang, Ruobing Han, Chang Han, and Siyang Xu.
  Under review, *IEEE Signal Processing Letters*, 2026. CRediT: data curation, software.
- **Attribution boundaries in conversational AI memory.** **First author.** Under double-blind review; title, venue, and co-authors withheld until notification.
- **The accuracy–evaluation trade-off in test-time selection.** **Second author.** Under double-blind review; title, venue, and co-authors withheld until notification.

## Undergraduate thesis

- **Electrochemical Deposition of Magnesium for Constructing High-Performance Lithium Metal Anodes.** Guangxi University, 2026. Sole author; advisor Prof. Meinan Liu.

<span class='anchor' id='research'></span>

# 💻 Research

**Attribution and memory in conversational AI agents** · *2026* · first author, under double-blind review

- When a user role-plays a fictional character, a companion agent can store the character's statements as facts about the real person. I formalized **boundary non-interference**: a proposition supported only inside a fictional frame must not be asserted as a fact about the real user without attribution.
- Instead of scoring overall response quality, I separated the **conversational channel** from the **persistent-memory channel** and gave each its own measure, with explicit scoring rules and coverage diagnostics, over rule-generated episodes that carry paired fictional and real-user values for the same attribute, so every error is attributable rather than inferred.
- Main finding: supervised fine-tuning that improved conversational attribution did not consistently improve profile writing, and conversation-targeted fine-tuning raised observed write corruption in every reported condition summary. Reply-level evaluation alone would have scored both interventions as successes. The paper reports these training results as exploratory, because of output-validity and checkpoint-selection limits. Full numbers after notification.

**Accuracy and evaluation cost in test-time selection** · *2026* · second author, under double-blind review

- Selecting a better response also makes its accuracy harder to measure, because the favored answers are rare in the labels you already have. The paper characterizes the accuracy reachable with a candidate budget when evaluation reuses a fixed label pool, and the resulting accuracy–audit frontier.
- I designed and ran the entire experimental verification on four frozen public reasoning banks, including cross-fitted frontier policies and fully optimized order-statistic and quadratic baselines at matched audit budgets. Numbers after notification.

**Sample complexity of sparse recovery in coherent imaging** · *2026* · second author, IEEE SPL under review · Dr. Siyang Xu's group, Northeastern University (Qinhuangdao)

- The paper asks a minimum-measurement question: given a known uniform background carrying *N* unknown defects, how many scan positions are needed for unique recovery? The answer is two, and one is provably insufficient because of a conjugate-reflection ambiguity.
- I handled data curation and software: the forward-model simulation and the whole evaluation harness — Gaussian probes, scan geometries, sparse-defect ensembles, detector-noise injection — then benchmarked the proposed 2*N*-lag decoder against full-data linearization and the iterative phase-retrieval baselines PIE and HT-WF over defect-separation and SNR sweeps.
- Working on an identifiability result changed how I approach evaluation in general: I now ask whether the measurement can determine the answer before asking which method wins.

**Lithium-metal anode interfaces** · *2025–2026* · undergraduate thesis, sole author

- Single-variable controlled study of a lithiophilic Mg interlayer grown on Li metal by electrochemical pre-deposition, with current density and areal capacity fixed so that the pre-cycling count was the only variable. Cells assembled in an Ar glovebox below 0.1 ppm H₂O and O₂.
- Three cell configurations were used as three complementary measurement channels — half cell, symmetric cell, full cell — and a claim that survived in only one channel was not reported as a general improvement. The Li plating plateau overpotential fell from **145 to 114 mV** at 1 mA cm⁻² (the nucleation dip from about 30 to about 20 mV), symmetric cells stayed near **30 mV for 330 h**, and Mg@Li-30‖LFP full cells kept **85.3% after 600 cycles** at 0.5 C.
- I localized failure on **both sides** of the optimum instead of reporting only the best setting: too little treatment leaves uncovered nucleation sites and collapses at cycle 45; too much builds a layer that cracks and collapses at cycle 30. EIS and XRD were read separately and point to the same mechanism: interfacial impedance falls from roughly 30 to 10 Ω, and the diffraction pattern shows metallic Mg plus a bcc Li–Mg solid solution, which lowers the nucleation barrier. The whole route uses commercial reagents and standard CR2025 hardware, so other labs can repeat it.

**Ti₃C₂Tₓ MXene-modified separators** · *2025–present*

- Run the MXene line end to end: selective Al etching from the Ti₃AlC₂ MAX phase, intercalation and delamination into few-layer colloidal nanosheets, then film coating onto polyolefin separators. The idea is to make the separator do work rather than just separate: anionic surface terminations pin anions and raise the Li⁺ transference number, so the plating flux reaching the anode is more uniform.

**Heavy metals recovered from wastewater as high-entropy spinel catalysts** · *2024–2025* · key member, Autonomous-Region Innovation and Entrepreneurship Training Program

- Turned the mixed heavy-metal cations in industrial wastewater into an entropy-stabilized single-phase spinel (AB₂O₄), so a waste stream becomes catalyst feedstock instead of sludge. I ran synthesis, phase control, and the photocatalytic VOC oxidation tests.

<span class='anchor' id='beyond-research'></span>

# 🛠 Beyond Research

**Systems built and deployed**

- *Winter 2026*, **Founder, Kangjie Returning-Student Tutoring Platform**, Yuncheng, Shanxi. A non-profit tutoring service staffed by university students home for the holiday. I owned scheduling, tutor–student matching, progress tracking, and daily operations, and rebuilt the operating workflow around AI agent tooling, which removed most of the manual coordination work. It was also a practical test of whether agents hold up as operators rather than demos. In total the service mobilized 28 tutors to serve 37 high-school students.
- *2026–present*, **Co-Founder, On-Demand Fitness Coaching Platform**, Guangxi University. A live two-sided service run with the Guangxi University Rehabilitation Association that matches certified student coaches to users for one-on-one on-site sessions. I own operating strategy, supply coordination, and the commercial model.

**Industry grounding** · *2024–2026* · four supervised placements, sixteen manufacturing enterprises across six industries in Guangxi

- Traced the aluminium chain end to end, from bauxite mining and Bayer refining through electrolysis, casting, extrusion, rolling, and lithium-battery foil, plus integrated steelmaking, automotive stamping-to-assembly, construction machinery, photovoltaic module lines, and superhard-material sintering.
- Closest to my own work: at **Nanning Industrial Investment Aluminium-Based New Materials Group** I followed the full ingot-to-foil chain for 12 μm lithium-battery cathode current-collector foil — the component I hand-assemble into coin cells, made there on a line built for a hundred thousand tonnes a year. Standing at the inspection points where industrial process data is actually produced shapes how I think about deployed models: on a plant floor a system is judged by throughput, yield, and inspectability, not by one headline number.

<span class='anchor' id='education'></span>

# 📖 Education

- *2022–2026*, **Guangxi University**, B.Eng. in Materials Science and Engineering, School of Resources, Environment and Materials. Degree completed June 2026.
  Coursework: physical chemistry, fundamentals of materials science, physical metallurgy, principles of metallurgical processes, materials characterization methods, electrical and electronic engineering, mechanical design. My quantitative and computational training is self-taught.

<span class='anchor' id='awards'></span>

# 🎖 Honors and Leadership

- *2025*, **First Place**, and *2024*, Third Place, Guangxi "Qianli Cup" Intercollegiate Football League, undergraduate division.
- *2023*, **Silver Award**, Guangxi University Career Planning Competition.
- *2023*, **Third Prize**, Guangxi University Metallography Contest.
- **Leadership:** Captain, Guangxi University Football Team · Youth League Branch Secretary, University Football Association · Chair, Student Representative Assembly, School of Resources, Environment and Materials.

<span class='anchor' id='skills'></span>

# 🧰 Skills

- **Programming and tools:** Python, PyTorch, LaTeX, MATLAB, C, Claude Code, Origin.
- **Machine learning:** supervised fine-tuning of open-weight LLMs, large-scale batched inference, LLM-as-judge pipelines, RAG, multi-agent systems, checkpoint selection and validity filtering.
- **Evaluation:** factorial design, parallel controls, replication arms, holdout construction, coverage diagnostics, failure localization, pre-stated validity limits.
- **Signal and imaging:** forward-model simulation, phase retrieval (PIE, HT-WF), sparse recovery, sample-complexity benchmarking.
- **Instrumentation:** electrochemical workstations, EIS, XRD, SEM, XPS, glovebox.

<span class='anchor' id='cv'></span>

# 📄 CV

- [CV — Computer Science / AI](/files/Zhang_Mingtai_CV_CS.pdf)
- [CV — Materials Science and AI](/files/Zhang_Mingtai_CV_Materials-AI.pdf)

<small>Both public CVs are the double-blind-safe versions: titles, venues, and exact experiment counts for papers under review are masked. Unmasked copies go directly to programs on request.</small>
