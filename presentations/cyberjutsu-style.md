# Cyberjutsu illustrated-poster style guide

> A visual and editorial reference for an LLM creating posters or presentations, including NotebookLM. Follow the appearance and language described here; obtain event facts from the new task's sources. Section 12 contains a paste-ready instruction block.

## 1. Reference and evidence

**Source:** `/home/kalden/Documents/Documents/wocsa/cyberjutsu/Cyberjutsu Affiche 2026 (1).pdf`.

The source is a **single-page French event poster**, headed “CYBERJUTSU: L'ART MARTIAL NUMERIQUE.” It is **540 × 780 PDF points**, portrait, with a **9:13 aspect ratio**. It is not a 16:9 slide or an exact A-series paper ratio.

This guide is based on inspection of the rendered poster, its extracted background and image assets, embedded fonts, text positions, and PDF drawing instructions. It describes this poster's style, not a universal or official Cyberjutsu brand manual.

Three evidence levels are used throughout:

- **Measured:** editable text sizes, positions, vector geometry, and explicitly specified colors or opacity.
- **Observed / sampled:** the appearance of the embedded artwork, including approximate raster-image colors.
- **Recommended adaptation:** instructions for turning this portrait-poster language into a slide system. The PDF itself contains no slide masters, alternate pages, or transitions.

All poster coordinates below use the **top-left origin** of the 540 × 780 canvas. At 1080 × 1560 pixels, multiply coordinate values and point-size numbers by two for their corresponding pixel dimensions. Preserve proportions when changing output size.

### Important distinction from the WOCSA presentation reference

This poster has its own visual identity: **warm ivory, red, white, navy, rounded panels, illustrated martial artists, a cable double helix, and a Japanese wave pattern**. Do not automatically import the orange title system, Roboto typography, thin metadata grid, or network globe from `wocsa-style.md`. WOCSA appears here as an organizer logo; its orange is a local logo color rather than the poster's main accent.

## 2. Core identity and visual field

The design makes one concept visible: **Japanese martial practice and digital-security practice are intertwined**. It communicates this through paired illustrations and an enormous red-and-white cable braid running down the center.

The poster combines:

- **Human physical practice:** two martial artists performing a throw, white training uniforms, belts, a dojo/tatami symbol, and a small instructor illustration.
- **Digital protection and practice:** a shield with a keyhole, circuits, code-like marks, a touchscreen, keyboard, computer specialist, laptop, and cable connectors.
- **A shared structure:** twisting red and white strands, an ordered daily timeline, and coordinated illustration treatments.
- **Accessible event information:** introductory language, a schedule, expert credentials, a price badge, contact information, and registration.

The feeling is **illustrated, instructional, energetic, welcoming, and practical**. It is more pictorial and expressive than a conventional institutional slide deck, but the actual information is typeset in a plain contemporary sans serif.

### Visual contrasts to preserve

| Contrast | How the poster expresses it |
| --- | --- |
| Traditional practice / digital tools | Gi, tatami, and martial gestures paired with circuits, keyboard, and touchscreen |
| Physical / digital | A throwing demonstration adjacent to a cyber shield; a martial instructor beside a computer professional |
| Motion / order | Flowing cable curves and dynamic bodies next to stable rounded information panels |
| Warm / technical | Ivory paper-like field and red accents alongside dark outlines, circuitry, and navy |
| Illustration / typography | Detailed shaded drawings paired with clean black Aptos text |
| Invitation / credibility | Beginner-friendly wording supported by named teachers and concise credentials |

The central motif resembles a **double helix made of cables or ribbon-like cable bundles**. Its ends visibly become electronic connectors. The design supports an interpretation of intertwined disciplines; the source does not label it as DNA, genetics, or a biological claim.

## 3. Palette and color roles

Most color is baked into a JPEG illustration, so there is no single exact vector swatch for every red, cream, or navy region. Treat sampled values as representative reproduction targets rather than official brand specifications.

### Main palette

| Role | Reproduction value | Evidence and use |
| --- | --- | --- |
| Warm ivory background | **Approximately `#F7F8EA`** | Common sampled background tone; pale cream with a slight yellow-green cast |
| Light patterned header | Approximately `#FBFBF8` / `#FBFAF7` | Rendered header after a translucent white overlay softens the background pattern |
| Expert-panel surface | Approximately **`#FCFCF9`** | Near-white visible surface in the left rounded panel |
| Schedule-panel surface | **`#FFFFFF`** | Solid white vector fill |
| Main type and outlines | **`#000000`** | Text, illustration contours, timeline line, and strong separator |
| Footer navy | Approximately **`#19232F`** | Common sampled dark footer tone; related areas range around `#1A222E` and `#1B2430` |
| White on navy/red | **`#FFFFFF`** | Footer text, price, and supporting words inside the seal |
| Deep red | Approximately **`#A30C10`** | Representative seal red; also the broader red family of the cable motif |
| Dark red shading | Approximately `#820A0C` to `#520405` | Shaded seal and cable regions; gives the illustrated objects depth |
| Pale gray / gray-beige | Low-contrast warm gray | Repeated wave arcs, circuit traces, folds, and background detail; varies within the raster |
| Blue-gray | Desaturated cool grays and navy | Uniform shadows, metallic cable shading, and illustration details |

### Asset-specific accent colors

| Asset | Colors | Limits |
| --- | --- | --- |
| Cyberjutsu logo | Red-orange around **`#EE2E20`**, dark blue around **`#222C61`** | Sampled from the supplied logo; preserve its artwork rather than rebuilding it as ordinary text |
| WOCSA footer logo | Strong orange **`#FF6604`**, gray around **`#808080`** | Sampled dominant logo colors; orange is not the main poster accent |
| Occitanie judo logo | Black, red, blue; blue around **`#5080B8`** | Partner identity at upper left |
| QR artwork | Bright red, black, white, tiny central brand mark | Functional registration element, not a general background pattern |
| Cyber shield | Cyan/teal and red illumination, dark navy interior, light code marks | Local luminous effect around one illustration |

### Distribution and behavior

- Keep **most of the page light ivory or near-white**. Dark outlines and black text provide structure.
- Concentrate strong red in the central braid, price seal, timeline nodes, and selected logo/QR details.
- Use a **solid-looking deep navy base** for the contact/registration area. The original raster contains subtle tonal variation, not a bright gradient.
- Reserve white text for the dark footer and red badge. Main information is black on light surfaces.
- Use shading within illustrations: red highlights and burgundy shadows, blue-gray folds in white uniforms, and black contours.
- Keep background textures faint enough that the words read immediately.
- Preserve each partner logo's native palette.

This is not a flat two-color poster: it uses shaded illustration and small multicolor details. Nevertheless, the dominant impression should remain **ivory + red + dark navy/black**, not a rainbow or a neon interface.

## 4. Typography

### Actual typefaces

The editable PDF text uses **Aptos Regular, Aptos Bold, and Aptos Italic**. An Arial font supplies round bullet glyphs. The Cyberjutsu, WOCSA, and Occitanie wordmarks are raster logo artwork; their lettering must not be inferred from the Aptos text styles.

**Default for reproductions:** Aptos, with ordinary spacing and a clear distinction between bold labels and regular explanations. If Aptos is unavailable, use a neutral sans-serif fallback such as Arial and check all wrapping. The fallback is a practical accommodation, not a font observed in the main prose.

### Measured hierarchy on the 540 × 780 poster

| Element | Size / weight | Treatment |
| --- | --- | --- |
| Main event heading | **18 pt Aptos Bold** | Black, uppercase, single line across the upper region |
| “STAGE initiation” | Approximately **12 pt Bold** | Centered; uppercase label plus lowercase qualifier |
| Audience/accessibility statement | **12 pt Bold** | Centered, with uppercase opening phrase |
| Two explanatory lines under the heading | Approximately **12 pt Regular** | Black, centered as a group, sentence case |
| “Déroulé des journées” | **18 pt Regular** | Black, two lines inside the schedule panel |
| Schedule phase labels | Approximately **10.5 pt Bold** | Uppercase, left-aligned |
| Schedule times and explanations | Approximately **10.5 pt Regular** | Black, left-aligned, tight line spacing |
| Parenthetical clarification | **8.25 pt Italic** | Small, black, one line under afternoon text |
| Expert-introduction paragraph | Approximately **11.25 pt Regular** | Four short lines in the left panel |
| Expert list | Approximately **11.25 pt** | Bold name and colon, regular credential; black bullets |
| Price amount | Approximately **24 pt Bold** | White, centered inside red seal; strongest numeric emphasis |
| “TOUT / COMPRIS” | Approximately **9.75 pt Bold** | White, uppercase, stacked beneath the amount |
| Price inclusions | Approximately **9.75 pt Bold** | Black, short wrapped lines beside the seal |
| Footer “LIEU:” | Approximately **15.8 pt Bold** | White, uppercase |
| Footer contact and registration | Approximately **18 pt Bold** | White; labels uppercase, address/URL in normal case |

Several PDF values differ from these rounded sizes by only 0.025 pt; they do not establish additional hierarchy levels.

### Text behavior

- Use **bold uppercase labels** to expose the information architecture quickly.
- Keep descriptions and credentials in sentence case.
- Center the opening identity block; left-align information within the two panels.
- In biographies, bold the **person's name**, not the entire item. Follow with a colon and a concise regular-weight qualification.
- Use plain round black bullets. Orange bullets belong to the separate WOCSA slide reference, not this poster.
- Use tight body leading: roughly 12–13 pt line advances for 10.5–11.25 pt text, with larger gaps between list entries.
- Reserve italics for a small clarification. Avoid turning all martial-arts vocabulary into ornamental type.
- Display contact addresses and the registration URL plainly. In the footer, they are white and bold rather than conventional blue underlined hyperlinks.
- Avoid brush fonts, faux Japanese glyphs, monospaced paragraphs, condensed esports display type, and wide letter spacing in normal content.

### Presentation-size adaptation

The poster's 10–12 pt information text is meant for a dense portrait artifact. It is **not a recommended projected-slide body size**. On a 960 × 540 slide, use approximately **30–38 pt headings, 22–26 pt body, and 16–18 pt supporting labels**, then adjust to the content. These are recommended adaptation sizes, not measurements from the PDF.

## 5. Composition and geometry

### Overall zoning

The poster is asymmetric but balanced around its central vertical braid:

1. **Top identity band:** approximately the upper 14% of the page.
2. **Main illustrated field:** approximately 14–86% of page height.
3. **Dark contact/registration base:** approximately the bottom 14%, with a QR tile projecting above it.

Within the main field:

- The **left side** introduces the martial/digital concept through a large illustration, then lists the experts in a broad panel.
- The **middle** is occupied by the cable braid, with no body copy laid over it.
- The **right side** contains a slim illustrated timeline, a tall schedule panel, practical-equipment icons, and the fee/inclusions block.

The braid acts as both a dividing spine and a visual connection. It is not a narrow rule that can be replaced by an arbitrary line without changing the identity.

### Poster coordinates

Coordinates for raster features are approximate; panel geometry is measured from vector paths.

| Element | Position / dimensions in points | Notes |
| --- | --- | --- |
| Main background image | `x=0`, `y≈5.25`, `w=540`, `h=769.5` | Very narrow white strips remain at the top and bottom of the PDF |
| Header band | `y≈0–111` | Faint repeating wave texture behind the type |
| Header bottom rule | `y≈111` | Dark, visually strong horizontal separator, roughly 2 pt thick |
| Partner logo | Bounding box `x≈10.5`, `y≈0`, `67.5 × 67.5` | Artwork itself has internal transparent space |
| Cyberjutsu logo | `x≈11.25`, `y≈67.5`, `72 × 35.25` | Beneath the partner logo |
| Main heading | `x≈104.7`, top `y≈11.3` | Fits across the remaining top width |
| Explanatory text | Starts around `x≈93.5`, `y≈62` | Two lines below the subtitle/audience lines |
| Hero throw and shield | Roughly `x≈6–228`, `y≈142–298` | Upper-left illustrated cluster |
| Main cable braid | Roughly `x≈230–314`, `y≈112–625` | Runs from header boundary toward the QR area |
| Expert panel | **`x=12.75`, `y=303.75`, `w=208.5`, `h=258`** | Broad lower-left rounded panel |
| Expert-panel radius | **Approximately `34.75`** | Very large soft corners, about 17% of its width |
| Expert-panel paragraph | `x≈24.7`, `y≈316` | Around 12 pt left padding |
| Expert bullets / text | Bullet `x≈24.7`, text `x≈38` | Hanging indent around 13.3 pt |
| Schedule panel | **`x=393.75`, `y=114.75`, `w=145.5`, `h=338.25`** | Tall white panel close to the right edge |
| Schedule-panel radius | **Approximately `24.25`** | Again around 17% of panel width |
| Schedule title | `x≈413.3`, `y≈130` | Two-line heading with generous space below |
| Schedule body | `x≈401.3`; first phase `y≈216.7` | Approximately 7.6 pt left inset from panel edge |
| Timeline spine | `x≈327`, `y≈239–430` | Thin black vertical line to the left of schedule panel |
| Timeline red nodes | Near `y≈239`, `308`, `376` | Align with morning, meal, and afternoon phases |
| Dark terminal node | Near `y≈430` | End of timeline |
| Mat and keyboard | Roughly `x≈332–513`, `y≈485–532` | Separate physical/digital equipment pair |
| Red price seal | Roughly `x≈329–428`, `y≈543–638` | Large round wax-like badge |
| Price inclusions | `x≈431.8`, `y≈560` | Right of seal; compact bold text |
| Footer starts | `y≈671–673` | Strong dark baseline under illustrated field |
| Visible QR insert | **`x=228`, `y=653.25`, `w=84.75`, `h=90`** | Overlaps the main field and footer |
| Footer location label | `x≈20.7`, `y≈684.7` | Source leaves the venue value blank |
| Footer contact | `x≈332.7`, `y≈684.7` and `706` | Label above email |
| WOCSA logo | Roughly `x≈437–517`, `y≈685–708` | Beside the contact label |
| Registration line | `x≈18`, `y≈747.3` | Prominent white label and URL along the bottom |

### Alignment and negative space

- Keep the header text clear of the upper-left logo stack.
- Preserve a clear central corridor for the braid; neither panel crosses it.
- The schedule heading has more padding than the compact schedule entries below it. This is part of the observed asymmetry, not a strict reusable inset rule.
- Use deliberate vertical gaps between phases and between expert items.
- Allow illustrations to occupy exposed ivory areas rather than enclosing every image in a card.
- Keep price, inclusions, QR, and contact information visually distinct despite their proximity.
- The original is dense and nearly edge-to-edge in places. For new layouts, improve padding where needed while preserving the three-part organization.

## 6. Shapes, surfaces, and decorative motifs

### Japanese wave pattern

The upper background contains a repeating **Japanese-style wave/scallop pattern resembling seigaiha**: nested semicircular arcs in staggered rows. The pattern is visible across the header and in the upper corners of the illustrated field, fading into the ivory center.

- Use pale gray-beige on warm ivory.
- Keep the pattern small and repetitive, not a giant scenic ocean wave.
- Avoid hard, high-contrast tessellation behind text.
- “Seigaiha-like” describes the observed appearance; the PDF contains no text naming the pattern.

### Central cable double helix

- Two broad bundles, one deep red and one white/silver, spiral around each other vertically.
- Both have **strong black outlines** and several parallel interior lines suggesting grouped cables or ribbon strands.
- The alternating front/back crossings give depth. The white bundle uses gray-blue shading; the red bundle uses darker red/burgundy shadows and brighter red ridges.
- Several open ivory spaces appear between successive crossings. Preserve these holes rather than making a solid braided column.
- At the bottom, the bundles separate into individual leads ending in recognizable generic electronic plugs/connectors.
- The top is cropped by the header rule, giving the impression that the strands continue beyond the visible field.
- A slight pale cyan edge glow appears in some lower cable areas. It is a local artwork detail, not the main lighting style.

### Rounded information panels

- Large **rounded rectangles**, with much softer corners than ordinary business-slide cards.
- Right panel: opaque white fill, thin white outline around **1.5 pt**.
- Left panel: white fill at approximately **70.196% opacity** over the underlying prepared area, plus a **1.5 pt white outline**. Its rendered surface is an almost-solid warm near-white.
- The header also uses a white overlay at approximately 70.196% opacity to soften the background.
- Faint dark edging/shadowing is present in some composited backing layers, but the visible panels remain light and quiet. Avoid heavy drop shadows or glass effects.
- Text remains on a stable, readable light surface. Do not let a busy illustration show strongly through the panel.

### Timeline

- A thin black vertical stem with short rightward ticks.
- Three glossy deep-red circular nodes for the three phases.
- A dark navy/black circular endpoint at the bottom.
- Small pictorial icons sit beside the ticks: martial artists, meal bowl, touch/computer interface.
- The timeline is a practical sequence indicator. It does not need numbers, arrows, chevrons, or progress percentages.

### Price badge

- A large **red wax-seal-like medallion** with an irregular scalloped perimeter.
- Dark rim, glossy highlights, and shaded raised edge; a relatively calm inner field holds the white text.
- One large numeric amount, then two compact uppercase supporting lines.
- This is an event-price treatment, not an official certification or achievement seal.
- Limit it to one important offer or practical callout; repeated glossy badges would overwhelm the poster's balance.

### Lower circuitry

- Thin pale gray circuit traces fan across the lower ivory field.
- Lines use angular bends and terminate in small outlined circular pads.
- They sit behind lower illustrations and approach the dark footer.
- Keep them sparse and low contrast. They are a texture, not a readable circuit diagram.

### Footer and QR shape

- A broad dark navy rectangle anchors the bottom.
- A thin muted-red line runs horizontally through the footer and steps upward around the central QR opening.
- The QR occupies a white rounded tile with dark edging/backing visible around it; it protrudes above the footer.
- The QR graphic has red data modules, black rounded finder outlines, white space, and a tiny central Cyberjutsu logo.
- For a new artifact, generate and test a real QR for the supplied destination. Do not treat the observed module pattern as an illustration to imitate.

## 7. Illustration and logo treatment

### Drawing style

The dominant artwork looks like **digitally colored ink illustration with comic-like outlines and shaded folds**. It is neither a photograph nor a set of uniform flat vector icons.

Use these characteristics:

- Bold, slightly irregular black outer contours.
- Finer black interior strokes for folds, cables, screen details, and objects.
- Mostly realistic recognizable forms, simplified for quick reading.
- White uniforms with blue-gray shadows and visible cloth creases.
- Restrained skin tones and dark hair in the hero martial scene.
- Red accents on belts, ties, laptop details, and the cable structure.
- Occasional soft local glow in the cybersecurity shield; strong object shading in the wax seal.
- Light or transparent surroundings so objects integrate with the ivory background.

The illustration system is mixed in detail: the hero scene is elaborate, the timeline icons are smaller and more schematic, and the bottom professional figures are simplified and partly faceless. Maintain their shared black contours and palette rather than forcing every element into identical detail.

### Principal pictorial elements

| Element | Appearance | Communication role |
| --- | --- | --- |
| Martial throw | Two people in white gi, dark belts, bare feet; diagonal throwing action | Physical practice, coordination, learning through movement |
| Cyber shield | Dark shield with central light keyhole, small code-like symbols, cyan/red edges, circuit branches | Protection and digital-security knowledge |
| Schedule martial icon | Small pair in white training clothes | Morning practical training |
| Meal icon | Outlined bowl, chopsticks, rising steam | Lunch/rest interval |
| Digital-practice icon | Hand touching a small interface with colored screen details | Interactive computer practice |
| Tatami icon | Rectangular mat with a dark outline and inset tile divisions | Physical training environment |
| Keyboard icon | Rectangular outlined keyboard with a trailing cable | Digital training equipment |
| Martial instructor | White uniform, red/white belt, raised finger, simplified face | Teaching and guidance |
| Computer professional | Dark suit, red tie, laptop and nearby code-like screens, simplified face | Technical expertise |

“Computer professional” is the visible role cue. Do not turn this person into a hooded criminal or use the illustration to suggest that the event is about illicit activity.

### Logos

- **Top left:** Occitanie Ligue Judo logo, with mountain/wave drawing, red “Occitanie,” and black judo lettering.
- **Below it:** Cyberjutsu logo, containing throwing silhouettes and a red-orange/dark-blue two-line wordmark. The “JUTSU” lettering is stylized and outlined.
- **Footer right:** WOCSA wordmark in orange and gray, with its C/shield construction.
- **QR center:** a very small Cyberjutsu mark within the supplied code.

Use the supplied logos at their original aspect ratios. Do not reproduce stylized lettering with plain text, stretch the marks, invent Japanese characters, or repaint all partner logos in the main palette.

### What belongs to the final poster

The background JPEG contains elements that are **covered in the final PDF**, including an extra small martial scene, an earlier QR-looking graphic, and a small four-point symbol at the lower right. These are not instructions to add those elements to a new design. Match the final composited page, not every mark found in the raw background image.

## 8. Lexical field and editorial voice

### Language and audience

The poster is written in **French**, with occasional familiar English technical vocabulary such as “Blue Team.” It addresses the reader directly and lowers the barrier to participation.

The core tone is:

- **Inviting:** an initiation, open to a broad audience, with no prior expertise required in the source event.
- **Concrete:** recognizable activities, a daily schedule, named experts, included equipment, contact and registration.
- **Educational:** learn, discover, understand, train.
- **Confident but accessible:** credibility comes from qualifications and practice rather than exaggerated claims.
- **Action-oriented:** the event asks people to participate physically and digitally.

The poster uses “combat numérique” as an educational martial-arts analogy. Keep that connection to guided training clear; do not shift into threats, domination, military conquest, or criminal bravado.

### Semantic fields

| Field | Vocabulary present in the source | Use in new content |
| --- | --- | --- |
| Identity | Cyberjutsu, art martial numérique, arts martiaux japonais, cybersécurité | State the connection between the two practices directly |
| Invitation | stage, initiation, ouvert à tous, pas d'expertise requise | Reassure the audience when the new event's facts support it |
| Learning | découvrez, apprenez, comprendre, entraînement, avec des experts | Lead with a practical learning action |
| Martial practice | tatami, karaté, judo, jujitsu, dan, Shotokan, formateur | Use specific disciplines and meaningful credentials |
| Digital practice | sécurité dans le numérique, ordinateurs, combat numérique, défense, Blue Team | Keep technical descriptions understandable and grounded in activities |
| Daily rhythm | déroulé des journées, matin, midi, après-midi, repas | Make the sequence and timing easy to scan |
| Expert credibility | names, martial ranks, formateur régional, responsable de service, spécialiste défense | Use concise factual qualifications; no invented endorsements |
| Practical access | tarif, tout compris, prêt de tenues, matériel informatique | Explain what participation entails and includes |
| Conversion/action | lieu, contact, inscriptions | Finish with a clear next step |

### Signature wording and structure

The following short source phrases define the register:

- “CYBERJUTSU: L'ART MARTIAL NUMERIQUE”
- “STAGE initiation”
- “OUVERT A TOUS”
- “Apprenez le combat numérique comme un entraînement sur le tatami.”
- “Découvrez comment les arts martiaux peuvent vous aider à comprendre la sécurité dans le numérique…”
- “Déroulé des journées”
- “TOUT COMPRIS”
- “INSCRIPTIONS”

Use **direct second-person plural French**: “Découvrez…”, “Apprenez…”, “vous…”. Combine it with short labels and practical nouns. Avoid lengthy manifestos, abstract business language, or densely technical descriptions.

### Reusable sentence patterns

- **Identity:** “[Nom] : [description courte de la pratique].”
- **Accessible invitation:** “Stage d'initiation — [public concerné], [prérequis réels].”
- **Definition:** “Les [pratiques A] appliquées à [domaine B].”
- **Learning analogy:** “Apprenez [compétence] comme [pratique familière].”
- **Expert introduction:** “Découvrez comment [méthode] peut vous aider à [bénéfice], avec [intervenants].”
- **Schedule item:** “[PÉRIODE] : [ACTIVITÉ]”, followed by a time range and a short explanation.
- **Credential:** “**[Nom] :** [qualification ou rôle factuel].”
- **Offer:** “[Montant] — [inclusions confirmées].”
- **Action:** “INSCRIPTIONS : [lien fourni].”

For an English adaptation, preserve the same plain instructional register: “Introductory workshop,” “Learn,” “Discover,” “Morning: martial arts,” “Afternoon: Cyberjutsu,” “Registration.” Do not add bilingual duplication unless the new brief calls for it.

### Editorial normalization

The poster mixes “CYBERJUTSU” and “CyberJutsu.” For new text, choose a consistent prose spelling, such as “Cyberjutsu,” while preserving official supplied marks and URLs. This poster does not establish the macron spelling as its standard.

Correct accents and spelling in newly written French: for example, “NUMÉRIQUE,” “OUVERT À TOUS,” “APRÈS-MIDI,” “cybersécurité,” “matériel,” and properly formatted rank ordinals. These corrections preserve the voice rather than requiring the source's typos to be copied.

The source's parenthetical “ceci n'est pas un jeu vidéo” is a small clarification under the computer-training description. It is not the main message or a compulsory slogan for every new presentation.

## 9. Adapting the poster into presentations

Everything in this section is a **recommended adaptation**, since the source provides only one portrait composition.

### Preserve these identifying features first

1. Warm ivory ground, quiet wave pattern, red/white cable motif, and dark navy anchors.
2. Black Aptos typography with bold labels and approachable instructional language.
3. Martial and digital imagery used together, with consistent illustrated outlines and shading.
4. Generously rounded light information panels.
5. A clear practical sequence and an explicit registration/contact action when relevant.

Do not stretch the full portrait poster across a widescreen slide. Recompose its elements for the new aspect ratio. Use the dense poster as a source of motifs and hierarchy, then distribute its content over readable slides.

### A. Title / invitation slide

- Ivory background, faint waves near the top, and a strong but restrained dark separator beneath the title zone.
- Large black bold title and one short invitation or definition below it.
- Supplied partner/brand logos grouped in one corner.
- One hero cluster combining martial action and cyber protection.
- A cropped cable braid along one side or between text and image, leaving a clear title area.
- Optional thin navy base for event/location information, if supplied.

### B. Concept / learning-benefit slide

- A large rounded near-white panel for two to four short learning points.
- A paired martial/digital illustration in the complementary area.
- Black text, bold lead phrases, modest red accents.
- Use a short direct headline such as “Apprendre la cybersécurité par la pratique” only when supported by the content.
- Keep background texture outside or faint beneath text regions.

### C. Daily program slide

- Convert the original three-stop vertical timeline into a readable vertical or horizontal sequence.
- Retain a black stem, red nodes, and the three illustrated categories where appropriate.
- Separate bold activity labels, times, and explanations clearly.
- Use a rounded white schedule area on ivory; keep each stage brief.
- Any timetable values must come from the new event brief.

### D. Experts / instructors slide

- Broad rounded panel with a short invitation paragraph and concise credentials.
- Bold names, regular supporting roles, round black bullets.
- Use a small illustrated teaching motif if helpful; the original poster does not use photographic headshots.
- Split a long roster across slides instead of forcing all biographies into small text.

### E. Physical / digital comparison slide

- Pair tatami and keyboard, or martial practice and computer practice, on opposite sides of a restrained cable motif.
- Use two balanced rounded panels with parallel short labels.
- Avoid inventing quantitative charts from a poster that provides no performance data.

### F. Practical details / registration slide

- Make the dark navy footer treatment a larger closing anchor.
- Use white contact/registration text and a functional QR on a white rounded tile.
- Include a red seal for price or a single key practical callout only when relevant.
- Put inclusions beside the badge in short clear text.
- Include actual location, date, and contact information when supplied; avoid copying the poster's blank location area.

### Restraint rules for slide adaptation

- Use one main illustration or paired concept per slide, rather than repeating the complete poster collage on every page.
- The cable braid can be large on title/section slides and a small crop or divider on content slides.
- Keep readable solid panel surfaces; do not cover text in circuit traces.
- Treat the wave pattern and lower circuitry as supporting textures, not competing foreground graphics.
- Retain visual depth within drawings; avoid adding unrelated 3D interface cards or glossy charts.
- Footer and logo placement may be standardized across new slides, but any such master is a new adaptation, not a recovered source feature.

## 10. Content boundaries and source irregularities

| Observation in the source | Correct use in a new artifact |
| --- | --- |
| “2026” appears in the filename, but no event date is visibly supplied in the poster copy | Obtain dates from the new brief; do not fabricate a date line |
| “LIEU:” is present with no venue value | Supply a verified venue or omit the unfinished field |
| Source specifies an age range and no expertise required | Treat these as conditions for that event, not permanent brand promises |
| Source shows a price, meal/equipment inclusions, and a particular daily schedule | Replace with supplied current event facts |
| Named instructors and ranks appear | Preserve only when relevant and supported; the style guide does not update credentials |
| Mixed capitalization, missing accents, and spelling issues | Normalize new copy without losing the plain voice |
| Tight small-print layout | Improve readability when adapting to projected slides |
| Colored QR graphic | Create and scan-test a valid code for the intended destination |
| Hidden graphics beneath cover patches | Reproduce the final visible composition, not discarded background details |
| Some small elements are stretched/composited in the PDF | Preserve natural proportions in new assets, especially logos and QR modules |

There is no visible repeated metadata header, page numbering, classification label, copyright line, network globe, or recurring orange-heading system in this poster. Do not add those merely because they appear in the separate WOCSA slide deck.

## 11. Assets and reproduction limits

### What is actually editable

The PDF is a **layered composition over a large raster illustration**. Most imagery—cables, martial figures, shield, timeline icons, circuitry, seal, and footer background—is already flattened into one JPEG. The primary headline, paragraphs, schedules, credentials, price, and footer text are real PDF text placed on top. Panels, white overlays, patch images, QR artwork, and logos are additional layers.

This matters for an LLM or design tool: the helix, wax seal, and martial figures cannot be extracted as separate original vector objects from this PDF. Exact reuse generally requires careful crops/isolations or access to the original source assets. A verbal reconstruction can match the visual language but will not be pixel-identical.

### Asset inventory for this exact PDF

| Asset | PDF image object / dimensions | Use |
| --- | --- | --- |
| Full illustrated background | **Object 6**, JPEG, **1728 × 2464 px** | Main pictorial composition; includes some details hidden in final PDF |
| Dark footer cover patch | Object 7, **167 × 172 px** | Compositing cleanup, not a brand asset |
| Header/backing effects | Objects 8 and 10, **720 × 158** and **732 × 159 px**, with masks | Composite effect layers; not independent illustrations |
| Visible branded QR | **Object 13**, **200 × 200 px**, with transparency mask | Registration tile; use only with a confirmed intended destination |
| Ivory cover patch | Object 15, **638 × 476 px** | Used twice to cover background details; not a decorative texture standard |
| Panel/backing effects | Objects 17 and 19, **295 × 295** and **296 × 362 px**, with masks | Supporting compositing layers |
| Cyberjutsu logo | **Object 21**, **199 × 97 px**, with transparency mask | Upper-left brand mark |
| Occitanie judo logo | **Object 23**, **90 × 90 px**, with transparency mask | Upper-left partner mark |
| WOCSA logo | **Object 41**, **233 × 77 px**, with transparency mask | Footer organizer mark |

Object numbers identify this particular PDF only. Preserve transparency masks when extracting logos. A mask preview can look like a white logo, but a mask is not automatically a separately supplied white logo variant.

For precise reproduction, provide the original PDF or extracted final-composition artwork alongside this Markdown. This guide contains textual specifications, not embedded image files. Use higher-resolution original logos when available, especially for large slides or print. Do not assume the small raster marks can be enlarged without loss of detail.

## 12. Paste-ready prompt for NotebookLM or another presentation LLM

```text
Use the illustrated Cyberjutsu poster style described in this guide.
Take factual content from the task's other sources. Do not infer new event
dates, venue, fees, age eligibility, credentials, or included services from
the style reference.

IDENTITY
Communicate Japanese martial practice and cybersecurity practice as
connected forms of learning. Use a welcoming, instructional event tone.
The visual identity is warm ivory, red, white, black, and deep navy,
with comic-like ink illustration and clean sans-serif information text.

PALETTE
Use an ivory field around #F7F8EA, near-white panels around #FCFCF9 or
#FFFFFF, black text/outlines, deep navy around #19232F for the footer or
closing anchor, and deep red around #A30C10 for key illustrated accents.
Red objects may have burgundy shadows and brighter red highlights.
Keep WOCSA orange and partner colors inside their supplied logos.

TYPE
Use Aptos Regular and Bold. Black bold headings and uppercase short
labels contrast with ordinary sentence-case explanations. Bold names,
then use regular text for credentials. Use simple black round bullets.
Reserve small italics for a brief clarification. Use white bold type on
navy for contact/registration and on red for a price badge.
For projected slides, use readable slide-sized text, approximately
30–38 pt titles and 22–26 pt body on a 960 × 540 reference canvas.
Do not reproduce the poster's small print at slide scale.

MOTIFS
Use faint nested Japanese-style wave arcs on the upper ivory background
and sparse pale circuit traces near the lower edge. The signature motif
is a tall red-and-white double helix made of cable bundles: black contours,
shaded strands, open spaces between crossings, and electronic connectors
at its lower ends. It represents intertwined disciplines, not biology.
Use it as a hero motif or a cropped divider, leaving text unobstructed.

ILLUSTRATION
Use digitally colored ink drawings with strong black contours, finer
interior lines, white gi with blue-gray folds, and restrained red accents.
Pair martial practice with digital tools: a throwing demonstration and
cyber shield; tatami and keyboard; instructor and computer professional.
A local cyan/red glow around a shield is acceptable; avoid turning the
entire background into neon cyberpunk imagery.
Reuse supplied logos faithfully. Do not invent stylized lettering or
Japanese characters. Preserve transparent backgrounds and proportions.

LAYOUT
The portrait source has a header, left expert panel, central cable braid,
right schedule panel/timeline, and navy registration base. Recompose this
for widescreen slides rather than stretching the whole poster.
Use large rounded light panels with quiet edges and generous corners.
Keep information readable on stable surfaces. Use an orderly timeline
with a thin black stem, red circular stops, and small activity drawings.
A red wax-seal-like badge can highlight one supplied fee or key callout.
On the final practical slide, use white contact text on navy and a real,
tested QR code in a white rounded tile.

LANGUAGE
Default to clear French unless another language is requested. Favor
Découvrez, Apprenez, entraînement, initiation, arts martiaux, tatami,
cybersécurité, experts, matin, midi, après-midi, contact, inscriptions.
Explain the learning analogy in practical terms. Reassure beginners only
when supported by the actual offering. Keep labels short, time ranges
clear, and credentials factual. Correct spelling and French accents.

FIDELITY
Keep the dominant impression ivory/red/navy, illustrated and practical.
Do not import the separate WOCSA deck's orange title system, Roboto,
network globe, metadata grid, or document-classification footer.
Avoid hooded-hacker imagery, military aggression, unrelated samurai/ninja
themes, stock-photo styling, excessive badges, heavy panel shadows,
unreadably dense slides, and nonfunctional decorative QR patterns.
```

## 13. Final appearance checklist

- [ ] The design is immediately recognizable as ivory/red/navy illustrated Cyberjutsu.
- [ ] Martial and digital practice are visually connected, not shown as unrelated decorations.
- [ ] Aptos typography remains clear and quieter than the main illustration.
- [ ] Wave pattern and circuitry stay faint behind the content.
- [ ] Cable strands have strong contours, visible crossings, shading, and plug endings where shown.
- [ ] Rounded panels provide stable readable surfaces.
- [ ] Schedule phases, expert credentials, and practical information have clear hierarchy.
- [ ] Logos retain their correct artwork, colors, and proportions.
- [ ] Price/seal and contact/QR elements appear only when relevant to the new content.
- [ ] French copy is direct, welcoming, practical, and correctly spelled.
- [ ] Event details come from the new brief, including a real venue/date if required.
- [ ] Slide adaptations use readable text and distribute the poster's density across pages.
- [ ] The final composition is the reference; hidden background artifacts are excluded.
