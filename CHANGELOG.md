# Changelog

## v3.2.1 — 2026-08-24

A packaging release. The skill's guidance is unchanged from v3.2.0; what
changed is how a copy is installed and whether it can say what it is.

### Added — the skill states its own version

`SKILL.md` frontmatter now carries `version`. An installed skill has no
`package.json` — the installer places SKILL.md, references/, scripts/, evals/
and .living/ — so a copy under `~/.claude/skills` had no way to report which
version it was. The only version-looking string left was `.living/CHANGELOG.md`'s
"attached at skill v2.0.0", a stamp from when the sidecar was attached that has
not moved since, and it reads as the current version to anyone who goes looking.

`.living/ORIGINAL.sha256` is re-baselined to match. SKILL.md changed, so the
sidecar's integrity check would otherwise report the skill as edited by a third
party on its next run.

### Added — install with npx

`bin/install.js` and `package.json`, so the skill installs with
`npx business-idea-validator`. These landed after the v3.2.0 tag was cut, which
is why the tag and the published 3.2.0 package differ; 3.2.1 makes tag and
package agree again.

### Changed

README leads with the artifact rather than the argument.

## v3.2.0 — 2026-08-23

The marketing dimension. v3 could say distribution was broken; it could not say
why, and the gap had a name: **the skill could not distinguish "nobody wants
this" from "nobody understood what you said".** Identical symptoms, opposite
interventions.

### Added — the no-response diagnostic

Lives in `playbook/index.md` because it is a routing decision. Given a channel
worked at volume with no conversions, it separates five causes — wrong list,
wrong message, wrong offer, wrong channel, no demand — each with the test that
isolates it. The twenty hand-picked buyers come first, because if twenty ideal
buyers approached personally still say nothing, five causes become two for a
week's work.

Order is enforced deliberately: message before offer before channel. Founders
reach for the channel first because switching channels feels decisive while
rewriting a subject line feels like fiddling, and it costs them a quarter.

### Added — three playbook files

- **`positioning.md`** — Dunford's five components, and Schwartz's two models.
  The second is the one that earns its place: **market sophistication**. When a
  dozen companies make the same claim, a plain claim is not weak, it is
  structurally invisible, and no subject-line testing fixes it. This explains
  outbound silence and answer-engine absence with one mechanism.
- **`selling.md`** — the institutional sale as its own craft. Rackham's SPIN
  (35,000 calls) and the finding that in large sales closing technique does not
  predict outcome but implication questions do; Challenger (6,000 reps) and the
  inversion that ~40% of high performers are Challengers against ~7%
  Relationship Builders; plus objections, pilot design that ends in a decision,
  and the champion / budget-holder / blocker split.
- **`brand.md`** — Sharp on penetration over loyalty, double jeopardy, and
  mental availability, which is the best available explanation for answer-engine
  absence: an availability problem, not a ranking one. Binet & Field's 60/40 —
  **and their own B2B cut at 46/54**, which is the figure the skill must use for
  a B2B subject. Quoting the B2C number at a B2B company is exactly the
  borrowed-number error this skill exists to catch.

### Changed — `spec` branches, and one gate opens on evidence

`spec` now produces a **change spec** or a **marketing spec** depending on the
binding constraint. The change spec stays gated to Strong and Promising.

The marketing spec **also unlocks at Weak and Flawed — but only when the
diagnostic has evidence**: a channel actually run at volume with a null result.
Asserting "it's a marketing problem" does not open it, because that is what the
founder of every failing idea says. Where no channel has been worked, the answer
is `demand.md`. Where the diagnostic finds absent demand, no spec is produced at
all.

A marketing spec at Weak or Flawed is falsifiable tests with stop conditions,
including a stop condition for the sequence as a whole. If it reads like a growth
plan the framing has failed, and the eval suite checks for scaling language.

### Note on transfer limits

Sharp and Binet & Field study organisations with media budgets. The mechanisms
transfer to a pre-revenue company; the spend ratios do not, and `brand.md §4`
says so where a reader hits it before spending anything.

## v3.1.0 — 2026-08-23

Seven additions, and the work to keep the brief readable while absorbing them.

### Readability first, because the brief was going to get too long

- **A Decision Page**, one page and hard-capped: verdict, why now, reference
  class, biggest risk, next action, the kill criterion that matters. A reader
  who stops there can still decide. It is the page that gets forwarded.
- **A conditional body.** Sections appear only when they have something to say
  and are **omitted entirely** otherwise — no placeholders, no "N/A" headings.
  Omission is information: no manipulation flag means the triggers did not fire.
- **Length budgets** per section, and a rule for when one overflows: it belongs
  in the playbook or the spec, not the brief.
- `SKILL.md` had reached 449 lines. The output-structure detail moved into
  `brief-production.md §9` and it is back to 385 — done deliberately rather than
  discovered at the limit.

### Added

- **The outside view** (Lovallo & Kahneman, *HBR* 2003). Define the reference
  class, state its base rate, place the case in the distribution — **before** the
  founder's projection is discussed, because an inside-view number anchors
  everything after it. The line prints next to the score. This gives base-rate
  discipline a procedure instead of a decoration.
- **Why now?** A question the skill never asked. What changed that makes this
  possible now and not three years ago. "No good answer" is itself a finding.
- **Added value and complementors** (Brandenburger & Nalebuff, 1996). *What
  disappears if you disappear?* is the sharpest moat question available
  pre-traction. Complementors are the player Porter omits, which matters because
  the model labs are simultaneously the largest complementor and the likeliest
  predator of most AI businesses.
- **Runway** in the napkin, and the uplift plan now compares its total effort
  against remaining runway.
- **Check 13 — rights, data provenance and ownership.** Regulation asks whether
  you may operate; this asks whether what you operate is yours. The AI-era total
  is now out of 26.
- **A manipulation flag**, conditional rather than scored. Fires on consumer
  attention products, anything reaching minors, engagement-based revenue, or
  margin from an unenforced rule. Not moralizing — Character.AI is in the
  precedent library because that risk materialized as regulation.
- **`spec SLUG`** — a change specification a coding agent can act on. Every item
  names the component score it moves and carries a falsification condition, and
  most of an early spec is instrumentation, because otherwise nobody can tell
  whether the uplift landed. Gated like the playbook. **The skill writes it and
  does not run it.**
- **`portfolio`** — patterns across every saved evaluation: shared failure modes,
  stale briefs, untested kill criteria, concentration by path. Refuses to infer
  a trend from fewer than four evaluations.

## v3.0.0 — 2026-08-23

The prescriptive turn. v2 answered *should this be built?* and left the founder
knowing what was wrong and not what to do on Monday. v3 adds the other half
without becoming a cheerleader.

### The constraint that shapes everything

**This skill advises. It does not implement.** It writes no code, modifies no
project, and creates no files inside a user's repository. It will plan a rebuild
in prose; performing one is a separate request. A `Scope` section states this
near the top of `SKILL.md`, `allowed-tools` stays research-only, and the word
"build" is deliberately absent from the feature's naming — the output is a
**Playbook**, the command is `playbook`, so it cannot be misread as "it will
build it for me".

### Added — the Uplift Plan

Every brief, at every verdict, now ends with what would move the score. Because
the rubric decomposes a verdict into six components, a weak component is a
diagnosis with an address: intervention, ceiling if it succeeds, cost, and
whether it is testable inside 90 days, each routed to the playbook file that
explains it.

Three rules keep it from becoming a fantasy generator. Ceilings are contingent
and labelled so. Immovable components — a regulatory FAIL, a category-permanence
FAIL, a founder-fit gap that is really domain access — are named as immovable
rather than filled with an invented intervention. And if the uplifted total is
still below Promising, the brief says so plainly.

### Added — `references/playbook/`, gated by verdict

`index.md` routes each weak component to one of five areas: `demand.md`,
`pricing.md`, `distribution.md`, `moats.md`, `execution.md`. It also fixes the
dependency order — demand before pricing before distribution before moats, with
execution underneath — because choosing a channel before a price is choosing
blind.

`/business-idea-validator playbook SLUG` produces a sequenced plan, and
**declines for Weak or Flawed verdicts.** A growth plan attached to a Flawed
idea reads as permission. Flawed verdicts get **Salvage** instead: the audience,
data, relationship or insight worth carrying to the next idea.

### Added — fifteen sources, and the corrections they bring

- **Camuffo et al.** (*Management Science* 2020; 759-firm replication, *SMJ*
  2024) — randomized-trial support for the skill's whole method. Treated firms
  terminate bad ideas sooner and pivot fewer but better times. "Terminate" is
  now an explicitly supported recommendation rather than a failure of nerve.
- **Eisenmann** (*HBR* 2021, 470 founders) — six failure patterns. The
  pre-mortem now names which pattern the subject matches before writing the
  obituary, which turns invention into recognition.
- **Murphy et al.** (2005) — median hypothetical-to-actual ratio **1.35**,
  replacing an unsourced "~40%" discount the skill had been asserting. The
  sourced figure is *less* pessimistic than the invented one. The same paper is
  why the interview bank now uses a choice-based price ladder.
- **Gupta, Lehmann & Stuart; Fader & Hardie** — `ARPU ÷ churn` overestimates
  LTV and is now treated as a ceiling, capped in scoring.
- **Sarasvathy** — effectuation, carried deliberately as a *counter-lens*. This
  skill is causal by construction, and the strongest published argument that
  expert practice often runs the other way belongs inside it rather than outside.
- Plus Kohavi/Tang/Xu, Kano et al., Edmondson, Rogers, Bass, Wood, Amit & Zott,
  Kerr/Nanda/Rhodes-Kropf.

Practitioner sources in the playbook — Ellis, Vohra, Helmer, Balfour, Moore,
Roberge, Ramanujam & Tacke, Van Westendorp, Gabor-Granger — are listed in
`academic-sources.md` in their own table, labelled as practitioner, so nothing
in the playbook is dressed up as research.

## v2.1.0 — 2026-08-23

### Added

- **Discovery-Driven Planning** (McGrath & MacMillan, HBR 1995) as
  `frameworks.md §9`. The reverse income statement now runs inside the Unit
  Economics Napkin whenever the founder built their numbers forwards from
  optimistic inputs: start from the profit the business must earn, work back to
  what has to be true. Its assumption checklist is also where kill criteria
  properly come from.
- **Founder and team research** (Wasserman, *The Founder's Dilemmas*, 2012,
  n≈10,000 founders) as `frameworks.md §10`. Turns the Founder / Team Fit
  component from an impression into something with evidence behind it: two or
  three co-founders outperform solo and larger teams, equal splits correlate
  with worse outcomes, rich versus king.
- **Marketing Myopia** (Levitt, HBR 1960) as `frameworks.md §11`. Pairs with
  Jobs to Be Done and sharpens check 12: a product defined by its own mechanism
  rather than the need it serves is the classic bridge-tool tell.
- **`references/academic-sources.md`** — a full bibliography. Every published
  framework the skill uses, with a proper citation and the component it drives,
  plus citation discipline for briefs. It also states plainly **what is not
  academic**: the 12 AI-era checks are practitioner synthesis, and the scoring
  rubric's weights and bands are a calibrated judgment rather than an
  empirically validated instrument. A validator that overclaims its own
  provenance has no business auditing anyone else's.
- **The pre-mortem now has its attribution.** Klein (*HBR*, 2007), resting on
  Mitchell, Russo and Pennington's 1989 finding that prospective hindsight
  improves failure identification by about 30%. `SKILL.md` now explains that the
  past tense is the mechanism, not a stylistic choice, so it is not quietly
  swapped for a risk list.
- **Bhidé's Inc. 500 evidence** in `capital-paths.md`: ~5% had venture capital,
  the typical firm started under $30,000, 41% had no business plan. The
  bootstrap path is the normal way substantial companies begin, and is scored as
  its own thing rather than as a venture plan with less money.

## v2.0.0 — 2026-08-22

A rebuild rather than a refresh. v1 was written in April 2026; four months on,
several of its load-bearing facts had inverted and its rubric carried a
systematic bias.

### Breaking

- **The verdict is now computed, not judged.** Six weighted components produce a
  0–100 score that maps to Strong / Promising / Weak / Flawed. The model may
  override by **one band only**, and must print `Override: X → Y — reason`.
  Unstated overrides are defects. See `references/scoring-rubric.md`.
- **8 AI-era checks → 12.** Three were reframed, four are new, one is a hard
  gate. Old check IDs no longer map. See `references/ai-era-checks.md`.
- **Capital paths added.** Every evaluation now selects Bootstrap, Venture, or
  Service-as-software first, and market-size, margin, payback and channel
  targets follow from it. v1 measured everything on an implicit venture
  yardstick, which scored healthy niche businesses as "Weak".
- **New required sections:** Score table, Steelman, Pre-Parade, Kill Criteria,
  What Would Change My Mind. Briefs missing any of these are incomplete.
- PDF template is v3 and is not placeholder-compatible with v2 briefs.

### Fixed

- **The template's own instruction block was rendering as visible text on page 1
  of every brief.** A nested `-->` inside the header comment closed it early.
  Present since v1.0.0.
- **The PDF command was macOS-only with no fallback**, despite `SKILL.md`
  promising a Chromium fallback. Replaced with `scripts/render-brief.sh`
  (Chrome → Chromium → Edge → Brave, filename dedupe, readable failure).
- **Chrome 151 writes the PDF and then never exits** when given a fresh
  `--user-data-dir`. The script now uses a watchdog and treats the PDF's
  existence, not the exit code, as success.
- `argument-hint` added — the actual Claude Code frontmatter field. The existing
  `args:` block was never read by the runtime.
- `allowed-tools` added for research tools, removing permission prompts
  mid-evaluation. Deliberately excludes Write and Bash.

### Corrected facts

- **Inference economics.** v1 claimed prices fall ~10× every 18–24 months and
  that this makes AI businesses healthier. Prices fell ~80% in twelve months,
  but consumption per task rose roughly 100× with reasoning and agentic loops —
  so cost *per outcome* is flat-to-rising. The check now measures the ratio.
- **The wrapper thesis.** v1 treated "wrapper" as a verdict. The evidence is
  bimodal: most thin wrappers died, and several of the largest AI businesses are
  technically wrappers. Check 1 now tests complement asymmetry instead.
- **Precedents refreshed.** Harvey re-dated; Character.AI reclassified as a
  *regulatory* precedent rather than a consolidation one; Builder.ai, Windsurf,
  Humane and the reverse-acquihire pattern added; current compounding businesses
  added with figures.

### Added

- `references/market-data.md` — every figure with a source and a `verified:` date
- `references/capital-paths.md`, `scoring-rubric.md`, `archetypes-2026.md`,
  `interview-bank.md`, `brief-production.md`
- `.living/` sidecar (living-skills 1.1) — 21-day refresh of perishable figures,
  with a monitoring list led by regulatory dates and precedent-company states
- `verdict.json` emitted alongside every brief
- Evaluation history in `~/.claude/business-idea-validator/history/` and a
  **compare mode** that diffs a re-evaluation, separating "the business moved"
  from "the market data moved"
- Artifact publishing as the preferred deliverable, ahead of PDF
- `evals/cases.md` — six regression cases, including one that must return
  different verdicts on different capital paths
- Six AI-cost rows in the unit-economics napkin, including cost per successful
  outcome and inference as a percentage of revenue

### Changed

- `SKILL.md` is smaller (15.9KB, from 18.2KB) while covering considerably more —
  the interview bank and brief mechanics moved into references
- **No market figure appears in `SKILL.md` prose.** All figures are quoted from
  `market-data.md` with their verified dates
- Regulatory dates must be re-verified by web search on every evaluation; the
  official EU AI Act timeline page has itself been stale for two years
- `install.sh` ships `scripts/`, `evals/` and `.living/`, and backs up any
  existing install

## v1.0.0 — 2026-04-17

Initial release. Dual-mode (nascent / operating), 8 AI-era checks, mandatory
pre-mortem, zero-trust verification of user claims, automatic styled PDF brief.
