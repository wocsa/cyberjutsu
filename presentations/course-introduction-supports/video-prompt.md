# NotebookLM video prompt

Add and select three NotebookLM sources: [source.md](./source.md), [presentations/wocsa-style.md](../wocsa-style.md), and [presentations/cyberjutsu-style.md](../cyberjutsu-style.md). Keep the style-source filenames recognizable. Import the files first: paths in prompt text do not upload files. The Markdown guides define style; original PDFs are not required.

Select **Explainer**, **English**, and **Visual Style → Custom**. Copy each block into its own field, excluding headings and fences. Google documents separate visual-style and steering controls in its [video customization help](https://support.google.com/notebooklm/answer/16454555?hl=en).

Counts include spaces and line breaks inside the blocks, excluding the surrounding Markdown and a trailing newline. Editing budgets: **2,000 characters per main prompt**, **500 per video visual-style field**. These are conservative project budgets, not verified NotebookLM maxima. Full details live in the selected sources.

## Field 1 — Steering prompt / what to focus on

**1784 characters.**

```text
Create a welcoming 4–5 minute video to open any Cyberjutsu course. Use "Cyberjutsu course introduction — NotebookLM source" (source.md) for facts, wording, and Japanese terms. Narration and on-screen text must be English; pair Japanese writing with romaji and a brief meaning. Pronounce terms naturally. This English brief overrides the guide's French default.

Order:
1. WOCSA: nonprofit identity, mission, organisation, chapters, local action, international projects. Invite beginners and experts to contribute and show wocsa.org as the route to a chapter.
2. Cyberjutsu: definition, five benefits, efficient practice and mutual benefit, partner/instructor roles, role exchange, repetition and freer practice. Include DEF CON and Cité des sciences examples labelled by event/year.
3. Preserve "Cyberjutsuka Goal" and "Hands-on Cyberjutsu rules to ensure success of the human experience". Convey all goals and all four rules: use only taught techniques and commands; participate in all activities; practise with mutual aid; follow the teacher carefully. Explain the closed dojo and Hajime, Mate, Sono mama, Sore made.
4. Close: "Be curious. Respect your partner. Learn together." Show "始め — Hajime!" and say "Hajime! Let's begin!" The instructor gives the actual start signal.

Use the separate visual-style field and selected presentations/wocsa-style.md and presentations/cyberjutsu-style.md; apply each by subject, not quotation provenance. Do not derive style from PDFs or websites.

Allow about 1 minute for WOCSA, 2 for Cyberjutsu, and 1–2 for rules/closing. Keep text concise and rules readable; narration explains rather than recites. Put contacts before Hajime. Omit event-specific offers and unverified claims. Do not invent facts or present illustrations as event footage.
```

## Field 2 — Custom visual style

**466 characters.**

```text
Use selected Markdown sources: presentations/wocsa-style.md for WOCSA organisation/joining; presentations/cyberjutsu-style.md for Cyberjutsu, goals, rules and Hajime. WOCSA: Roboto, orange/white/near-black, thin grey rules, faint globe. Cyberjutsu: Aptos, ivory/red/navy, rounded white panels, wave/circuit textures, illustrated martial arts and cable braid. Switch by subject; keep styles distinct. Readable English; calm transitions. Supplied logos or plain names.
```
