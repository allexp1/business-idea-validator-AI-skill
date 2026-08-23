# Business Idea Validator — a Claude Skill

A brutally honest business idea validator and startup advisor. It uses
frameworks from Harvard Business School, a 13-point AI-era deep check, and a
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

...followed by a steelman, hard truths, the 13 AI-era checks, a competitor
teardown, a unit-economics napkin including cost-per-outcome, named precedents,
a two-year pre-mortem, a pre-parade, concrete pivots, **falsifiable kill
criteria**, what would change the verdict, and a dated plan.

## The 13 AI-era checks

Each scores PASS / RISKY / FAIL / N-A. Check 11 is a hard gate on the verdict.

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
| 13 | Rights & data provenance | Do you own what the business depends on, and can you prove where the data came from? |

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

## The brief opens with one page

It does a lot, so it stays readable by having a fixed spine and a conditional
body. Page one is the whole decision:

```
Decision
  VERDICT           Weak · 42.0/100
  WHY NOW           Long-context inference crossed viability in 2025;
                    the same product in 2022 cost 40x more per document.
  REFERENCE CLASS   Vertical AI tools sold to regulated SMBs under $200/mo.
                    Roughly 1 in 12 reach $1M ARR. Founder projects $4M by year two.
  BIGGEST RISK      No one has been asked to pay; all 24 interviews ended
                    in encouragement.
  NEXT ACTION       Run 20 choice-based WTP interviews within two weeks.
  STOP IF           Fewer than 8 of 30 name this a top-3 problem by 22 Sep.
```

Everything after it is for the reader who wants the reasoning. Sections appear
only when they have something to say — no manipulation flag means the triggers
did not fire, which is itself information — and every section has a length
budget. When one wants more room, it belongs in the playbook or the spec.

The reference class line is deliberately placed *before* any founder projection.
Lovallo and Kahneman's finding is that an inside-view number anchors everything
after it, so the outside view has to come first or it does not work.

## It also says how to make it work

The verdict is only half of it. Because the score decomposes into six
components, a weak component is a diagnosis with an address — so every brief
ends with an **uplift plan**: what would move each weak score, by how much, what
it costs, and whether it is testable inside 90 days.

```
Component          Now      Intervention                         Ceiling   Cost
Demand evidence    6/20     20 choice-based WTP interviews        12–16    ~2 weeks
Unit economics     4/15     Reverse income statement, reprice        10    ~3 days
Moat               3/21     Counter-positioning (only power           8    1–2 quarters
                            reachable at this stage)

46 today. 68 if all three land. Roughly nine weeks.
```

Ceilings are contingent and labelled as such, immovable components are named
rather than filled in, and if the uplifted total is still below Promising the
brief says so.

`/business-idea-validator spec SLUG` goes one step further: a **change spec** a
coding agent can act on, where every item traces to the component score it moves
and carries a falsification condition. Most of an early spec is instrumentation
rather than features, because without it nobody can tell whether the uplift
landed. The skill writes the spec; it does not run it.

`/business-idea-validator portfolio` reports across every saved evaluation —
shared failure modes, stale briefs, kill criteria nobody ever checked.

`references/playbook/` holds the interventions themselves — demand, pricing,
distribution, moats, execution — and `/business-idea-validator playbook SLUG`
turns them into a sequenced plan. **That command is gated:** a Weak or Flawed
verdict does not get one, because a growth plan for an idea that scored Flawed
reads as permission. Flawed verdicts get **Salvage** instead: what is worth
carrying to the next idea.

## It advises. It does not build.

The skill writes documents. It does not write code, modify projects, or touch
files in your repositories. It will plan a rebuild in detail; performing one is
a separate request you make explicitly. `allowed-tools` is research-only for
exactly this reason.

## Where the frameworks come from

Full citations live in [`references/academic-sources.md`](references/academic-sources.md),
along with an explicit list of what is **not** academic.

| Framework | Source |
| --- | --- |
| Jobs to Be Done | Christensen, *The Innovator's Dilemma* (1997); *Competing Against Luck* (2016) |
| Five Forces | Porter, *Harvard Business Review*, 1979; reaffirmed 2008 |
| Discovery-Driven Planning | McGrath & MacMillan, *Harvard Business Review*, July–August 1995 |
| Founder and team research | Wasserman, *The Founder's Dilemmas* (2012), n≈10,000 founders |
| Marketing Myopia | Levitt, *Harvard Business Review*, July–August 1960 |
| The pre-mortem | Klein, *HBR* 2007, on Mitchell, Russo & Pennington's prospective-hindsight finding (1989) |
| Bootstrapping evidence | Bhidé, *The Origin and Evolution of New Businesses* (2000) |
| Does the method work | Camuffo et al., *Management Science* 2020; replicated across 759 firms, *SMJ* 2024 |
| Failure patterns | Eisenmann, *HBR* 2021 — six patterns from a 470-founder survey |
| Discounting stated intent | Murphy et al. (2005) — median hypothetical:actual ratio 1.35 |
| Customer lifetime value | Gupta, Lehmann & Stuart (2004); Fader & Hardie (2005) |
| Effectuation, as counter-lens | Sarasvathy, *AMR* 2001 |
| Online experimentation | Kohavi, Tang & Xu (2020) |
| Feature prioritization | Kano et al. (1984) |
| Intelligent failure | Edmondson, *Right Kind of Wrong* (2023) |
| Diffusion | Rogers (1962); Bass, *Management Science* (1969) |
| Habit and retention | Wood (2019) |
| Inside vs outside view | Lovallo & Kahneman, *HBR* 2003 — reference-class forecasting |
| Added value, complementors | Brandenburger & Nalebuff, *Co-opetition* (1996) |

The playbook also leans on practitioner sources — Ellis's 40% test, Helmer's
7 Powers, Balfour's four fits, Moore, Roberge — each labelled as practitioner in
the bibliography rather than dressed up as research. The 13 AI-era checks, the
scoring rubric and its weights, and the capital paths are practitioner synthesis
too. The bibliography says so in as many
words. A validator that overclaims its own provenance has no business auditing
anyone else's.

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
  academic-sources.md         full citations, and what is not academic
  playbook/                   how to make it work, indexed by weak component
    index.md                  the router, the gate, and the dependency order
    demand.md                 PMF measurement, WTP elicitation
    pricing.md                price-before-product, instruments, packaging
    distribution.md           four fits, growth loops, diffusion
    moats.md                  7 Powers, and which are reachable at this stage
    execution.md              experimentation, intelligent failure, prioritization
  change-spec.md              the spec command: what to change, and how it is measured
  portfolio.md                the portfolio command: patterns across evaluations
  ai-era-checks.md            the 13 checks
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
