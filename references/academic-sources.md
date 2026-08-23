# Academic Sources

Every framework in this skill that comes from published research, with a full
citation and the component it drives. Also, at the bottom, an honest list of
**what is not academic** — because a validator that overclaims its own
provenance has no business auditing anyone else's.

Cite these by name in briefs where they carry the argument. "Porter's five
forces suggest…" is worth more to a reader than an unattributed assertion, and
it lets them go and check.

---

## Jobs to Be Done — Christensen

> Christensen, Clayton M. *The Innovator's Dilemma: When New Technologies Cause
> Great Firms to Fail.* Harvard Business Review Press, 1997.
>
> Christensen, Clayton M., Taddy Hall, Karen Dillon, and David S. Duncan.
> *Competing Against Luck: The Story of Innovation and Customer Choice.*
> Harper Business, 2016.

Clayton Christensen was a professor at Harvard Business School.

**Drives:** `frameworks.md §1`, Phase 2 step 1, and the demand-evidence
component of the rubric. The disruption lens from *The Innovator's Dilemma* also
informs check 2 (native-ship horizon): a lab shipping a cheaper, worse-but-good-
enough version natively is disruption arriving from above rather than below.

---

## Five Forces — Porter

> Porter, Michael E. "How Competitive Forces Shape Strategy." *Harvard Business
> Review* 57, no. 2 (March–April 1979): 137–145.
>
> Porter, Michael E. "The Five Competitive Forces That Shape Strategy."
> *Harvard Business Review* 86, no. 1 (January 2008). Porter's own reaffirmation
> and extension, with material on applying the analysis.

Michael Porter is a professor at Harvard Business School; the 1979 article was
written while he was a young associate professor there.

**Drives:** `frameworks.md §4`, the Competitor Teardown, and the moat component.

---

## Discovery-Driven Planning — McGrath & MacMillan

> McGrath, Rita Gunther, and Ian C. MacMillan. "Discovery-Driven Planning."
> *Harvard Business Review*, July–August 1995.

Rita Gunther McGrath is at Columbia Business School; Ian C. MacMillan is at the
Wharton School. **Not Harvard** — do not group them under a Harvard claim.

**Drives:** `frameworks.md §9`. The reverse income statement is used inside the
Unit Economics Napkin whenever the founder's numbers were built forwards from
optimistic inputs. The assumption checklist is the source of kill criteria.

---

## Founder and Team Research — Wasserman

> Wasserman, Noam. "The Founder's Dilemma." *Harvard Business Review*, February 2008.
>
> Wasserman, Noam. *The Founder's Dilemmas: Anticipating and Avoiding the
> Pitfalls That Can Sink a Startup.* Princeton University Press, 2012.
> Based on roughly 10,000 founders and 3,600 startups.

Noam Wasserman conducted this research as a professor at Harvard Business School.

**Drives:** `frameworks.md §10` and the founder/team fit component.

---

## Marketing Myopia — Levitt

> Levitt, Theodore. "Marketing Myopia." *Harvard Business Review*, July–August 1960.

Theodore Levitt was a professor at Harvard Business School and later editor of
*Harvard Business Review*.

**Drives:** `frameworks.md §11`, paired with Jobs to Be Done, and check 12
(category permanence).

---

## The Pre-Mortem — Klein, on Mitchell, Russo & Pennington

> Klein, Gary. "Performing a Project Premortem." *Harvard Business Review* 85
> (September 2007): 18–19.
>
> Mitchell, Deborah J., J. Edward Russo, and Nancy Pennington. "Back to the
> Future: Temporal Perspective in the Explanation of Events." *Journal of
> Behavioral Decision Making*, 1989.

Klein's technique rests on the Mitchell, Russo and Pennington finding that
**prospective hindsight — imagining an event has already happened — increases
the ability to correctly identify reasons for an outcome by about 30%** compared
with asking "what could go wrong?". Mitchell was at Wharton, Russo at Cornell,
Pennington at Colorado.

**Drives:** the mandatory Pre-Mortem section. This is *why* the brief writes the
obituary in the past tense rather than listing risks: the grammar is the
mechanism, and swapping it for a risk list gives up the documented effect.

---

## Bootstrapping Evidence — Bhidé

> Bhidé, Amar V. *The Origin and Evolution of New Businesses.* Oxford University
> Press, 2000.

Amar Bhidé conducted this work as a professor at Harvard Business School. His
study of Inc. 500 companies found roughly 5% had venture capital, the typical
firm started with under $30,000, 41% began with no business plan, and 6% claimed
a unique product or service.

**Drives:** `capital-paths.md`. This is the evidence base for treating bootstrap
as a first-class path rather than a venture plan with less money.

---

## Market Validation Method

> Harvard Business School Online, entrepreneurship and market-validation course
> materials.

**Drives:** `frameworks.md §2`, the five-step validation sequence and the problem
hypothesis statement template.

---

# What is NOT academic

Stated plainly so nobody mistakes the provenance. These parts of the skill are
practitioner synthesis, and they are the parts most likely to be wrong.

- **The 12 AI-era checks** (`ai-era-checks.md`) are an original synthesis from
  the market evidence in `market-data.md`. No peer review, and several rest on
  vendor and analyst reporting explicitly marked *[directional]*. They are the
  most perishable content in the repo, which is why the `.living` sidecar exists.
- **The scoring rubric, its weights and its bands** (`scoring-rubric.md`) are a
  judgment calibrated against the cases in `evals/cases.md`. They are **not
  empirically validated**. The weights were chosen because they produce sensible
  relative outcomes across the eval set, not because a study says 30 points of
  AI-era risk is the correct figure. Treat the score as a consistent instrument
  rather than a measurement.
- **The three capital paths** (`capital-paths.md`) are a practical taxonomy.
  Bhidé supports the claim that the bootstrap path is common and viable; the
  specific thresholds are drawn from current market benchmarks, not research.
- **The tarpit list** (`frameworks.md §7`) is startup community lore, largely
  from accelerator writing. Useful as a prior, not as evidence.
- **The archetypes and precedents** (`archetypes-2026.md`) are journalism and
  company disclosures, re-verified on a schedule.

## Citation discipline in briefs

- Name the source when a framework carries the argument, not on every sentence.
- Never attribute a conclusion to a scholar who did not reach it. Porter's forces
  can structure an analysis of a market he never studied; that makes the *method*
  his and the conclusion yours. Say so that way.
- Do not cite a source in this file to lend weight to a claim it does not support.
  The 30% figure belongs to prospective hindsight, not to the accuracy of any
  particular pre-mortem.
- Market figures come from `market-data.md` with their verified dates. Those are
  not academic sources and must not be presented as if they were.
