# Changelog

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
