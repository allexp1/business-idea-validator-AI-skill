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
| Message not landing | [`positioning.md`](positioning.md) | Is the claim invisible because the category has heard it eleven times? |
| Institutional / face-to-face sale | [`selling.md`](selling.md) | Has the buyer said out loud what the problem costs them? |
| Nobody can find you | [`brand.md`](brand.md) | Are you mentally available when the buying question is asked? |
| AI-era check 7 (reliability) | [`execution.md`](execution.md) | What accuracy does production actually demand, and who eats an error? |
| Founder / team fit | [`execution.md`](execution.md) | What can this team do with what it already has? |

Work the **lowest-scoring movable component first**, not the most interesting
one. Founders reliably prefer to work on the part they enjoy.

## The no-response diagnostic — run this before anything else

**The single most common misreading in early-stage work is treating "nobody
replied" as "nobody wants it".** They produce identical symptoms and opposite
interventions: one says stop, the other says change six words and try again.

Run this whenever a channel has been worked at real volume and produced no
conversions. Five candidate causes, each with a test that distinguishes it:

| Cause | The test that isolates it | Then go to |
| --- | --- | --- |
| **Wrong list** | Hand-pick 20 perfect-fit buyers. Contact each personally, by name. | [`demand.md`](demand.md) |
| **Wrong message** | Same list. Change only the subject and first line. | [`positioning.md`](positioning.md) |
| **Wrong offer** | Same list, same message, different shape: done-for-you, paid pilot, audit. | [`pricing.md`](pricing.md) |
| **Wrong channel** | Find where these buyers already gather. Go there instead. | [`distribution.md`](distribution.md) |
| **No demand** | Everything above tried, all null. | **Terminate.** See `frameworks.md §12`. |

### Start with the twenty

**Hand-pick twenty perfect-fit buyers and contact them personally.** This is the
highest-information single test available, and it should almost always be first.

If twenty ideal buyers, approached by a human who knows their business, still
produce silence, it was never the list — and five candidate causes have become
two for a week of work. If they respond, the list or the automation was the
problem and the product may be fine.

### Order matters, and it is not the order founders choose

Message is cheaper to change than offer; offer is cheaper than channel; channel
is cheaper than pivoting the product. **Founders reliably reach for the channel
first**, because switching channels feels like decisive action while rewriting a
subject line feels like fiddling. It is the wrong order and it costs a quarter.

### Reading a crowded category

Before concluding the message is merely weak, check the market's **sophistication
level** (`positioning.md §3`). In a category where a dozen companies make the
same claim, a plain claim is not weak — it is structurally invisible, and no
amount of subject-line testing will fix it. That is a mechanism-or-identity
problem, and it is diagnosable in an afternoon by reading five competitors'
homepages and noticing they say the same sentence.

### What the diagnostic is not

It is not permission. **"It's a marketing problem" is what the founder of every
failing idea says**, and the diagnostic only carries weight when a channel was
genuinely run at volume and produced a null result. Where no channel has ever
been worked, there is no diagnostic to run: the answer is `demand.md`, and the
work is finding out whether anyone wants this at all.

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
            positioning
                 ↓
demand  →  pricing  →  distribution  →  moats
              ↑             ↑              ↑
          execution runs underneath all of it
                     selling sits inside distribution
                     for institutional buyers
```

- **Message before channel.** A channel cannot rescue a claim the buyer does not
  understand, and swapping channels is the expensive way to discover that. Run
  the diagnostic above first.
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
