# Execution — doing the work without wasting the attempts

Reach for this when **founder / team fit** scored low, when check 7 (reliability
and eval debt) came back RISKY or FAIL, or as the operating layer under every
other playbook. This is not a phase. It is how the other four get done.

---

## 1. Run the company as a sequence of experiments

The approach with genuine randomized-trial support (Camuffo et al.,
`frameworks.md §12`): state a theory, derive falsifiable hypotheses, test in
cheapness order, and **terminate when the evidence says terminate.** Treated
firms in those trials killed bad ideas sooner and pivoted fewer but better times.

Kerr, Nanda and Rhodes-Kropf's framing (*Journal of Economic Perspectives*,
2014) is the economic version: entrepreneurship is experimentation where the
probabilities are low, extremely skewed, and unknowable until you invest. The
value is in cheap experiments and the willingness to stop, not in picking
correctly up front.

Practically: every significant decision gets written as a hypothesis with a
falsification condition and a date, before the work starts. Afterwards is
rationalization.

## 2. If it is online, run experiments that can be trusted

For anything with meaningful traffic, Kohavi, Tang and Xu's *Trustworthy Online
Controlled Experiments* (2020) is the reference — written by the people who ran
experimentation at Microsoft, Google and LinkedIn, at organizations running tens
of thousands of experiments a year.

The parts that matter at small scale:

- **Define an Overall Evaluation Criterion up front.** One metric, agreed
  before the test. Without it, every result is reinterpretable and every test
  succeeds.
- **Do not peek.** Checking significance repeatedly until it appears is the
  most common way small teams generate false wins.
- **Watch multiple comparisons.** Twenty metrics, one "significant" at p<0.05,
  is the expected outcome of noise.
- **Discount novelty and primacy effects.** Early lifts often decay; a change
  measured over three days is measured over the wrong window.
- **Underpowered tests are worse than none**, because they produce confident
  noise. If you cannot reach the sample size, decide by judgment and say so
  rather than dressing judgment as data.

At low traffic the honest answer is usually **do not A/B test** — the sample
does not exist. Use qualitative work and decide.

## 3. Build the right thing first

Kano, Seraku, Takahashi and Tsuji (1984) classify features by how satisfaction
responds:

- **Must-be** — absent, people are furious; present, nobody notices. Auth,
  billing, not losing data. Ship these and stop; investment beyond adequate is
  wasted.
- **One-dimensional** — more is linearly better. Speed, accuracy, coverage.
  Where sustained investment pays.
- **Attractive** — absent, nobody complains; present, people are delighted.
  Where differentiation lives, and where the roadmap should spend its slack.

The recurring mistake is polishing must-be features, which cannot generate
enthusiasm however good they get. **Attractive features decay into must-be over
time** as the category catches up, which is why a roadmap needs a supply of them
rather than one good year.

## 4. Fail in the way that produces learning

Amy Edmondson's *Right Kind of Wrong* (2023) separates three failure types:
**basic** (a known process done wrong — avoidable, no learning), **complex** (a
system with many interacting causes), and **intelligent** — a considered venture
into genuinely uncharted territory, small enough to survive.

An intelligent failure is roughly: pursuing a real goal, informed by what is
already known, with the risk sized so the attempt does not end you, and
producing information you could not otherwise have obtained.

Two consequences:

- **Sizing is the discipline.** "Small enough to survive" is what separates an
  intelligent failure from a fatal one, and it is the same idea as Sarasvathy's
  affordable loss below.
- **Psychological safety is the precondition** for the learning to reach anyone.
  A team that hides failures pays the cost and forfeits the information. On a
  solo founder this reads as whether you can write down what did not work
  without flinching.

## 5. The counter-lens — effectuation

Everything above assumes goal-first reasoning. Saras Sarasvathy's *Causation and
Effectuation* (Academy of Management Review, 2001) found that expert
entrepreneurs frequently reason the other way: starting from means already in
hand — who I am, what I know, whom I know — and asking what can be made with
them. Causation rests on a logic of prediction; effectuation on a logic of
control.

This skill is causal by construction: it predicts, scores and validates. That is
a real limitation and it belongs in the file rather than hidden.

Where effectuation earns its place:

- **Affordable loss instead of expected return.** Decide what you can afford to
  lose and commit that, rather than forecasting a return you cannot know. For
  bootstrap-path founders this is usually the better frame.
- **Means-based reframing** when founder fit scored low. Instead of "acquire the
  missing capability", ask what this founder could uniquely do with what they
  already have. Often a better business is sitting next to the proposed one.
- **Stakeholder pre-commitment** builds the market rather than predicting it: a
  partner who commits early shapes what gets built and de-risks it at once.

When the evaluation and the founder disagree, effectuation is often why. Say so
rather than repeating the score louder.

## 6. Team

`frameworks.md §10` (Wasserman) gives the evidence: two or three co-founders
outperform solo founders and larger teams; equal splits correlate with worse
outcomes; the rich-versus-king trade-off should be decided deliberately rather
than discovered during a negotiation.

For a solo founder, this is a named headwind, not a verdict. The intervention is
usually one complementary co-founder or a first hire covering the missing
function — most often distribution, since technical founders under-hire it.

On sales hiring specifically, Mark Roberge's *The Sales Acceleration Formula*
(practitioner, from scaling HubSpot to $100M) is worth reading for one idea:
define the traits that predict success **in your context**, score candidates
against them explicitly, and stop hiring on impression. Traits are not
transferable between companies; the method is.

## 7. Where habits decide retention

If the product depends on repeated voluntary use, Wendy Wood's research is the
relevant base: roughly **43% of daily behaviour is habitual** — repeated in the
same context, usually while attention is elsewhere. Habits are cued by context
and built by repetition and reward, and willpower is not the mechanism.

So the design question is not "how do we motivate users" but **"what existing
context can cue this?"** A product that must create a new occasion is far harder
than one attaching to an occasion that already recurs. Consumer AI retention
benchmarks in `market-data.md §2` are what this looks like when it fails.

## What "fixed" looks like

Decisions written as falsifiable hypotheses before the work; a stated accuracy
bar with someone accountable for errors; a roadmap that knows which features are
must-be and stops polishing them; and failures sized so the company survives
them and records what they taught.
