# The Change Spec

Produced by `/business-idea-validator spec SLUG`. A written specification of
what to change, derived from an evaluation, in a form a coding agent or a
developer can act on.

## It is a document

**The skill writes the spec. The skill does not execute it.** Nothing here
authorizes editing a project — see the Scope section of `SKILL.md`. The spec is
handed to whoever the user chooses, reviewed by a human, and run or not run at
their discretion.

Every spec opens with a header saying so:

> Generated from the evaluation of *{Subject}* dated {date}, verdict {label}
> ({score}). This is a specification, not a change. Review it before running it,
> and re-run the evaluation afterwards to see whether the scores moved.

## Gate

Same as the playbook: **Strong or Promising only.** For Weak or Flawed, decline
and say why — the uplift interventions come first, and specifying code changes
for an idea that has not earned them is expensive motion.

## What makes this different from "write me a prompt"

**The spec inherits the rubric.** Every item traces to the component score it
moves and carries its own falsification condition. A coding agent is not told
"add usage-based pricing". It is told what to build, what "done" means, which
number it moves, and what result would invalidate the plan.

Each item follows this shape:

```
### Instrument cost-per-outcome

Emit an event on every completed job carrying token spend, model, retry count
and success/failure. Surface p50 and p95 cost per *successful* outcome in an
internal view.

Moves:      Unit economics 4/15 → 10 (playbook/pricing.md §5)
Done when:  The number is visible across 200 completed jobs
Falsifies:  If p95 exceeds $0.40, the $29 per-seat price cannot survive and
            pricing must change before anything else is built
Effort:     ~2 days
```

The `Falsifies` line is what stops this being a wish list. An item that cannot
be wrong is not a test, and should be reconsidered.

## Instrumentation before features

**Most of an early spec is measurement, not building.** The uplift plan says
which component should move; without instrumentation nobody can tell whether it
did, and `compare` mode has nothing to compare. So order the spec:

1. **Instrument** — the events, counters and cohorts needed to observe the
   components under intervention. Usually 30–60% of an early spec.
2. **Change** — the actual modifications, in the dependency order from
   `playbook/index.md`: demand, then pricing, then distribution, then moats.
3. **Verify** — what to look at after two weeks and four weeks, and which
   component scores should have moved by the review point.

A founder who builds the features and skips the instrumentation gets a different
product and no more information than they started with.

## What belongs in a spec, and what does not

**Belongs:** analytics events and their properties; metering and cost
attribution; pricing and packaging mechanics; onboarding changes that serve an
activation hypothesis; the export, history and integration work that creates
switching cost; eval harnesses and accuracy measurement; anything the uplift
plan named.

**Does not belong:** general refactoring, framework migrations, design polish,
or anything whose justification is "it would be better". If an item does not
trace to a component score, it is not in this spec — it may still be worth
doing, and it belongs on a normal backlog rather than here.

**Also does not belong:** stack choices, architecture, or how to implement.
Specify the outcome and the measurement; leave the method to whoever executes.

## Format

Markdown, so it can be pasted into any agent or issue tracker. Saved to
`~/Desktop/{Slug}-Change-Spec.md` and into history next to the brief. Keep it
under roughly two pages: a spec nobody finishes reading gets implemented in
part, and the unimplemented part is usually the instrumentation.

## Closing the loop

The spec's review point should say: *re-run `/business-idea-validator compare
SLUG` after the work lands.* That is the whole design — the uplift plan predicts
which component moves, the spec instruments it, and compare mode checks whether
the prediction held. A prediction nobody checks is an opinion.
