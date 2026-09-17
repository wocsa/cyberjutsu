# WOCSA / Cyberjūtsu presentation style guide

> Use this document as a design and writing reference for an LLM creating presentations, including NotebookLM. Reproduce the visual system and voice described here while taking the presentation's facts from its own source material. The short reusable instruction block is in section 13; the preceding sections provide the detailed specification.

## 1. Source, scope, and fidelity

**Reference:** `/home/kalden/Documents/Documents/wocsa/cyberjutsu/2026-WOCSA-CYBERJUTSU-EN.pdf` — 21 pages, including the title “CYBERJUTSU v1.3” and “JUNE 2026 SUMMER SESSION.” Page references below count the opening orange page as page 1.

This guide was extracted from visual inspection of all 21 rendered pages, embedded font information, text positions, PDF drawing instructions, and sampled rendered colors. It describes this particular deck, rather than claiming to be an official, universal WOCSA brand manual.

**How to interpret the specification:**

- **Observed:** a feature visible in the reference or measurable in the PDF.
- **Reproduction default:** a practical way to apply recurring features consistently to new slides. These defaults are recommendations, not additional rules found in the source.
- **Exception:** a local treatment, imported graphic, or source inconsistency. Do not turn an exception into the entire presentation's style.

Dimensions use a **960 × 540 point, 16:9 landscape canvas**. Coordinates in this document start at the **top left**: `x` increases rightward and `y` downward. Geometry is rounded unless explicitly given to a decimal place. On a 1920 × 1080 image, multiply these dimensions and typographic pixel sizes by two. In presentation software, a 13⅓ × 7½ inch slide corresponds to the PDF's physical dimensions; retain the stated point sizes there.

The PDF establishes static appearance only. It provides no evidence for animation, transitions, audio, or interactive behavior.

## 2. Overall identity and visual field

The appearance is a restrained nonprofit association and training presentation: **orange, white, near-black, clean sans-serif type, thin structural rules, documentary photographs, and practical diagrams**. The deck combines international cybersecurity collaboration with the discipline and mutual support of martial arts.

Its most recognizable rhythm is:

1. A full-orange WOCSA identity page.
2. A dark event title page.
3. Dark numbered section dividers alternating with white explanatory slides.
4. Occasional photographs or existing event graphics.
5. A dark bilingual thank-you and feedback page.

The original contains one orange opening, seven dark pages, twelve white content pages, and one nearly full-frame documentary photograph. This is evidence of the light/dark rhythm, not a mandatory page count for a new deck.

### The two connected visual worlds

| Visual world | Reference elements | Intended impression |
| --- | --- | --- |
| WOCSA association | Shield integrated into the WOCSA wordmark; delicate globe of connected nodes; worldwide chapter references; small formal metadata | Shared knowledge, protection, international cooperation, institutional credibility |
| Cyberjūtsu practice | Dojo and tatami photographs; teachers; martial-arts throwing silhouettes; Japanese terms and characters in supplied posters; cyber code textures | Training, disciplined practice, embodied learning, ethical confrontation, mutual improvement |

**Main slide surfaces remain calm and flat.** The more energetic red/orange, navy, code-texture, and martial-arts graphics belong primarily to inserted Cyberjūtsu posters. They are not a reason to cover every slide in code, dramatic lighting, or action imagery.

**Characteristic contrast:** large empty surfaces around straightforward content; brighter orange for orientation; white text for dark milestones; detailed human and technical material inside the content area.

## 3. Color system

### Core palette

Values below are rounded RGB equivalents of PDF drawing values unless marked as rendered or approximate.

| Role | Hex | Application |
| --- | --- | --- |
| WOCSA presentation orange | **`#FB7023`** | Full background on page 1; orange titles on white slides; principal presentation accent |
| White | **`#FFFFFF`** | Standard content background; major text and logo on dark/orange backgrounds |
| Near-black | **`#0D0D0D`** | Dark title, section, and closing backgrounds |
| Black | **`#000000`** | Body text on white; certain table headers; black image/logo panels |
| Secondary orange | **`#ED7D31`** | Round bullet glyphs, organization-chart boxes, and the orange columns on page 9 |
| Medium gray | **`#7F7F7F`** | Short horizontal accent bar; much of the header text; silver tier header |
| Light-slide rule | **`#BFBFBF`** | Thin master-layout lines on white |
| Dark-slide rule | **`#404040`** | Thin master-layout lines on near-black |
| Secondary metadata gray | **`#898989`** | Small website/header text; some copyright text |
| Dark-slide copyright gray | **`#595959`** | Small subdued copyright line |
| Link blue | **`#0563C1`** | Conventional blue underlined hyperlinks on white slides |
| Classification red | **`#CF022B`** | Very small “C2 – Usage restreint” marking near the bottom left |

**Color extraction detail:** text extraction reports some colors one RGB level lower, for example `#FA6F22` for title orange, `#EC7C30` for bullets, and `#0462C1` for links. The PDF drawing operands round to the values above, and the rendered orange background is `#FB7023`. Use the core values consistently; these differences are not separate intentional brand colors.

### Secondary, local-use palette

| Role | Hex or treatment | Evidence and limits |
| --- | --- | --- |
| Program/day headers | `#4472C4` | Blue headers of the three schedule columns, page 13; also fine outlines on some table headers |
| Pale blue-lavender column bodies | **Rendered `#D3D9EC`** | Pages 9, 13, and 20; PDF fill is approximately `#CFD5EA` at 90.196% opacity over white |
| Gold tier | `#FFC000` | Sponsorship column header only, page 20 |
| Silver tier | `#7F7F7F` | Sponsorship column header only, page 20 |
| Bronze tier | `#843C0C` | Sponsorship column header only, page 20 |
| Imported club-chart green | Approximately `#548235` | Category labels inside the partner organization chart, page 6 |
| Imported club-chart blues | Approximately `#2E75B6`, `#9DC3E6` | Labels inside the partner organization chart, page 6 |
| Logo-art orange | Saturated orange, including rendered areas near `#FF6604` | The supplied large WOCSA logo on page 2 differs slightly from slide-title orange; preserve the asset |
| Poster colors | Red-orange, dark navy/blue, white, black | Existing Cyberjūtsu banner and moral-code poster; preserve their internal palette |

**Application rules:**

- On ordinary white slides, most of the surface stays white; orange appears mainly in the title and tiny bullets. Body copy is black.
- On dark slides, the background dominates. Main text is white, the frame is dark gray, and the network globe is faint gray.
- On the orange opening, the logo, bilingual slogan, separator, and website are white.
- Use blue and tier colors for the specific functional distinctions they serve. Do not replace the deck's orange identity with its schedule blue.
- Use solid fills and crisp edges. Broad gradients, translucent interface panels, bevels, and soft glowing backgrounds are not recurring features.
- Do not recolor supplied photographs, logos, or partner graphics to force them into the core palette.

## 4. Typography and hierarchy

### Typefaces

**Primary:** Roboto. The PDF embeds Roboto Regular, Bold, Medium, and Medium Italic. Most titles are **Roboto Medium**, ordinary content is **Roboto Regular**, and selected important phrases are **Roboto Bold**.

**Secondary:** Calibri and Calibri Light appear in diagrams, table columns, schedules, contact details, and some links. Calibri Light Italic appears in a program term. Arial supplies many bullet glyphs and an isolated body item. Tahoma is used for the tiny classification marking.

**Reproduction default:** use Roboto for titles and normal prose. Retain Calibri for close reproductions of the original schedules and comparisons. If an exact font is unavailable, use a neutral sans-serif fallback such as Arial and recheck line breaks. A fallback is an accommodation, not an observed brand choice. Avoid serif headings, brush lettering, and monospaced body copy; lettering inside existing poster artwork is a separate asset treatment.

### Observed sizes, in source-canvas points

| Element | Size and treatment | Examples |
| --- | --- | --- |
| Large title / major divider | Approximately **54 pt**, Roboto Medium, white | Main event name, pages 2–3; Cyberjūtsu divider, page 8; closing thanks, page 21 |
| Compact divider | Approximately **40 pt**, Roboto Medium, white | Event, communication, and sponsorship dividers, pages 11, 17, 19 |
| Standard white-slide heading | Approximately **32 pt**; PDF commonly uses **32.3 pt**, Roboto Medium, orange | Most content slides |
| Long program heading | Approximately **29.3 pt**, Roboto Medium, orange | Page 13 |
| Event session subtitle | Approximately **28 pt**, white | Page 2 |
| Divider subtitle | **24 pt** or **40 pt**, Roboto Medium Italic, white | Smaller session subtitle on page 11; prominent quotation on page 8 |
| Normal main bullet text | Approximately **24 pt**, Roboto Regular, black | Pages 10, 12, 18 |
| Dense explanatory bullets | Approximately **22 pt**, Roboto Regular | Page 9; nested explanatory text on page 12 |
| Compact body / teacher biographies | Approximately **18 pt**, Roboto Regular | Pages 4 and 15 |
| Dense teacher/contact details | Approximately **12–13 pt**, Roboto | Page 16; profile name/contact blocks on page 15 |
| Small taxonomy columns | Approximately **14 pt**, Calibri Light | Page 9 |
| Organization-chart labels | Approximately **16 pt**, Calibri, white | Page 5 |
| Schedule columns | Approximately **26.3 pt**, Calibri | Page 13 |
| Sponsorship columns | Approximately **24 pt**, Calibri | Page 20 |
| Opening bilingual slogan / website | Approximately **15.8 pt**, Roboto Regular / Bold | Page 1 |
| Master header organization name | **10.5 pt**, Roboto, gray | Pages 2–21, where visible |
| Master date, website, page number | Approximately **9 pt**, Roboto, gray | Regular slide frame |
| Copyright / classification | Approximately **9–10 pt**; Tahoma for classification | Regular footer |

The original includes small and occasionally crowded text. For new projected slides, use **24 pt body and 32 pt titles as the normal default**, splitting dense material over multiple slides when necessary. Preserve the hierarchy rather than copying every instance of tiny text.

### Typographic behavior

- Left-align titles and ordinary paragraphs. Center labels in organization-chart boxes and column headers.
- Use medium-weight headings rather than very heavy display type.
- Use normal sentence case for explanatory headings: “What is cyberjūtsu ?” and “Why do we apply martial arts to cybersecurity?” are source examples.
- Use uppercase for some short operational section labels: “COMMUNICATION PLAN,” “SPONSORSHIP OPTIONS,” and the event session name.
- Number section dividers with an Arabic numeral and a period. Maintain a correct sequence in a new deck.
- Reserve italics for a framing statement, session subtitle, or selected martial-arts term. Do not italicize all Japanese vocabulary automatically.
- Bold selected concepts within a sentence, as on page 4: participation, digital life, worldwide reach, international projects, local actions.
- Keep normal tracking. The source does not use widely letter-spaced, tiny uppercase eyebrow headings.
- Use small solid round bullets. Standard content bullets are secondary orange while their text is black. Bullets inside colored comparison/schedule bodies are black.
- Wrap continuation lines to the text start, not back to the bullet position.
- Body lines are relatively tight, typically around 1.0–1.15 times the font size. Separate bullet items with additional paragraph space; simple 24 pt bullet lists often advance approximately 33–36 pt per item.

## 5. Recurring frame, grid, and spacing

Except for the orange opening and the photograph that covers the underlying frame, the deck uses a recognizable thin-line master layout.

### Master geometry

| Element | Approximate position on 960 × 540 | Proportional interpretation |
| --- | --- | --- |
| Header bottom rule | `y = 41.6` | 7.7% down the canvas |
| Footer top rule | `y = 496.1` | 91.9% down the canvas |
| Left vertical rail | `x = 53.6`, almost full height | 5.6% from the left |
| Main title/content alignment | Usually `x = 103` | 10.7% from the left |
| Header organization text | `x ≈ 104`, top around `y = 15` | Aligned with the main content region |
| Header separators | `x ≈ 614`, `729`, `852` | Divide organization, date, website, page number |
| Date | Text starts around `x = 651` | Small gray text in the second header cell |
| Website | Text starts around `x = 756` | Small gray text in the third header cell |
| Page number | Around `x = 895–898` | Final header cell |
| Short accent bar | `x = 103.5`, `y = 41.25`, `w = 90.75`, `h = 6.75` | Medium-gray bar immediately below the header, aligned with content |
| Footer logo-cell divider | `x ≈ 844` | Isolates the small bottom-right WOCSA logo |
| White-slide footer logo | Approximately `x = 858`, `y = 504`, `w = 80`, `h = 27` | Compact colored WOCSA logo |
| Dark-slide footer logo | Approximately `x = 871`, `y = 506`, `w = 62`, `h = 21` | White WOCSA logo on a small black backing area |
| Copyright, when present | Around `x = 98–113`, `y = 510–512` | Subdued text in the footer strip |
| Classification marking | Around `x = 5`, `y = 525` | Tiny red label at the far bottom left |

Rules are approximately **0.5 pt** thick. The left rail, header rule, and footer rule create a technical document frame without a heavy outer border. On white slides the rules are light gray; on dark slides they are dark gray. The short accent bar is gray, not orange.

The header reads:

> WOCSA – Worldwide Open Cyber Security Association (Non Profit Organisation)

Date, `www.wocsa.org`, and slide number occupy the separate cells to its right. These elements remain visually subordinate to the slide content.

### Content region

- A normal white-slide title starts around **`(103, 75)`**. Some image-heavy or dense slides begin nearer `y = 51–55`, and a few shift left to `x = 63–83`.
- Main content generally fits between `y ≈ 125` and `y ≈ 470`, above the footer rule.
- For standard lists, place the bullet near `x = 103` and text near `x = 130`: approximately **27 pt hanging indent**.
- A nested list commonly advances by approximately **36 pt**: bullet near `x = 139`, text near `x = 166`.
- Use flexible right margins according to content. Some diagrams extend close to the right edge; ordinary text should retain breathing room.
- Preserve generous unused space on simple slides. Page 18 places six bullets in the upper/middle left while leaving most of the right side empty.
- Avoid filling empty space with decorative icons, cards, or large background illustrations that are absent from the reference.

For a clean reusable template, use `x = 103`, title top `y = 75`, body start `y = 130`, and content bottom `y = 475`. These are reproduction defaults, not a claim that every source page uses identical coordinates.

## 6. Shapes, motifs, logos, and image treatment

### Network globe

This is the main recurring decorative motif: **a spherical web of fine curved paths, straight connecting segments, and small circular nodes**. It suggests worldwide connections and shared knowledge. It is not a geographic map, a heavy wireframe mesh, a circuit board, or a glowing technology tunnel.

- **Orange opening:** a nearly full-height, centered globe behind the logo. Its footprint is approximately `x = 194–767`, centered near the canvas center, and cropped slightly by the top and bottom. Fine pale lines and dots remain low contrast against orange.
- **Dark pages:** the globe is shifted far off the left edge. The source image is approximately 509 pt square, positioned around `x = -276`, `y = 11`. Only its right-hand arc is visible, reaching about `x = 233`; a background-colored left strip hides the part before the vertical rail at `x ≈ 54`.
- The result is a narrow crescent of network texture along the left side behind the section title area. Most of the dark slide stays empty and near-black.
- Preserve the original asset's transparency when possible. If reconstructing the motif, use very thin subdued gray lines and small nodes; match the faint appearance visually. The PDF does not establish a single reusable opacity percentage for a redraw.

### WOCSA wordmark

- The wordmark reads **WOCSA**, with the **C integrated into a shield outline**.
- The orange opening uses a large white version, approximately `433.5 × 132.75 pt`, positioned at `x ≈ 245`, `y ≈ 198`.
- The title slide uses a large orange-and-gray version in its lower-left region, with a gray shield/C and orange surrounding letters.
- White slide footers use a small orange-and-gray version. Dark footers use a small white version on black.
- Reuse the logo artwork at its native aspect ratio. Ordinary typed “WOCSA” does not reproduce the shield construction. If the asset is unavailable, use a clearly identified placeholder during drafting rather than inventing a substitute emblem.
- Keep the logo separate from body copy. Do not stretch it, outline all letters, apply shadows, or place it inside a new pill or badge.

### Other shapes and decoration

- **Rectangles:** the dominant diagram and comparison shape; square corners, flat fill, little or no visible border.
- **Organization charts:** compact orange rectangles, white centered labels, thin right-angle connectors, clear top-to-bottom hierarchy. Some connectors use darker orange tones.
- **Comparison columns:** colored header rectangle attached directly to a taller pale body rectangle. White gutters separate columns.
- **Circles:** tiny network nodes, round bullets, and the closing slide's orange outlined circle-arrow markers.
- **Arrows:** two thin orange right arrows enclosed in orange circles on the closing page; approximately 38–40 pt in diameter, preceding the text blocks.
- **Shadows:** not part of the main visual system. A small imported chapter-list graphic on page 4 has a soft shadow; this is a local exception.
- **Rounded rectangles:** appear inside the imported partner chart on page 6, not as the standard presentation container.
- No recurring diagonal panels, organic blobs, floating interface cards, 3D objects, glass effects, or emoji illustrations.

### Photography

- Use authentic, documentary images of the venue, participants, practice, and teachers.
- The dojo image shows actual red, blue, and green tatami, daylight, windows, and the training hall. Preserve those natural colors.
- The workshop image shows people gathered around tables with laptops in a real training room. It feels candid and contextual rather than staged or cinematic.
- Portraits are small rectangular headshots, sometimes color and sometimes grayscale. They are not circular avatars and do not have decorative frames.
- Use straight rectangular cropping, preserve proportions, and avoid artificial blur, tint overlays, rounded masks, or ornamental shadows.
- Page 7 uses one large centered photo at approximately `x = 280`, `y = 135`, `w = 477`, `h = 359`, stopping near the footer rule.
- Page 14 uses a near-full-canvas photograph with baked-in event branding near the lower corners and a faint date/time marking near the top left. Those marks belong to that image, not to the general slide master.

### Cyberjūtsu and partner artwork

- Page 8 contains a tall narrow event banner at the right edge, approximately `x = 772`, `y = 46`, `w = 184`, `h = 448`.
- The banner combines a red-orange upper area, dark navy/blue code texture, a large curved dark region, orange and white throwing silhouettes, white WOCSA lettering, and stylized “CYBER JUTSU” text. Its white lower/right areas are part of the supplied artwork.
- Page 10 uses a tall moral-code poster at the far right. It combines red/orange and black, Japanese characters, small logos, and English ethical-value labels.
- The martial-arts club emblem contains red, blue, white, and black. Preserve it as a partner mark rather than borrowing its palette for all slide content.
- Use these as discrete supplied images. Do not recreate Japanese writing, QR codes, logos, or stylized lettering with arbitrary decorative approximations.

## 7. Reusable slide layouts

### A. Orange brand opening — reference page 1

**Purpose:** establish WOCSA identity and the knowledge-sharing ethos before the event title.

- Full-bleed `#FB7023` background; no regular header/footer frame.
- Large faint centered network globe.
- Large white WOCSA shield-wordmark centered horizontally, slightly above the vertical midpoint.
- Bilingual slogan beneath the logo, starting around `y = 374`, in approximately 16 pt white Roboto.
- French text sits left of center and is right-aligned toward a thin white vertical separator at `x ≈ 481`. English text starts around `x = 508` and is left-aligned away from it.
- Separator is approximately 38 pt high and 0.5 pt wide.
- Small bold white `www.wocsa.org` at the lower right, around `x = 810`, `y = 500`.

Source slogan, quoted as printed:

> En cybersécurité aussi, le savoir n’a de valeur que si il est partagé.
>
> In Cybersecurity too, knowledge only increases in value once shared.

Retain this wording for a faithful replica. For newly edited French copy, “s'il” is the grammatical correction to the source's “si il.”

### B. Dark event title — reference page 2

- Use the near-black master and faint left globe.
- Small white introduction at approximately `(95, 239)`: “WOCSA French chapter presents :” in 24 pt.
- Main event name in approximately 54 pt white Roboto Medium, centered across the middle of the slide; source position starts near `(255, 269)`.
- Uppercase event/session subtitle beneath it, approximately 28 pt.
- Large WOCSA orange/gray logo in the lower left, roughly `(70, 373, 332, 111)`.
- Partner martial-arts club emblem at the lower right, roughly `(830, 351, 119, 134)`.
- Retain small header/footer details. Their purpose is institutional identification, not visual emphasis.

### C. Dark section divider — reference pages 3, 8, 11, 17, 19

- Near-black background, gray master frame, faint cropped globe on the left.
- Large white numbered title anchored at `x ≈ 103`, `y ≈ 229–230`.
- Use approximately 54 pt for a prominent short title; 40 pt for longer or quieter operational sections.
- Keep most of the right side empty unless there is a specific supplied banner.
- Optional white italic subtitle directly below. Page 11 uses a smaller 24 pt session line; page 8 uses a larger 40 pt quotation.
- Page 8 is the special two-line title plus tall right-side Cyberjūtsu banner variation.
- Do not add body bullets to an ordinary divider.

### D. White explanation / practical list — reference pages 4, 10, 12, 18

- White master, orange heading near `(103, 75)`, gray accent bar under the header.
- Black left-aligned body with orange round bullets.
- Usually four to six main points; page 12 combines a short introductory list, nested course details, and a separated practical-information group.
- Use 24 pt for short lists, 22 pt for longer explanations, and 18 pt only for denser material.
- Retain empty space rather than inventing a right-hand illustration.
- Optional supporting visual occupies the right side: the moral-code poster on page 10 or chapter-list graphic on page 4. Adjust text width to keep it readable.
- Hyperlinks can appear as ordinary underlined blue text or in the footer content region.

### E. White explanation plus three taxonomies — reference page 9

- Orange question heading at the top.
- Explanatory bullets on the left, approximately `x = 139–540`, with text starting at `x = 166`.
- Three narrow vertical columns on the right, approximately `x = 576`, `702`, `827`; each around 109 pt wide, with 15–16 pt gaps.
- Columns run from roughly `y = 124` to `y = 404`.
- Black header bands, white centered Calibri Light labels: “Ethical code,” “Technical Skills,” “Training.”
- First two bodies are orange `#ED7D31`; third is pale blue-lavender `#D3D9EC`.
- Small black 14 pt text, tight bullet lists, nested attack/defense items where needed.
- A website line sits in the footer area, left of the logo.

This is a dense overview pattern. Split it across slides if the new text cannot fit at a readable size.

### F. Organization chart — reference page 5

- White master and orange title.
- A compact hierarchy centered in the main area, with ample surrounding white space.
- Orange square-corner boxes with white approximately 16 pt centered Calibri labels.
- One president box at the top, a horizontal second tier, and subordinate boxes below; use thin orthogonal connectors.
- Boxes accommodate short roles plus names, often on two lines.
- The partner-chart slide on page 6 is a separate variation using imported orange, green, and blue diagrams plus a club contact block.

### G. Venue photograph — reference page 7

- White master and orange title.
- One large rectangular photograph centered below the title.
- No decorative caption box, gradient mask, border radius, or floating labels.
- Photo can approach the footer boundary but should not distort or cover the title.

### H. Three-column program — reference page 13

- White master with a long orange heading at approximately `(103, 53)`, around 29 pt.
- Small black date/location subtitle directly beneath it, approximately 18 pt.
- Three equal vertical columns at approximately `x = 102`, `381`, `659`, each about 244 pt wide; gutters about 34 pt.
- Blue `#4472C4` header bands around `y = 148–207`, with centered white day names.
- Pale blue-lavender body rectangles from approximately `y = 207` to `449`.
- Black Calibri bullets, approximately 26 pt, with natural wrapping and short practical entries.
- Equal column height and aligned top/bottom edges matter more than equal text quantity.
- Include a small “Material:” resource link in the footer content area when relevant.

### I. Full-frame documentary image — reference page 14

- Let a real workshop photograph occupy almost the entire 16:9 canvas.
- The photo visually covers the normal template; avoid forcing a large title over it.
- Reuse existing image branding only when it is actually present or supplied.
- Use sparingly as a change of pace between informational slides.

### J. Instructor profiles — reference pages 15–16

- White master, orange title.
- Page 15 uses three profile columns; page 16 uses two profiles grouped across the left and middle, leaving substantial blank space at the right.
- At the top of each profile, place a small rectangular headshot beside the person's name, discipline or role, and link/contact text.
- Headshots are roughly 65–100 pt in each dimension, depending on the source portrait.
- Use small approximately 12 pt name/contact text, with surnames often uppercase.
- Below the profile header, list credentials in black with orange bullets: teaching role, institution, discipline, rank, or relevant professional experience.
- Page 15 uses approximately 18 pt biographies; page 16 shrinks some biographies to approximately 12 pt. Prefer shorter biographies in new slides rather than adopting that smaller size by default.
- Do not enclose each person in a modern raised card or circular avatar treatment.

### K. Three-column sponsorship comparison — reference page 20

- White master; orange uppercase title.
- Three aligned columns at approximately `x = 96`, `369`, `642`, each 239 pt wide, separated by approximately 34 pt.
- Column tops at `y ≈ 140`; header height approximately 55 pt; pale body area continues to `y ≈ 475`.
- Gold, silver, bronze header fills; centered white labels including the tier amount.
- Identical pale blue-lavender bodies, black approximately 24 pt Calibri bullet text, square corners.
- The columns share height even when one has fewer benefits. Do not vertically center the shorter lists.
- Fine blue outlines around header areas are visible in the source; keep any outline subtle, around 1 pt.
- The source amounts are event data, not styling instructions. Use the new presentation's supplied amounts.

### L. Dark bilingual closing / feedback — reference page 21

- Dark master with faint left globe.
- Large white “Merci !” at the upper left and “Thank You!” to its right, approximately 54 pt, top around `y = 83`.
- A large black square QR panel on the left, approximately `(80, 195, 265, 267)`, containing white QR modules.
- Two white text blocks to the right, beginning around `x = 456`, at `y ≈ 228` and `305`, approximately 24 pt Roboto Medium.
- Each block is preceded by a thin orange outlined circle containing a right arrow, around `x = 400`.
- The source's blocks state approval and invite feedback, with a visible quality-check URL.
- For a new presentation, use only truthful approval wording and the supplied feedback destination. Generate a functional QR code from that destination; do not imitate the source's QR pattern as decorative art.

## 8. Lexical field, tone, and rhetorical style

### Core voice

Write in a **direct, practical, educational, inclusive, and institutionally credible** voice. The reference presents cybersecurity as a shared public concern and learning as something people do together. It values useful practice, disciplined progression, and ethical behavior.

The language is mostly plain English with a French association identity, some French institutional labels, and Japanese martial-arts vocabulary. Bilingual messaging is concentrated on the opening and closing, rather than duplicated on every slide.

The reference is informative and logistical rather than highly promotional. It explains the association, the method, the venue, the instructors, the program, and participation. Avoid importing exaggerated advertising claims or an ominous cybercrime tone.

### Semantic vocabulary

| Field | Source vocabulary and concepts | How to apply it |
| --- | --- | --- |
| Association and community | WOCSA, worldwide, open, nonprofit organisation, federation, French chapter, local actions, international projects, proximity network, collaboration | Emphasize collective participation and the connection between global reach and local activity |
| Shared knowledge | knowledge, shared, everyone, novice to expert, practice together, improve themselves, mutual benefit, mutual aid | Present expertise as something circulated and developed together |
| Cybersecurity | cybersecurity, digital life, ethical hacking, technical skills, attacks, defenses, detection, response | Use concrete terms appropriate to the audience; connect technical ability to responsible practice |
| Attack/defense taxonomy | spoofing, tampering, disclosure, denial, escalation; blocking, detection, isolation, deception, eviction | Use as technical categories when relevant, not as dramatic decoration |
| Martial practice | martial arts, budō, dojo, karate, judo, jujitsu, training, confrontation, code of conduct, black belt, dan | Connect disciplined physical practice to technical learning |
| Learning methods | warmup, forms, repetition, simulation, sparring, mental training, briefing, debriefing | Favor concrete learning activities over abstract claims |
| Human capability | coordination, mind and movements, reflexes, accuracy, improvisation, unfamiliar events, stressful situations | Describe capabilities developed through practice |
| Ethics | courage, sincerity, etiquette, honor, humility, self-control, mutual aid, perseverance, integrity, kindness | Make ethics part of the training model, not a separate decorative slogan |
| Event organization | session, course, participants, teachers, program, venue, material, communication plan, sponsorship, feedback | Use factual, compact operational language |

### Japanese terminology as used in the source

- **Cyberjūtsu** is used in explanatory text; **CYBERJUTSU** appears in the event title and branding. The source is inconsistent about the macron. For a new deck, use “Cyberjūtsu” consistently in prose and preserve supplied logos, URLs, and official event names verbatim.
- **Budō** appears as the martial-arts framework.
- Training terms are paired with short English glosses: **Kata (Forms)**, **Uchi-komi (Repetition)**, **Nage-komi (repetition with impact)**, **Kakari-geiko (Simulation)**, **Randori (Sparring)**, **Mokuso (Mental training)**.
- **Mikiri**, **Go No Sen**, and **Tsukuri Kuzushi Kake** occur as course labels in the example schedule. Do not invent definitions or kanji from this style reference.
- Preserve a small amount of meaningful Japanese terminology. Do not expand it into an unrelated samurai, ninja, sword, or calligraphy theme.

### Sentence patterns and information structure

- **Definition:** “[Subject] is a way to [learn/practice] inspired by [discipline].”
- **Purpose question:** “Why do we apply [method] to [field]?”
- **Action-led benefit:** “Improve…”, “Train…”, “Develop…”, “Learn…”, “Teach…”.
- **Practical program item:** duration + activity + discipline or course name.
- **Profile credential:** role + organization; relevant experience; martial rank; teaching or speaking credential.
- **Section label:** short literal noun phrase, sometimes uppercase.
- **Invitation:** concise participation information, a useful resource link, or a feedback request.

Use short factual clauses and bullet fragments. Complete sentences appear when defining the method or explaining the association. Bullets often omit final punctuation; apply a consistent convention within a slide.

**Writing examples derived from the voice, not quotations or additional claims:**

- “Practice together, from beginner to expert.”
- “Develop accurate reflexes through repetition.”
- “Connect technical skills with a shared code of conduct.”
- “Briefing · Practice · Debriefing.”

Avoid inflated language such as “revolutionary,” “ultimate,” “unleash,” or “dominate.” The martial metaphor is about disciplined learning and mutual benefit, not hostility or humiliation.

## 9. Narrative and presentation rhythm

The reference follows this progression:

**Shared values → association → local people and venue → teaching concept → reasons for the method → event format → program and real-world evidence → instructor credibility → outreach → sponsorship → thanks and feedback.**

For a new presentation, retain the relevant parts of this logic without inventing sections unsupported by the topic. A course presentation may use shared values, learning method, practice, debriefing, and resources while omitting sponsorship.

- Use dark dividers to mark meaningful changes in subject.
- Follow dividers with white explanatory slides.
- Let practical lists and simple diagrams do most of the explanatory work.
- Introduce real photographs when they establish venue, community, or experience.
- Keep the closing human and appreciative, with a clear next step if one is supplied.

The resulting visual tempo should feel like **identity → milestone → explanation → evidence → milestone**, with recurring typography and frame geometry tying the changes together.

## 10. Source irregularities: preserve identity, correct accidental defects

These details are visible in the reference but should not be interpreted as required styling:

| Source irregularity | Treatment in a new presentation |
| --- | --- |
| Overlapping dates on several dark pages, mixing US and French formats | Use one date field and one consistent format |
| Repeated section numbers: “2” for two sections and “3” for two later sections | Number sections sequentially |
| Mixed 2020/2023 copyright lines and a 2026 event | Use the supplied applicable copyright information |
| Header dates and old program dates differ from the event title | Treat all dates as content; do not infer new event dates from the template |
| Awkward English, misspellings, and inconsistent capitalization | Retain the plain voice while correcting grammar and spelling |
| Broken URLs over multiple lines | Keep links readable and functional; shorten displayed labels when appropriate |
| Links crowded into the top metadata on page 4 | Keep the header clean and put resources in the content or footer area |
| Tiny or tightly packed biographies and comparison text | Shorten or split material before shrinking type |
| Classification text partly obscured on dark slides | Use a clean, legible label only if that classification actually applies |
| A moral-code poster and chapter-list image with their own formatting | Preserve as local assets; do not copy their typography into the master |
| Approval statement on the closing page | Include only if true for the new presentation |

The source's “C2 – Usage restreint” marking is a specific document label, not an instruction to classify every future presentation. Likewise, names, credentials, contact details, sponsor amounts, dates, medical requirements, and approval claims are source content rather than elements of visual style.

## 11. Asset reference for accurate reuse

For best fidelity, provide both this guide and the original PDF to the presentation-generating LLM when possible. This Markdown describes assets but does not embed their image data. A tool that cannot read the PDF or extract its images will need the original logo, network globe, and relevant photographs supplied separately for exact reproduction.

| Asset | Where visible | Useful extraction identifier in this PDF |
| --- | --- | --- |
| Large opening network globe | Page 1 | Image object 7; 2164 × 2168 px, with transparency mask |
| White opening WOCSA wordmark | Page 1 | Image object 9; 484 × 148 px, with transparency mask |
| Colored footer WOCSA wordmark | White slide footers | Image object 23; 222 × 74 px |
| Dark-slide network globe | Pages 2, 3, 8, 11, 17, 19, 21 | Image object 31; 678 × 679 px, with transparency mask |
| White footer WOCSA wordmark | Dark slide footers | Image object 33; 172 × 58 px, with transparency mask |
| Large orange/gray WOCSA wordmark | Page 2 | Image object 37; 500 × 168 px, with transparency mask |
| Blagnac Arts Martiaux emblem | Pages 2, 6 | Image object 39; 329 × 370 px, with transparency mask |
| Dojo photograph | Page 7 | Image object 69; 1324 × 997 px |
| Cyberjūtsu vertical banner | Page 8 | Image object 79; 527 × 1280 px |
| Moral-code poster | Page 10 | Image object 94; 394 × 788 px |
| Workshop photograph | Page 14 | Image object 111; 1200 × 678 px |
| Closing circle-arrow icon | Page 21 | Image object 143; 106 × 108 px, with transparency mask |
| Closing QR artwork | Page 21 | Image object 145; 246 × 246 px; tied to the original destination |

These object numbers identify assets in this exact PDF, not persistent brand identifiers. Preserve the soft masks when extracting transparent artwork. Prefer a higher-resolution original if available; do not enlarge a small footer logo for a hero placement when a larger logo asset exists.

## 12. Fidelity checklist

- [ ] 16:9 landscape canvas with consistent proportions.
- [ ] Orange opening when an association-level introduction is appropriate.
- [ ] Near-black section dividers; white explanatory slides.
- [ ] Orange Roboto Medium titles on white; white medium-weight titles on dark.
- [ ] Small gray header metadata and thin horizontal/vertical frame rules.
- [ ] Short gray bar under the header, aligned with the main text column.
- [ ] Small WOCSA shield-wordmark in the bottom-right footer.
- [ ] Faint network globe centered on the opening and cropped to a left crescent on dark slides.
- [ ] Black body text and small orange bullets on white.
- [ ] Flat square-corner diagrams; simple orthogonal connectors and aligned columns.
- [ ] Secondary blue, lavender, and tier colors confined to relevant diagrams/comparisons.
- [ ] Real rectangular photographs and compact instructor portraits.
- [ ] Clear ethical, collaborative, training-oriented vocabulary.
- [ ] Brief Japanese training terms with source-supported explanations where useful.
- [ ] Enough empty space; no decorative filling of unused areas.
- [ ] Current presentation content supplied independently of template examples.
- [ ] Clean numbering, dates, spelling, links, and truthful approval/classification text.
- [ ] No unintended cropping, collisions, illegible body copy, or stretched logos.

## 13. Paste-ready instruction for NotebookLM or another presentation LLM

```text
Create the presentation using the WOCSA / Cyberjūtsu visual and editorial
style described in this reference. Use the task's other sources for factual
content; this style guide is not evidence for new dates, people, claims,
approval status, prices, or participation requirements.

DESIGN IDENTITY
Use a restrained nonprofit cybersecurity-training aesthetic: orange,
white, near-black, clean sans-serif typography, thin gray rules, generous
empty space, flat diagrams, and authentic documentary photography.
Convey shared knowledge, international collaboration, disciplined practice,
ethical conduct, and mutual improvement.

CANVAS AND MASTER
Use 16:9 landscape. On a 960 × 540 reference canvas, place a thin header
rule at y=42, a footer rule at y=496, and a left vertical rail at x=54.
Align normal titles near x=103, y=75. Put a short medium-gray bar, about
91 × 7, just beneath the header at x=104. Use small gray organization,
date, website, and page-number metadata at the top and a small WOCSA
shield-wordmark at the bottom right. Keep metadata subordinate.

COLORS AND TYPE
Primary orange #FB7023; white #FFFFFF; dark background #0D0D0D;
black body text #000000; secondary bullet/chart orange #ED7D31.
Use #BFBFBF rules on white and #404040 rules on dark.
Use Roboto Medium titles, Roboto Regular body, selective Roboto Bold
emphasis, and occasional medium italic subtitles. Typical source sizes:
32 pt content title, 24 pt body, 40–54 pt dark section title. Use Calibri
for source-like schedules or comparison columns. Do not shrink dense
body text merely to force it onto one slide.

SLIDE RHYTHM
Where appropriate, open with a full-orange identity page: large white
WOCSA logo over a faint centered network globe, bilingual sharing motto,
and a small white website at bottom right. Follow with a near-black
event title. Use near-black numbered dividers between major sections
and white slides for explanations. Close with a dark thank-you page.

MOTIFS AND CONTENT LAYOUTS
The recurring decoration is a subtle spherical network of fine lines
and dots. On dark slides, crop it heavily off the left edge so only a
faint crescent remains. Keep the rest of the background plain.
Use left-aligned black bullets with small orange dots on white slides.
Use simple orange organization boxes with white labels and right-angle
connectors. For schedules, use three square-corner columns with blue
#4472C4 headers, white centered labels, and pale #D3D9EC bodies.
For sponsor tiers, use gold #FFC000, gray #7F7F7F, and bronze #843C0C
headers over the same pale bodies. Keep columns aligned and equally tall.
Use rectangular venue/workshop photos and small rectangular headshots.
Treat Cyberjūtsu banners and partner logos as supplied assets with their
own internal colors; do not spread their code textures across the deck.

LANGUAGE
Write clear, direct, practical English. Use brief literal headings,
definitions, action-led learning benefits, and concrete program items.
Emphasize practice together, novice-to-expert inclusion, sharing,
coordination, reflexes, ethics, mutual aid, and mutual benefit.
Use meaningful martial-arts terms such as dojo, budō, kata, and randori
with short explanations when supported by the content. Preserve supplied
names, marks, and URLs. Bilingual French/English treatment belongs mainly
on the opening and closing, when relevant.

FIDELITY
Reuse original logo and network assets when available. Correct the
reference's accidental date overlaps, repeated section numbers, spelling
errors, and overcrowding. Use factual approval statements, valid QR codes,
and applicable classifications only. Avoid neon cyberpunk styling,
hooded-hacker imagery, invented Japanese lettering, decorative gradients,
rounded UI cards, heavy shadows, 3D graphics, and exaggerated sales copy.
Prioritize the recurring WOCSA identity over incidental imported artwork.
```
