# NotebookLM presentation prompt

Add and select three NotebookLM sources: [source.md](./source.md), [presentations/wocsa-style.md](../wocsa-style.md), and [presentations/cyberjutsu-style.md](../cyberjutsu-style.md). Keep the style-source filenames recognizable. Import the files first: paths in prompt text do not upload files. The Markdown guides define style; original PDFs are not required.

Copy only the block into the presentation generation instructions. **Prompt: 1717 characters.**

Counts include spaces and line breaks inside the blocks, excluding the surrounding Markdown and a trailing newline. Editing budgets: **2,000 characters per main prompt**, **500 per video visual-style field**. These are conservative project budgets, not verified NotebookLM maxima. Full details live in the selected sources.

```text
Create a welcoming, reusable Cyberjutsu course introduction: 12 slides, 6–8 minutes. Use "Cyberjutsu course introduction — NotebookLM source" (source.md) for facts, wording, and the slide sequence. Use English, with accurate Japanese writing, romaji, and brief meanings from that source.

Style definitions: presentations/wocsa-style.md for WOCSA content (slides 1–4); presentations/cyberjutsu-style.md for Cyberjutsu content (slides 5–12), including goals, rules, and Hajime. These selected Markdown guides define appearance, not PDFs or websites. Follow the subject's style even when its factual provenance is another deck. This English brief overrides the guide's French default.

Order:
1. WOCSA: nonprofit identity, mission, organisation, chapters, local action, international projects.
2. Invite beginners and experts to contribute; give practical ways to help and the wocsa.org chapter route.
3. Cyberjutsu: definition, five benefits, efficiency and mutual benefit, training roles and progression; label DEF CON and Cité des sciences examples by event/year.
4. Preserve "Cyberjutsuka Goal" and "Hands-on Cyberjutsu rules to ensure success of the human experience", all goals, and all four complete rules from source.md. Explain respect, the closed dojo, role exchange, and Hajime/Mate/Sono mama/Sore made.
5. Finish with "始め — Hajime!!!" and "Let's begin!"; the instructor gives the actual start signal.

One message per slide; legible rules; fuller explanations in notes where supported. Use authentic supplied logos or plain-text names. Put contacts before the closing beat. Omit event-specific offers and unverified claims; invent no facts or event photographs. Keep command tutorials for the course itself.
```
