# Pricing — designing the product around the price

Reach for this when **unit economics** scored low, or when check 4
(pricing-model fit) came back RISKY or FAIL.

The organizing claim, from Simon-Kucher's pricing survey as reported by
Ramanujam and Tacke: **72% of new products fail to meet their financial
targets.** Their diagnosis is that pricing is treated as the last decision
before launch, when it should be among the first — because a price is a
hypothesis about value, and testing it early changes what you build.

Hence the phrase worth remembering: *design the product around the price*, not
the price around the product.

---

## 1. Have the willingness-to-pay conversation before you build

If you cannot say what a segment will pay, you cannot know whether the feature
you are about to build is worth building. This is the same conversation as
`demand.md §3`, asked with numbers attached.

The failure mode is deferring it out of squeamishness, then discovering after
launch that the addressable price is a third of what the model needed.

## 2. Pick the right instrument

| Instrument | Answers | Use when | Watch for |
| --- | --- | --- | --- |
| **Van Westendorp PSM** (1976) | What range is *acceptable*? | You have no idea what the market bears | Unaided, so answers are imaginative; gives a range, never a point |
| **Gabor-Granger** | Which point *maximizes revenue*? | You know the range and need the number | Anchoring is intrinsic — the prices you show steer the answer |
| **Conjoint analysis** | How do price and features trade off? | Packaging and price must be decided together | Expensive, needs sample size and design care |

Van Westendorp asks four unaided questions — at what price is this too cheap to
trust, cheap, expensive, too expensive to consider — and reads the intersections
as a range.

Gabor-Granger reads a ladder of concrete prices and produces a demand curve.

**Practical sequence for a small company:** Van Westendorp to find the range,
Gabor-Granger to find the point inside it. Conjoint only when features and price
genuinely have to be optimized together. The first two get most of the insight
for a fraction of the effort.

Whichever you use, discount the result — see the 1.35 anchor in `demand.md §4`.

## 3. Choose the model, not just the number

The *shape* of the price now matters as much as its level. Current mix and
evidence are in `market-data.md §4`; the check is `ai-era-checks.md` check 4.

- **Per-seat.** Under structural pressure, and actively dangerous when the
  product's job is to reduce headcount: success then shrinks revenue. If you
  keep it, be able to say why in one sentence.
- **Usage.** Aligns revenue with cost, which protects margin. Costs you
  predictability, which enterprise buyers pay for. Punishes your best users.
- **Outcome.** The strongest signal of an AI-native product, and the model the
  fastest-growing agent products use. Requires a countable outcome and a real
  accuracy bar. **Never bill an escalation as a success.**
- **Hybrid.** Base subscription plus usage or outcome. Now the most common, and
  usually the right recommendation: a floor that covers COGS, upside tied to
  value delivered.

**The floor test.** At your worst-case usage, does the base fee still cover
inference and support? If not, you have written an unbounded liability into the
contract, and growth makes it worse.

## 4. Package with intent

Amit and Zott's design themes — **novelty, lock-in, complementarities,
efficiency** — are a useful checklist for what a packaging decision is *for*.
Most founders package by copying a competitor's three-tier table, which inherits
someone else's segmentation.

- What does the cheapest tier *deprive* people of, and does that deprivation
  push them to upgrade or to leave?
- What in the package creates a reason to stay next year that did not exist last
  year? (lock-in, in the design sense: switching cost the customer accepts
  because they are getting something)
- Which two features are worth more together than apart? Those belong in the
  same tier. (complementarities)

## 5. Rebuild the economics backwards

Do not build up from optimistic inputs. Use the reverse income statement from
`frameworks.md §9`: fix the profit the business must produce, derive the revenue
and volume that implies, and subtract to get allowable costs. Then ask of each
resulting number whether it is achievable.

For anything calling a model, the napkin must include **cost per successful
outcome** and **inference as a percentage of revenue**. A price set without
those is a guess about a variable cost, which is the specific way AI companies
grow into insolvency.

And do not accept `ARPU ÷ churn` as LTV. See `frameworks.md §5`.

## What "fixed" looks like

A price with a named instrument behind it, a model whose shape matches how value
is delivered, a floor that covers COGS at worst-case usage, and a napkin built
backwards from required profit rather than forwards from hope.
