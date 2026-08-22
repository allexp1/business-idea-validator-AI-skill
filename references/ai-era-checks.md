# AI-Era Deep Check — 12 questions every business must survive

**Version 2 (2026-08-22).** Replaces the v1 8-check list. Numbers referenced
here live in `market-data.md` with their verified dates — quote them from there,
not from this file.

## Why this list changed

The v1 list assumed a world where falling token prices help you and where
"wrapper" was a verdict. Neither held. Token prices fell ~80% in a year while
tokens-per-task rose ~100×, so cost *per outcome* is flat-to-rising. And the
wrapper evidence turned bimodal: 80–95% of thin wrappers died, yet Cursor
(~$2B ARR), Lovable ($0→$500M in ~14 months) and Harvey (~$190M ARR at an $11B
valuation) are all, technically, wrappers. "Are you a wrapper" stopped
discriminating. "Do you own something the labs need to stay expensive" still
does.

## Scoring

Score each check **PASS (2) / RISKY (1) / FAIL (0)** with a one-sentence
rationale naming specific evidence. Total is 0–24 and feeds the AI-era
component of `scoring-rubric.md`.

- **21–24** — genuinely AI-era-durable. Rare. Interrogate whether you were too generous.
- **16–20** — defensible, likely to compound. Press hard on every RISKY.
- **10–15** — survives near-term, structurally exposed. Must be elevated into the verdict.
- **0–9** — mis-shaped or mis-timed. Caps the verdict at Weak absent an explicit, argued override.

**Any FAIL on check 11 (regulatory) is a hard gate**, not a scoring input — see
that check.

---

## 1. Complement asymmetry

*Replaces v1 "wrapper risk".*

**Question:** The labs want everything adjacent to the model cheap and abundant,
because cheap complements drive model consumption. Do you own a complement they
need to keep *scarce* — or are you the thing they are commoditizing?

- **PASS** — You own something the labs structurally cannot flatten: a regulated
  market position, a proprietary workflow others must route through, physical
  operations, exclusive data rights, or a distribution relationship they don't
  have. *Harvey: privileged legal workflow plus firm relationships.*
- **RISKY** — Real product depth, but the moat is craft and speed rather than
  structure. Survivable while you out-execute; not structural. *Cursor in its
  first year — the answer became usage data and switching cost, but it was not
  guaranteed.*
- **FAIL** — Your value is the prompt, the glue, and the UI. A competent
  engineer rebuilds the core in a fortnight and the lab ships it for free.

**Tell:** if a prompt leak would meaningfully damage you, this is not a PASS.

## 2. Foundation-model dependency & native-ship horizon

*Merges v1 "12-month commoditization horizon" with supply-side risk.*

**Question:** Two clauses. (a) Will a frontier lab ship this natively within 12
months? (b) What happens to you when your provider changes price, tightens its
usage policy, rate-limits you, or deprecates the model you tuned against?

- **PASS** — Too vertical, regulated or data-dependent for a lab to prioritize
  **and** you are model-portable: an abstraction layer, evals that survive a
  swap, no single-provider commercial dependency.
- **RISKY** — Safe for 12 months, not 24; or safe from the roadmap but pinned to
  one provider with no tested migration path.
- **FAIL** — A lab has shipped, announced, or obviously wants this; or a single
  provider's TOS change ends the business.

**Tell:** ask when they last ran their evals against a second provider. "We
haven't" is a RISKY at best.

## 3. Cost-per-outcome trajectory

*Replaces v1 "cost-curve alignment", which had the sign wrong.*

**Question:** Not "are tokens getting cheaper" — they are. Does your cost per
*successful outcome* fall faster than your price does, once you count retries,
reasoning tokens, agentic loops, evals and human review?

- **PASS** — Cost per delivered outcome is falling and you capture the delta:
  fixed or outcome pricing, work that gets cheaper per unit as models improve.
- **RISKY / NEUTRAL** — Willingness-to-pay falls in step with cost. You run to
  stand still.
- **FAIL** — Consumption per task grows faster than unit price falls, or cheaper
  inference arms competitors to undercut you faster than your own costs drop.
  Structural margin compression.

**Require a number:** inference as a percentage of revenue, and cost per
successful outcome. "We haven't measured" is a FAIL until measured — that is not
harshness, it is the single most common way AI businesses discover they are
unprofitable at scale.

## 4. Pricing-model fit

*New in v2.*

**Question:** Does the pricing model absorb variable inference cost, and does it
survive a competitor who prices per outcome?

- **PASS** — Hybrid (base + usage or outcome) or outcome-priced, with a floor
  that covers COGS and a ceiling tied to value delivered. Escalations and
  failures are not billed as successes.
- **RISKY** — Flat subscription with usage caps, unenforced fair-use, or a
  metric only loosely coupled to cost.
- **FAIL** — Per-seat pricing for agentic work. You are selling a fixed price
  against an unbounded cost, in a market where seats are the unit being
  eliminated.

**Tell:** if the product's job is to reduce headcount, per-seat pricing means
success shrinks revenue. Name that out loud.

## 5. Data moat compounding

**Question:** Does proprietary data accumulate through use and measurably
improve the product in a way a competitor cannot replicate?

- **PASS** — Outcome data, correction data, or network data compounds, and new
  entrants face a genuine cold start.
- **RISKY** — Data accrues but no demonstrated quality delta from it.
- **FAIL** — Nothing proprietary; everything replicable from public sources.

**Caveat that changed:** both a16z and Sequoia now argue data alone is not
sufficient defensibility. A PASS here is only meaningful when paired with a PASS
or RISKY on check 6 — data without workflow ownership is a spreadsheet nobody
fights to keep.

## 6. Workflow ownership / system of record

*New in v2, split from check 5.*

**Question:** Are you the authoritative record for the workflow, or a tool
beside it? What does ripping you out actually cost?

- **PASS** — You are the system of record. Removal means data migration,
  retraining, and broken downstream integrations. Someone would have to justify
  it in a meeting.
- **RISKY** — Deeply used but adjacent; the record lives elsewhere.
- **FAIL** — A tab someone opens. Cancelling costs nothing but a habit.

**Test:** ask what breaks downstream on the day you are switched off. Vague
answers mean FAIL.

## 7. Reliability & eval debt

*New in v2.*

**Question:** What accuracy does production actually require, who is liable when
the model is wrong, and what does closing the demo→production gap cost per unit?

- **PASS** — A named accuracy bar, a real eval suite, a defined error budget,
  and an economically sustainable human-review loop. Liability is understood and
  priced.
- **RISKY** — It works impressively in demo; the reliability plan is "better
  models are coming."
- **FAIL** — Errors are consequential (money, health, legal, safety), the
  accuracy bar is unmeasured, and there is no review loop.

**Why this is now a top-tier check:** in 2026 the gap between a working demo and
a reliable production system in high-consequence domains *is* the moat. It is
also where the 95%-of-pilots-fail number actually comes from.

## 8. Agent-native addressability

*Upgraded from v1's speculative "agent-native buying".*

**Question:** The stack exists now. Which layer are you addressable on — comms
(MCP, A2A), merchant journey (ACP, UCP), authorization (AP2), settlement (x402,
MPP)? Can an agent discover, evaluate, provision and pay for you without a
human?

- **PASS** — API-first, MCP-exposed, machine-readable docs and pricing, and
  programmatic sign-up. An agent can complete the critical path.
- **RISKY** — API exists, but a human gate (sales call, manual approval,
  contract) sits on the critical path.
- **FAIL** — UI-only, or a mandatory human sales motion with no machine surface.

**Nuance:** FAIL is acceptable and sometimes correct for high-touch enterprise
or regulated sales. Score it FAIL, then say plainly in the rationale that the
failure is intentional and defensible.

## 9. Non-software moat

**Question:** Is there an asset AI cannot replicate — licences, physical
infrastructure, regulatory relationships, exclusive data agreements, brand trust
with real switching cost, or human network effects?

- **PASS** — One or more hard-to-copy non-software assets.
- **RISKY** — Some moat, primarily product and software.
- **FAIL** — 100% software in a world where software is cheap to clone.

## 10. Distribution sovereignty & answer-engine presence

*Upgraded from v1 "distribution sovereignty".*

**Question:** Two clauses. (a) Can the platform you depend on delist, throttle,
or compete with you? (b) When a buyer asks ChatGPT, Claude or Perplexity for a
recommendation in your category, do you appear?

- **PASS** — Owned distribution (list, community, partnerships, direct sales)
  **and** genuine presence on the surfaces answer engines synthesize from —
  Reddit, HN, developer forums, G2, comparison content.
- **RISKY** — Mixed platform dependency, or owned distribution with no
  answer-engine footprint.
- **FAIL** — Primary distribution sits inside a lab's marketplace, and you are
  invisible to answer engines. One policy change ends you and nobody can find
  you in the meantime.

**Note on the ChatGPT App Directory:** it is a real channel, but discovery there
is primitive and the platform is also your most likely competitor. Treat it as
upside, never as the plan.

## 11. Regulatory & liability clock — **hard gate**

*New in v2.*

**Question:** What regulation applies, when does it bite, and can this team
carry the compliance load?

- **PASS** — Either out of scope, or in scope with a named, dated, costed
  compliance path and someone accountable for it.
- **RISKY** — In scope, aware, no plan or budget.
- **FAIL** — In scope and unaware; or the business model depends on doing
  something a regulator has already signalled against.

**This check gates the verdict.** A FAIL here caps the brief at **Weak**
regardless of total score, and the reason must appear in the verdict paragraph.
Compliance is the one failure mode that kills a product with product-market fit.

**Trigger list:** hiring, credit, insurance, health, education, biometrics,
minors, synthetic media, financial advice, legal advice.

**Always re-verify dates by web search.** See the standing warning in
`market-data.md §10` — the official EU AI Act timeline page has itself been
stale for two years.

## 12. Category permanence

**Question:** Does this exist as a standalone category in 2030, or is it a
bridge absorbed into general-purpose AI?

- **PASS** — A durable need that persists regardless of model capability:
  regulatory compliance, physical-world interface, human-trust-dependent roles,
  liability absorption, long-horizon memory with contractual guarantees.
- **RISKY** — The need persists but the format shifts.
- **FAIL** — A bridge tool. **The tell is the pitch itself: "we'll be the layer
  that…"**

---

## Reading the pattern, not just the score

Three combinations recur often enough to name in a brief:

- **Checks 1 + 2 + 6 all FAIL** → you are a feature, and the roadmap that eats
  you is already public. This is the classic wrapper death and it is fast.
- **Check 3 FAIL with check 4 FAIL** → you will grow into insolvency. Revenue
  rises, margin inverts, and it looks like traction right up until it doesn't.
- **Checks 5 + 6 + 9 all PASS** → the 2026 compounding archetype. Say so
  clearly; these are rare and the founder should know they have one.

## Common shapes

- **"AI for X" + horizontal SMB + $20–50/mo + per-seat pricing** → the densest
  cluster of failures in the current cohort. Checks 1, 2, 4, 6 typically all FAIL.
- **Productivity agent, no data moat, distributed via a lab marketplace** →
  absorbed. Checks 1, 10, 12.
- **Vertical AI + regulated workflow + system-of-record + embedded channel** →
  the archetype that compounds. See `archetypes-2026.md`.
