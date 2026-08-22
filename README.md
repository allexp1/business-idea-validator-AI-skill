# Business Idea Validator — a Claude Skill

A brutally honest business idea validator and startup advisor. It uses
frameworks from Harvard Business School, a 12-point AI-era deep check, and a
**computed scoring rubric** to evaluate a startup idea or an operating business —
then produces a styled brief you can keep.

It exists to fight AI sycophancy. Left to its own judgment, a language model
drifts toward "Promising" — the label that offends nobody. Instructions about
tone don't fix that. **A rubric does.** The verdict here is a function of six
scored components, and the model gets exactly one band of override, which it has
to print and justify.

```
/business-idea-validator I want to build an AI assistant that helps small
businesses write better marketing emails. $29/month per seat.
```

---

## What you get

Every evaluation produces a brief — as a shareable page, a PDF, or HTML —
alongside a machine-readable `verdict.json`.

**Abridged example output** (bootstrap-path, nascent). Component weights are set
by the capital path — moat is the whole thesis for a venture play and nearly
irrelevant for a niche tool whose defence is that the niche is too small to be
worth attacking:

```
Score                                          raw    of  weight   score
  AI-era check      3 N/A (no model in product) 12    20      25    15.0
  Demand evidence   2 paying, 6 verbal commits  16    20      30    24.0
  Moat              domain data, no network      4    21       5     1.0
  Unit economics    vs bootstrap targets        10    15      20    13.3
  Founder fit       is the customer              9    10      20    18.0
  Base-rate penalty micro-SaaS prior unaddressed −            −10    −2.0
  ──────────────────────────────────────────────────────────────────────
  Total → Promising                                                  69.3

Same business scored on the venture path: 50.8 → Weak. At £15/month, venture
scale needs ~19,000 customers against a reachable few thousand.
```

...followed by a steelman, hard truths, the 12 AI-era checks, a competitor
teardown, a unit-economics napkin including cost-per-outcome, named precedents,
a two-year pre-mortem, a pre-parade, concrete pivots, **falsifiable kill
criteria**, what would change the verdict, and a dated plan.

## The 12 AI-era checks

Each scores PASS / RISKY / FAIL. Check 11 is a hard gate on the verdict.

| # | Check | Asks |
| --- | --- | --- |
| 1 | Complement asymmetry | Do you own something the labs need to stay scarce, or are you what they're commoditizing? |
| 2 | Model dependency & native-ship horizon | Will a lab ship this? What happens when your provider changes price or policy? |
| 3 | Cost-per-outcome trajectory | Token prices fall, tokens-per-task rise. Which wins, for you? |
| 4 | Pricing-model fit | Can the price absorb variable inference cost, and survive a competitor pricing per outcome? |
| 5 | Data moat compounding | Does proprietary data accumulate and actually improve the product? |
| 6 | Workflow ownership | Are you the system of record, or a tab someone closes? |
| 7 | Reliability & eval debt | What accuracy does production need, who eats an error, what does the review loop cost? |
| 8 | Agent-native addressability | MCP, ACP, UCP, AP2, x402 — which layer can an agent reach you on? |
| 9 | Non-software moat | Anything AI can't clone in a week? |
| 10 | Distribution sovereignty & answer engines | Who can switch you off, and do you exist inside ChatGPT's answer? |
| 11 | **Regulatory & liability clock** | What applies, when does it bite, who owns compliance? **Hard gate.** |
| 12 | Category permanence | A durable category in 2030, or a bridge? |

## Three capital paths

The most common way a validator gets a verdict wrong is measuring against the
wrong definition of success. A good $8k-MRR niche business scored on venture
criteria reads as a failure. So the path is chosen first, and it changes the
market floor, the success bar, the unit-economics targets and the channel advice.

| | Bootstrap / indie | Venture | Service-as-software |
| --- | --- | --- | --- |
| Question | "Can I own a profitable business?" | "Can this be a $100M company?" | "Can AI re-margin existing work?" |
| Market floor | Reachable niche | $1B+ TAM | Fragmented, many small operators |
| 24-month success | $10k MRR, profitable | ~$3.5M ARR, 120%+ NRR | Acquired EBITDA + margin lift |
| CAC payback | <6 months | <20 months | Deal-multiple math |
| Fatal failure | Never clears $1k MRR | Can't raise the next round | The acquired book churns |

## Verdict bands

`≥75 Strong · 55–74 Promising · 35–54 Weak · <35 Flawed`

Hard gates cap but never promote: a regulatory FAIL caps at Weak; an AI-era
total ≤9 caps at Weak; zero demand evidence on a nascent idea caps at Promising.

## It keeps itself current

Market facts perish. A validator quoting 2024 inference economics in 2026 gives
confidently wrong advice.

- **No market figure lives in `SKILL.md`.** Every number comes from
  `references/market-data.md`, with a source and a `verified:` date, and is
  quoted with that date.
- A **`.living/` sidecar** ([living-skills](https://github.com/allexp1/living-skills)
  spec 1.1) refreshes the perishable figures on a 21-day interval, logging every
  change with its source. Delete `.living/` and the skill still works from the
  dated baseline — it will just say so.
- **Regulatory dates are re-verified on every run**, never quoted from memory.

## Zero trust, in both directions

The skill treats every fact the user states — founding year, revenue, funding,
"we're the only one who…" — as a hypothesis to be checked against public record,
and surfaces discrepancies rather than absorbing them. Every brief carries a
**Verified Facts** footer showing what was confirmed, contradicted, or left
unverified.

It applies the same rule to itself. A skill that demands citations from you and
quotes undated numbers back has not earned the word "honest".

## Install

```bash
git clone https://github.com/allexp1/business-idea-validator-AI-skill.git
cd business-idea-validator-AI-skill
./install.sh
```

Installs into `~/.claude/skills/business-idea-validator/`, backing up any
existing copy. Restart Claude Code, then use `/business-idea-validator`, or just
describe an idea and it triggers on its own.

**Manual:**
```bash
cp -r . ~/.claude/skills/business-idea-validator
```

**As a `.skill` bundle:**
```bash
zip -r business-idea-validator.skill SKILL.md references/ scripts/ evals/ .living/
```

PDF rendering needs a Chromium-family browser (Chrome, Chromium, Edge or Brave).
Without one you still get the HTML brief.

## Usage

- `/business-idea-validator <idea>` — evaluate
- `/business-idea-validator <url>` — strategic review of an operating business
- `/business-idea-validator compare <slug>` — re-evaluate and diff against last time

Evaluation history lives in `~/.claude/business-idea-validator/history/`, so a
second run shows verdict movement, which checks flipped, and whether the change
came from the business or from the market.

## Repo layout

```
SKILL.md                      the skill — process and rubric
references/
  market-data.md              every figure, sourced and dated
  ai-era-checks.md            the 12 checks
  scoring-rubric.md           how the verdict is computed
  capital-paths.md            bootstrap / venture / service-as-software
  archetypes-2026.md          winning shapes, losing shapes, precedent library
  frameworks.md               JTBD, market validation, moats, tarpits
  interview-bank.md           the questions to actually ask
  brief-production.md         deliverables, verdict.json, compare mode
  pdf-template.html           the visual blueprint
scripts/render-brief.sh       HTML → PDF, cross-platform
evals/cases.md                6 regression cases
.living/                      self-refreshing knowledge sidecar
```

## Development

Change anything in `SKILL.md`, `ai-era-checks.md`, `scoring-rubric.md` or
`capital-paths.md`, then run the suite in `evals/cases.md`. Case 3 is the one
that matters most: it must return **different verdicts on the bootstrap and
venture paths**. If it doesn't, the capital-path branch is broken.

## License

MIT
