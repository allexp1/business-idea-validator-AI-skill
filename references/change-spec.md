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

## Two branches — pick by the binding constraint

`spec` produces whichever specification the diagnosis calls for. Same discipline
either way: every item names the component score it moves and carries a
falsification condition.

| Binding constraint | Output | Gate |
| --- | --- | --- |
| Engineering or instrumentation | **Change spec** | Strong / Promising only |
| Message, positioning or targeting | **Marketing spec** | Strong / Promising, **or** Weak / Flawed when the diagnostic has evidence |
| Absent demand | Neither | — |

## Gate

**Change spec: Strong or Promising only.** For Weak or Flawed, decline and say
why — the uplift interventions come first, and specifying code changes for an
idea that has not earned them is expensive motion.

**Marketing spec: also unlocks at Weak and Flawed, but only on evidence.**

> The no-response diagnostic in `playbook/index.md` must find that a channel was
> **actually run at volume and produced a null result**. That is the evidence.
> Where no channel has ever been worked, there is no diagnostic to run: the
> answer is `playbook/demand.md`, not a marketing spec.

**The founder cannot open this gate by asserting it.** "It's a marketing
problem" is what the founder of every failing idea says, and saying it is not
evidence. Only a worked channel with a null result is. If the diagnostic lands on
*absent demand*, no spec of either kind is produced — that is the terminate case
and it stays terminal.

**A marketing spec at Weak or Flawed is a set of falsifiable tests with stop
conditions, never a growth plan.** That distinction is the entire reason this
gate can be opened at all. If the output reads like a plan for scaling something,
it is wrong; it should read like a plan for finding out whether the thing is
worth scaling, with a defined point at which the answer is no.

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

---

## The marketing spec

Same shape as the change spec, but the items are message tests, list tests and
offer tests. Each still names the component it moves and how it could fail.

```
### Test the claim against category sophistication

Rewrite the outbound opener to lead with the mechanism rather than the
capability. Send to the same 200-contact list, changing nothing else.
Control: the current opener, same week, 100 contacts.

Moves:      Demand evidence 7/20 → 12 if reply rate clears 3%
Done when:  200 sent on the new opener, 100 on the control
Falsifies:  If both arms return under 1%, the message is not the constraint.
            Stop rewriting copy and move to the offer test.
Source:     playbook/positioning.md §3 (market sophistication)
Effort:     ~4 hours to write, 2 weeks to read
```

**Ordering, from `playbook/index.md`:** the twenty hand-picked buyers first,
because it is the highest-information single test; then message; then offer;
then channel. Never channel first.

**Every marketing spec must carry a stop condition for the whole sequence**, not
only per item — the point at which the founder concludes the constraint was
demand after all. Without it the spec becomes an infinite copy-testing loop,
which is the failure mode of every marketing plan given to someone who does not
want to hear no.
