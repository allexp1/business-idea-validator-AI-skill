# Playbook — how to make it work

The rest of this skill answers *should this be built?* This directory answers
*what do I do on Monday?*

## Scope — read this first

**Nothing in this directory authorizes writing code or changing a project.**
These files produce written plans. If a playbook says "reprice per outcome" or
"instrument the funnel", the deliverable is a document describing that work, not
the work. Modifying a repository happens only when the user asks for it in a
separate, explicit request, and then it is a different task from this skill.

## When a playbook is produced at all

| Verdict | What the founder gets |
| --- | --- |
| **Strong / Promising** | Uplift plan in the brief, plus a full playbook on request |
| **Weak** | Uplift plan only. The interventions *are* the work; there is nothing to scale yet. |
| **Flawed** | Uplift plan plus Salvage. **No playbook.** |

This gate is mechanical. A growth plan for an idea that scored Flawed is
sycophancy wearing a lab coat, and it is worse than saying nothing because it
looks like permission.

## The router — weak component to intervention

The rubric already decomposed the verdict into six scores. That decomposition is
the diagnosis; read across from the weakest component.

| Weak component | Go to | The first question it asks |
| --- | --- | --- |
| Demand evidence | [`demand.md`](demand.md) | Has anyone been asked to pay, in a way that could have produced a no? |
| Unit economics | [`pricing.md`](pricing.md) | Was the price designed, or was it copied from a competitor and rounded? |
| Moat | [`moats.md`](moats.md) | Which powers are even *reachable* from this stage? |
| AI-era checks 1, 5, 6 | [`moats.md`](moats.md) | Do you own a complement the labs need to keep scarce? |
| AI-era check 10 (distribution) | [`distribution.md`](distribution.md) | Which single channel could carry the first thousand? |
| AI-era check 7 (reliability) | [`execution.md`](execution.md) | What accuracy does production actually demand, and who eats an error? |
| Founder / team fit | [`execution.md`](execution.md) | What can this team do with what it already has? |

Work the **lowest-scoring movable component first**, not the most interesting
one. Founders reliably prefer to work on the part they enjoy.

## Immovable components

Some scores do not move, and pretending otherwise is the fastest way to make
this directory useless:

- **Regulatory FAIL (check 11)** where the model requires doing something a
  regulator has signalled against. Compliance is a cost; a prohibition is a wall.
- **Category permanence FAIL (check 12)** for a bridge product. You cannot
  intervene your way out of being unnecessary in three years.
- **Founder fit** where the gap is domain access rather than skill. Access can
  be acquired, but in years, not in a quarter — and the honest advice is often a
  co-founder rather than a course.

When a component is immovable, the uplift plan says so and stops. It does not
invent an intervention to fill the row.

## Sequencing

Interventions are not parallel. The dependency runs:

```
demand  →  pricing  →  distribution  →  moats
              ↑                            ↑
          execution runs underneath all of it
```

- **Demand before pricing.** You cannot price a thing nobody has agreed to want.
- **Pricing before distribution.** Balfour's channel-model fit: a $30/month
  product cannot carry a sales call, and an enterprise contract cannot be sold
  through content alone. Choosing a channel before the price is choosing blind.
- **Distribution before moats.** Most powers in `moats.md` are only reachable
  once you have volume, so moat work before traction is theatre.
- **Execution is not a phase.** `execution.md` is how the other four get done
  without wasting the attempts.

## What this directory does not cover

Fundraising mechanics, incorporation, hiring process, and financial modelling
beyond the napkin. Those are real, and they are somebody else's playbook.
