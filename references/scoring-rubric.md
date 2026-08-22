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

Total 100 points. Demand and unit economics are scored **against the selected
capital path's targets** from `capital-paths.md` — this is what stops a healthy
niche business from being punished on a venture yardstick.

| # | Component | Max | Source |
| --- | --- | --- | --- |
| 1 | AI-era score | 30 | `ai-era-checks.md`, 12 checks × 0–2 = 0–24, normalized ×1.25 |
| 2 | Demand evidence | 20 | See below |
| 3 | Moat score | 15 | `frameworks.md §4` moat assessment, 0–21, normalized ×0.714 |
| 4 | Unit economics vs path | 15 | See below |
| 5 | Founder / team fit | 10 | `frameworks.md §6` |
| 6 | Base-rate & tarpit penalty | −10 | See below |

### 1. AI-era score (30)
Sum the 12 checks (PASS 2 / RISKY 1 / FAIL 0) → 0–24 → × 1.25 → 0–30.

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
- −2 per tarpit hit from `frameworks.md §7` (max −6)
- −2 if the category's base rate in `market-data.md §1` is materially worse than
  the startup average and the plan does not address why they escape it
- −2 if the plan depends on a figure the founder asserted that public record
  contradicts (see the zero-trust step)

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
2. **AI-era total ≤9** → caps at **Weak** absent an explicit argued override.
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

## Worked example

Bootstrap-path AI tool for a niche profession. Founder is a practitioner. No
paying users yet; 24 interviews done.

| Component | Score | Note |
| --- | --- | --- |
| AI-era (12 checks: 4 PASS, 6 RISKY, 2 FAIL = 14/24) | 17.5 | Workflow ownership RISKY; agent-addressability FAIL |
| Demand evidence | 12 | 24 interviews, consistent pain, nobody asked to pay → capped at 8… but two verbal pre-commitments at a named price lift it to 12 |
| Moat (9/21) | 6.4 | Domain data compounding; no network effect |
| Unit economics vs bootstrap targets | 10 | Plausible, assumptions stated, inference cost estimated |
| Founder fit | 8 | Is the customer; can ship; distribution untested |
| Penalty | −2 | Horizontal-SMB adjacency |
| **Total** | **51.9** | → **Weak** |

Computed: **Weak**. Override applied: **Weak → Promising** — the founder has
direct access to 400 practitioners through an association they already chair,
which the moat and demand components cannot see. Printed in the brief as such.

Note what the rubric did: it forced the finding "you have no demand evidence
anyone will pay" to the surface *and* let the genuinely unusual distribution
advantage count — once, visibly, and with a stated reason.
