# Scoring Rubric — the verdict is computed, not felt

**Why this exists.** Left to judgment, a language model drifts toward
"Promising." It is the label that offends nobody. That drift is precisely the
sycophancy this skill exists to defeat, and no amount of "be brutally honest" in
a prompt fixes it — instructions about tone do not change where a judgment
lands. So the label is a function of scores, with one audited exception.

Score every component. Show the table in the brief. The reader must be able to
recompute the verdict and disagree with a specific number rather than a vibe.

---

## Components

Each component is scored on its own natural scale, converted to a **percentage
of its own maximum**, then multiplied by its weight. Weights are
**path-dependent** — they must be, because the components do not carry equal
information across paths. Moat is the whole thesis for a venture play and nearly
irrelevant for a niche tool whose defence is that the niche is too small to
attract anyone. Founder fit is decisive for a solo founder and least decisive
where a team will be hired.

The positive components sum to **100** on every path. The penalty is separate
and subtractive, so the range is −10 to 100.

| Component | Bootstrap | Venture | Services | Own scale | Source |
| --- | --- | --- | --- | --- | --- |
| AI-era score | 25 | **30** | 15 | 0–26 (fewer if N/A) | `ai-era-checks.md` |
| Demand evidence | **30** | 25 | 20 | 0–20 | table below |
| Moat score | 5 | 20 | 20 | 0–21 | `frameworks.md §4` |
| Unit economics vs path | 20 | 15 | **30** | 0–15 | table below |
| Founder / team fit | 20 | 10 | 15 | 0–10 | `frameworks.md §6` |
| Base-rate & tarpit penalty | −10 | −10 | −10 | 0 to −10 | table below |

**The arithmetic:** `component = (raw / raw_max) × weight`.

Show the raw score, the maximum and the weighted result in the brief, so the
reader can recompute every line.

**Why the weights move.** On the bootstrap path, evidence that someone will pay
and evidence that this founder can reach them are almost the whole question —
so demand and fit carry half the total, and moat carries five points. On the
venture path, defensibility *is* the investment thesis, so AI-era and moat carry
half. On the services path, the deal economics decide everything, so unit
economics carries thirty.

### 1. AI-era score
Sum the 13 checks (PASS 2 / RISKY 1 / FAIL 0) → 0–26, then scale to the path's
weight: `(raw / 26) × weight`.

**Renormalize when checks are N/A.** A check that cannot meaningfully apply —
typically the inference-specific ones for a product that never calls a model —
is excluded from both sides:

```
score = (raw / (2 × applicable_checks)) × 30
```

So a non-AI SaaS scoring 14 across 9 applicable checks gets
`(14 / 18) × 30 = 23.3`, not `(14 / 26) × 30 = 16.2`. Without this, a perfectly good
business loses a third of the available points for the crime of not being an AI
product — which is the same category of error as judging a bootstrap idea on a
venture yardstick, and this rubric exists partly to stop that.

State the denominator in the brief: *"AI-era: 14/18 applicable (3 N/A) → 23.3"*.

**The gate scales too.** The AI-era gate is "below 42% of the applicable
maximum", which is ≤10/26 when all thirteen apply.

### 2. Demand evidence (20)
Score the *evidence*, not the story. What the founder believes is worth zero.

| Evidence | Points |
| --- | --- |
| Paying customers today, retained >3 months | 20 |
| Signed LOIs, pre-sales, or a paid pilot | 16 |
| 20+ problem interviews with consistent, unprompted pain and named budget holders | 12 |
| Strong indirect signal: search volume, active communities complaining, people hacking their own solution | 8 |
| A waitlist, survey results, or "everyone I talk to loves it" | 3 |
| Founder conviction only | 0 |

Cap at 8 if nobody has been asked to pay anything. Willingness to use is not
evidence.

### 3. Moat score (15)
Run the seven moat dimensions in `frameworks.md §4` (0–3 each, 0–21 total),
multiply by 0.714. Under 5/21 there is effectively no moat — note it in the text.

### 4. Unit economics vs path targets (15)

| Condition | Points |
| --- | --- |
| Meets or beats the path's GM, payback and LTV:CAC targets, with real numbers | 15 |
| Plausible path to targets, with stated assumptions | 10 |
| Assumptions unverified but not obviously broken | 6 |
| Math does not work at any realistic scale | 2 |
| Not computed at all | 0 |

**Never award above 6 without a named CAC source and a measured or credibly
estimated inference cost per outcome.** "Not computed" is a real 0 — the number
being absent is itself the finding.

### 5. Founder / team fit (10)
Domain expertise (0–3) + customer proximity (0–3) + ability to build or ship
(0–2) + distribution access (0–2). Prior-success trap: subtract 1 where
experience is pulling the founder toward a familiar shape that does not fit this
problem.

### 6. Base-rate & tarpit penalty (0 to −10)

**Establish the outside view first.** Before scoring this component — and before
discussing the founder's own projection — define the reference class, state its
base rate, and place this case in the distribution. The procedure and why the
order matters are in `frameworks.md §14`. One line goes in the brief next to the
score:

> *Reference class: vertical AI tools sold to regulated SMBs under $200/mo.
> Base rate to $1M ARR: roughly 1 in 12. Founder projects $4M by year two.*

Then:

- −2 per tarpit hit from `frameworks.md §7` (max −6)
- −2 if the class base rate is materially worse than the startup average and the
  plan does not address why this case escapes it
- −2 if the founder's projection exceeds the class base rate and the stated
  difference is one that is **already true of everyone in the class** — better
  product, harder work, more focus. That is not a differentiator; it is the
  inside view.
- −2 if the plan depends on a figure the founder asserted that public record
  contradicts (see the zero-trust step)

Cap the total penalty at −10.

---

## Bands

| Score | Label | Meaning |
| --- | --- | --- |
| ≥75 | **Strong** | Pursue aggressively |
| 55–74 | **Promising** | Worth exploring, with named caveats |
| 35–54 | **Weak** | Significant structural concerns |
| <35 | **Flawed** | Fundamental problems |

For OPERATING mode the same bands apply, read as strategic position rather than
go/no-go.

## Hard gates — these override the score

1. **Check 11 (regulatory) = FAIL** → caps at **Weak**. State why in the verdict paragraph.
2. **AI-era below 42% of the applicable maximum** (≤10/26 when all apply) → caps at **Weak** absent an explicit argued override.
3. **Demand evidence = 0 and nascent** → caps at **Promising**. Nothing unvalidated is Strong, however elegant.

Gates cap; they never promote.

## The override rule

Judgment gets exactly one degree of freedom.

- Claude may move the computed label **by one band, never two**.
- The move must be **printed** in the brief and in `verdict.json`:
  `Override: Weak → Promising — <reason>`
- The reason must cite something the rubric structurally cannot see: a timing
  window, a regulatory change in the founder's favour, an unfair distribution
  advantage, a named relationship.
- **"It feels better than the score" is not a reason.** Neither is founder
  enthusiasm, nor politeness.
- An unstated override is a defect. If the printed label does not match the
  computed label and no override line appears, the brief is wrong.

Overrides upward and downward are equally legitimate. Downward overrides —
"scores 58 but I am calling it Weak because the entire thesis rests on one
unverifiable claim" — are often the most valuable output the skill produces.

---

## Required companion sections

The rubric produces a number. These three keep it honest.

### Steelman — before the hard truths
The strongest *honest* case for the idea, argued properly, in a short paragraph.
Not a compliment sandwich: the actual best argument, the one a smart supporter
would make. A brief that cannot argue the other side has not understood the
idea, and its negative verdict is worth less. Being harsh to appear rigorous is
its own bias, and it is the one this skill is most likely to acquire.

### Kill criteria — falsifiable, dated, numeric
The specific evidence that ends this. Not "if it doesn't get traction."

> "If fewer than 8 of 30 interviewed practice managers name scheduling as a
> top-3 problem within 30 days, stop."
> "If CAC exceeds $180 after $1,000 of spend, the bootstrap path is closed."

Two to four of them. Each must be checkable within 90 days by the founder alone.

### What would change my mind
Two or three specific pieces of evidence that would move the verdict up a band,
and one that would move it down. This is what makes the brief useful three
months later, and it is what a founder should go and collect.

---

## The Uplift Plan

The rubric says where the idea stands. The uplift plan says **what would move
it, by how much, and what that costs** — and it falls straight out of having
component scores, because a weak component is a diagnosis with an address.

Produce one in **every brief, at every verdict.** For each component scoring
below its path's benchmark:

| Component | Now | Intervention | Ceiling | Cost | Testable in 90d |
| --- | --- | --- | --- | --- | --- |
| Demand evidence | 6 / 20 | 20 choice-based WTP interviews, Gabor-Granger ladder (`playbook/demand.md`) | 12–16 | ~2 weeks, no cash | yes |
| Unit economics | 4 / 15 | Reverse income statement, then reprice per outcome (`playbook/pricing.md`) | 10 | ~3 days | partly |
| Moat | 3 / 21 | Counter-positioning is the only power reachable at this stage (`playbook/moats.md`) | 8 | 1–2 quarters | no |

Close with the arithmetic: **"46 today. 68 if all three land. Roughly nine weeks
of work."**

Each intervention must name the playbook file that explains it. The uplift plan
is a router, not a substitute for the playbook.

### Three rules, without which this becomes a fantasy generator

**1. The ceiling is contingent, and must be labelled so.** It is what the
component scores *if the intervention succeeds*. It is not a forecast, and the
brief must not present the uplifted total as a projection. Write "if all three
land", never "will reach".

**2. Immovable components are named, not filled in.** Some scores do not move:

- a **regulatory FAIL** where the model requires what a regulator has ruled against
- a **category-permanence FAIL** for a bridge product
- **founder fit** where the gap is domain access rather than skill, which is
  measured in years

For these the row reads *immovable*, with one sentence saying why. Inventing an
intervention to avoid an empty row is the single easiest way to make this
section worthless.

**3. If the uplifted total still lands below Promising, say so in plain words.**
"Even if all of this works, it is still a Weak idea" is a legitimate and
frequently correct output. The uplift plan exists to show the distance to
viable, which sometimes means showing that the distance is too far.

### What each verdict gets

| Verdict | Uplift plan | Playbook | Salvage |
| --- | --- | --- | --- |
| **Strong / Promising** | yes | yes, on request via the `playbook` command | no |
| **Weak** | yes | **no** — the interventions *are* the work | no |
| **Flawed** | yes | **no** | **yes** |

**Salvage**, for a Flawed verdict, is the honest constructive answer: the
audience, dataset, distribution, relationship, skill or insight worth carrying
into the next idea. Most failed ideas leave something behind, and naming it is
more useful than a growth plan the founder should not follow.

This gate is mechanical. A playbook attached to a Flawed verdict is sycophancy
wearing a lab coat, and it is worse than silence because it reads as permission.

## Worked example

Bootstrap-path scheduling and invoicing tool for independent music teachers.
Solo founder who teaches piano and is active in two teacher forums. 22 problem
interviews; two teachers already paying a small fee for a manual version.

Three AI-era checks are N/A — the product never calls a model — so the AI-era
denominator is 18, not 24.

| Component | Raw | Of | % | × Weight | Score |
| --- | --- | --- | --- | --- | --- |
| AI-era | 12 | 20 | 60% | 25 | 15.0 |
| Demand evidence | 16 | 20 | 80% | 30 | 24.0 |
| Moat | 4 | 21 | 19% | 5 | 1.0 |
| Unit economics vs bootstrap targets | 10 | 15 | 67% | 20 | 13.3 |
| Founder fit | 9 | 10 | 90% | 20 | 18.0 |
| Penalty — micro-SaaS base rate unaddressed | | | | −10 | −2.0 |
| **Total** | | | | | **69.3** |

Computed: **Promising**. No override needed.

**Now run the same idea on the venture path**, changing nothing about the
business — only the yardstick:

| Component | Raw | Of | % | × Weight | Score |
| --- | --- | --- | --- | --- | --- |
| AI-era | 12 | 20 | 60% | 30 | 18.0 |
| Demand evidence | 16 | 20 | 80% | 25 | 20.0 |
| Moat | 4 | 21 | 19% | 20 | 3.8 |
| Unit economics vs venture targets | 2 | 15 | 13% | 15 | 2.0 |
| Founder fit | 9 | 10 | 90% | 10 | 9.0 |
| Penalty | | | | −10 | −2.0 |
| **Total** | | | | | **50.8** |

Computed: **Weak**.

Same business, same evidence, two honest verdicts — because they answer
different questions. At £15/month, venture scale needs roughly 19,000 paying
customers against a reachable market of a few thousand; the unit-economics
component collapses accordingly. This is the whole reason capital paths exist.
A validator that returned one number here would be wrong for one of the two
founders asking.
