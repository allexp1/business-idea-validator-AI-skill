# Market Data — dated baseline

**Baseline date: 2026-08-22; §5 and §11 extended 2026-08-27.** Every figure below
carries its own `verified:` date and a source — read the per-figure date, not the
header.

## How to use this file

1. **No figure may be quoted in an evaluation without its verified date.** Write
   "AI apps churn ~30% faster (verified 2026-08-22)" — never a bare number.
2. If `.living/KNOWLEDGE.md` exists and carries a fresher value for the same
   figure, **the sidecar wins**. Say which you used when they disagree.
3. If a figure is older than ~90 days and it is load-bearing for the verdict,
   **re-verify it by web search before quoting.** Regulatory dates: always
   re-verify, no exceptions (see the note under Regulation).
4. Figures marked **[directional]** come from vendor/analyst blogs rather than
   filings or primary research. Use them for order-of-magnitude reasoning, never
   as the sole support for a verdict.

---

## 1. Base rates — quote one in every brief

The single most honest thing a validator can do is state the prior before
stating the opinion.

- **~40% of the recent AI startup cohort died inside 24 months.** 3,800 AI
  startups shut down in 2025 (~27% of the 14,000+ launched in 2024), plus
  ~1,800 more in early 2026 (~13%). *[directional]* — verified 2026-08-22
  <https://ideaproof.io/failures/ai-startups>
- **~70% of micro-SaaS products never clear $1,000 MRR.** *[directional]* —
  verified 2026-08-22 <https://preuve.ai/blog/are-micro-saas-ideas-still-profitable-2026>
- **80–95% of thin AI wrappers failed; 60–70% generated zero revenue.**
  *[directional]* — verified 2026-08-22
  <https://preuve.ai/blog/are-ai-wrapper-startups-worth-building-2026>
- **95% of enterprise GenAI pilots return nothing.** The widely-cited MIT
  figure. Read it carefully: what fails is the unscoped pilot with no measurable
  target. Pilots blending internal specialists with outside expertise succeeded
  67% of the time vs 22% for IT-only builds. — verified 2026-08-22
  <https://pravitech.substack.com/p/the-genai-divide>
- **34% of startups fail from lack of product-market fit.** Long-standing
  general-startup figure, pre-AI, retained for non-AI subjects. *[directional]*

## 2. Retention — the number most founders never look up

- **Consumer AI apps churn ~30% faster than non-AI apps.** Annual retention
  **21.1%** for AI apps vs **30.7%** for non-AI. AI *monthly* plans retain ~36%
  worse over 12 months. — verified 2026-08-22, RevenueCat State of Subscription
  Apps 2026 <https://www.revenuecat.com/blog/growth/subscription-app-trends-benchmarks-2026>
- **Enterprise AI deployments retain far better: ~1% monthly churn (>88%
  annual).** *[directional]* — verified 2026-08-22
  <https://hub.causo.ai/guides/h1-2026-saas-retention-report>
- **Implication for the napkin:** an LTV built on a 24-month consumer
  subscription life is fiction. Start from the 21.1% annual prior and make the
  founder argue *up* from it with evidence.

## 3. Inference economics — the correction that matters most

The old "prices fall 10× every 18–24 months, so you get healthier" framing is
now wrong in the direction that kills companies.

- **Token prices collapsed:** ~80% drop between early 2025 and early 2026;
  roughly 300–1,000× since 2023. Gemini 3.1 Flash at $0.10/M input,
  $0.40/M output (April 2026) is ~99.7% below GPT-4's 2023 launch price. —
  verified 2026-08-22 <https://tokencost.app/blog/ai-price-index>,
  <https://wavect.io/blog/llm-api-costs-2026-architecture-shift/>
- **But tokens consumed per task rose ~100× for reasoning/agentic workloads.**
  Net effect: **cost per completed outcome is flat-to-rising**, not falling.
  *[directional]* — verified 2026-08-22
  <https://www.aimagicx.com/blog/llm-pricing-collapse-developer-guide-building-cheap-ai-2026>
- **Deceleration ahead:** Gartner forecasts >90% cost reduction by 2030 vs
  2025, but the 10×/yr era is over — expect 3–5×/yr through 2027, then 1.5–2×. —
  verified 2026-08-22 <https://www.hpcwire.com/aiwire/2026/03/25/gartner-forecasts-90-drop-in-llm-inference-costs-by-2030/>
- **Margin reality:** scaling AI companies average ~**25% gross margin** against
  the 60%+ investors expect. A $20/mo product can burn $18–25/mo in inference
  during heavy reasoning use. *[directional]* — verified 2026-08-22
- **The correct question** is therefore not "do costs fall?" but "does *my* cost
  per successful outcome fall faster than my price does?"

## 4. Pricing models — seats are losing

- **Seat-based AI pricing fell from 21% to 15% in a year.** Atlassian reported
  its first-ever enterprise seat-count decline in 2026, attributed to agents
  replacing seat-holding work. *[directional]* — verified 2026-08-22
- **Hybrid (base subscription + usage/outcome) is now dominant: ~41–43%**, up
  from 27%. *[directional]* — verified 2026-08-22
  <https://valueaddvc.com/blog/pricing-strategy-for-ai-products-seat-based-usage-based-or-value-based>
- **Outcome pricing works at scale:** Intercom's Fin reached $100M ARR at
  **$0.99 per resolution**; HubSpot cut its Customer Agent to **$0.50 per
  resolved conversation** in April 2026. Typical band is $0.50–$2.00 per
  resolution with no charge on escalation. — verified 2026-08-22
  <https://www.highradius.com/resources/Blog/outcome-based-pricing-ai/>
- **Penalty for getting it wrong:** companies keeping per-seat pricing for AI
  products show ~**40% lower gross margins** than usage/outcome peers.
  *[directional]* — verified 2026-08-22

## 5. Funding environment — the capital is there, it is not for you

- **$258.7B into AI in 2025 — 61% of all global VC** (up from 30% in 2022).
  Q1 2026 alone: ~$300B across ~6,000 startups. — verified 2026-08-22
  <https://www.digitalapplied.com/blog/ai-venture-funding-2026-where-242b-went-data-atlas>
- **OpenAI + Anthropic took 43% of every venture dollar deployed worldwide in
  H1 2026** ($217B). JPMorgan: "without precedent in modern venture history."
  Read this as bifurcation, not abundance. — verified 2026-08-22
- **Series A bar for AI startups: ~$3.5M ARR** (~3.5× the ~$1M bar of three
  years ago), **120%+ NRR** (top performers 140–170%), **60%+ gross margin**,
  **burn multiple <1.5×**. Median A round $13–15M, up from $8–10M. — verified
  2026-08-22 <https://valueaddvc.com/blog/what-series-a-investors-are-looking-for-in-ai-startups-in-2026>
- **Seed bar for AI startups (new):** hot AI seed rounds cluster at **~$10M on
  $40–45M post**, with investors expecting an MVP, early enterprise customers and
  **$2M+ revenue at seed**; six-figure signed contracts are described as
  table stakes. Market-wide median seed is **$4.5–5.5M**. A 2024 AI seed of $5M
  on $25M post is now considered low. — verified 2026-08-27
  <https://techcrunch.com/2026/03/31/its-not-your-imagination-ai-seed-startups-are-commanding-higher-valuations/>
- **Seed→Series A graduation: 15.4%** for the 2022 seed cohort, against **30.6%**
  for the 2018 cohort. **Use this as the reference class for any venture-path
  idea** — the outside view on "we'll raise the A" is that five in six do not.
  — verified 2026-08-27 <https://valueaddvc.com/blog/state-of-vc-funding-2026>
  *Note: this source also reports a Series A revenue bar of $1.5M+ ARR, which is
  lower than the ~$3.5M figure above. Both are 2026 and both are venture-adjacent
  self-reports; treat $1.5M as the floor for getting a meeting and ~$3.5M as the
  bar for a competitive round, and say which one you are using.*
- **CAC payback:** ~20 months median for private SaaS; LTV:CAC ≥3:1 is the
  floor, not the target. — verified 2026-08-22
  <https://www.crv.com/content/key-performance-indicators>
- **Bubble risk is a timing input, not a verdict.** The BIS 2026 annual report
  compares the AI cycle to canal/railway/dot-com manias; consensus expects a
  *selective* correction. If the plan requires a Series B in 2027–28, price that
  risk explicitly. — verified 2026-08-22

## 6. Bootstrap / indie benchmarks

- **Median profitable micro-SaaS: ~$4.2k MRR** at 64–76% margins; average
  ~$1,735 MRR at ~64% margin. Bootstrapped solo products commonly run 70–90%
  net margin. *[directional]* — verified 2026-08-22
  <https://www.mrrstory.com/blog/profitable-micro-saas-ideas-solo-founders-2026>
- **Median time to $10k MRR: 12–18 months** from first paying customer; top
  performers 6–9 months. *[directional]* — verified 2026-08-22
- **Why the niche is the advantage:** vertical, community-rooted niches stay
  open precisely because they are too small for a venture-backed team to chase.

## 7. Build cost — feasibility is no longer the binding constraint

- **Cost to build a working SaaS fell from ~$200k to ~$5k; timeline from ~6
  months to ~6 weeks.** 25% of YC W25 startups had codebases 95%+ AI-generated.
  *[directional]* — verified 2026-08-22
  <https://seedscope.ai/blog/vibe-coding-is-how-startups-are-being-built-in-2026.-here-is-what-founders-need-to-know.>
- **The hidden bill:** of ~10,000 startups that shipped AI-generated production
  apps by end-2025, **8,000+ needed partial rebuild or rescue engineering by
  mid-2026**, at $50k–$500k. *[directional]* — verified 2026-08-22
  <https://getcreatr.com/vibe-coding-technical-debt>
- **Two consequences for evaluation:** (a) "can you build it" is almost never
  the real risk — push feasibility questions onto reliability, evals, data
  access, compliance and ops; (b) the competitive floor collapsed with it — if
  you can build it in a weekend, so can everyone.

## 8. Agent-native commerce stack — the protocols now exist

No longer speculative. The layers, as of 2026-08-22:

| Layer | Protocols |
| --- | --- |
| Agent↔tool / agent↔agent comms | **MCP** (Anthropic), **A2A** |
| Merchant journey | **ACP** (OpenAI + Stripe; Shared Payment Token), **UCP** (Google + Shopify/Etsy/Wayfair/Target/Walmart, launched 2026-01-11, 20+ endorsers) |
| Payment authorization | **AP2** (Google; cryptographically signed mandates, non-repudiation) |
| Machine-to-machine settlement | **x402** (HTTP 402 revived — pay per call, receipt is the credential), **MPP** |

Verified 2026-08-22 <https://www.cipherprojects.com/blog/posts/agentic-commerce-protocols-mcp-a2a-acp-ap2-compared/>

## 9. Distribution surfaces

- **ChatGPT App Directory** launched December 2025; **Apps SDK is built on
  MCP**. Launch partners include Booking.com, Canva, Coursera, Expedia, Figma,
  Spotify, Zillow. Third-party submissions opening through 2026. Discovery is
  primitive — app *name* carries most indexation weight, long-tail search is
  unreliable, keyword stuffing risks rejection. — verified 2026-08-22
  <https://venturebeat.com/technology/openai-now-accepting-chatgpt-app-submissions-from-third-party-devs-launches>
- **Answer-engine visibility is now a primary channel.** Buyers research
  software inside ChatGPT/Perplexity/Claude; those systems synthesize from
  Reddit, Hacker News, developer forums and G2. Absence from those surfaces is
  absence from the shortlist. *[directional]* — verified 2026-08-22
- **Founder-led distribution** (owned audience, podcasts, community) is the
  consistently-cited channel that survives platform risk. *[directional]*

## 10. Regulation — always re-verify, never quote from memory

> **Standing instruction:** regulatory dates move. The official
> artificialintelligenceact.eu implementation-timeline page was itself last
> updated 2024-08-01 as of 2026-08-22 and still shows the pre-amendment Annex III
> schedule. **Web-search every regulatory date before putting it in a brief.**

Best understanding as of 2026-08-22:

- **In force now:** prohibited-practice bans (since Feb 2025); GPAI obligations
  (since Aug 2025); **Article 50 transparency duties and the AI Office's GPAI
  enforcement powers from 2026-08-02** — including document requests, model
  evaluations and fines.
- **Penalties:** up to €35M or 7% of global turnover; for SMEs and startups the
  fine is capped at the *lower* of the fixed sum or the percentage.
- **High-risk (Annex III) standalone systems — hiring, credit scoring,
  education, critical infrastructure — reportedly deferred to 2027-12-02** under
  a provisional agreement of 2026-05-07. **Verify before relying on this.**
  <https://valueaddvc.com/blog/eu-ai-act-in-2026-what-it-means-for-startups-building-in-europe>
- **Beyond the EU:** US state-level AI statutes (e.g. Texas TRAIGA), sector
  regulators, and platform-level rules on minors. Character.AI removed
  open-ended chat for under-18s by 2025-11-25 and ran a platform-wide moderation
  sweep in February 2026 — a product killed by compliance, not by competition.
- **Trigger list.** If the subject touches hiring, credit, insurance, health,
  education, biometrics, minors, or synthetic media, regulation is a *gate* on
  the verdict, not a footnote.

## 11. Service-as-software / rollup operating targets

The services capital path had no numbers until now. All figures below are
**[E] industry aggregates** from M&A advisories and managed-services benchmarks
— directionally consistent across several independent sources, none audited.
Quote them as estimates.

- **Operating benchmarks:** average MSP EBITDA margin **18.4%** (up from 14.7%
  in 2022); average gross margin **52%**; median ARR **$2.8M**; recurring revenue
  mix **74%**. Best-in-class EBITDA is 25–35%; many operate at 8–12% or at a loss.
  — verified 2026-08-27
- **Retention:** average annual client churn **8.4%**; under 5% correlates with
  co-managed IT and vCIO services. Acquirers expect **85–90%+** retention, and
  >95% logo retention is a premium factor. — verified 2026-08-27
- **Deal market:** **466 North American MSP deals in 2025, +20% YoY**, with
  private equity involved in **~69–72%**. Roughly a third of owners plan an exit
  within five years. — verified 2026-08-27
- **Multiples are strongly size-gated:** under $2M ARR **4–6x** EBITDA; $5–15M
  **7–9x**; $15–40M **8–11x**; platform-scale **11–15x**. Recurring revenue is
  valued at 6–8x against project revenue at 3.5–5x. — verified 2026-08-27
- **The most common deal-killer is client concentration above 50%** (−2 to −3x).
  Founder dependence and time-and-materials revenue above 40% are the next two.
  **Score these in check 7 and in founder fit** — they are the operational risks
  that decide whether the book is sellable at all. — verified 2026-08-27
- **What is growing vs squeezed:** growing — managed security, managed cloud,
  OT/IoT, compliance services (fastest new category), fractional security
  leadership, AI governance and deployment. Squeezed — basic helpdesk, patching,
  hourly time-and-materials, hardware resale. Labour-heavy operators face
  multiple compression. — verified 2026-08-27
- **The barbell applies here too:** execution work is deflating (a Harvard/
  Imperial study of ~2M freelance postings found writing −30.4%, software
  development −20.6%, graphic design −17.0% post-ChatGPT) while accountability
  work inflates (compliance consultants at $250–300/hr; non-retainer incident
  response at $800–1,500/hr against $175–400 for retainer holders).
  **Premium attaches to risk, deadline and accountability — not to build
  effort.** — verified 2026-08-27
