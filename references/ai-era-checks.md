# AI-Era Deep Check — 8 Questions Every 2026+ Business Must Answer

In 2026 the foundation-model makers (OpenAI, Anthropic, Google, Microsoft) are shipping features that eat adjacent software categories every quarter. API prices are dropping 10× every 18–24 months. Any business built on prompts, simple orchestration, or "LLM-glue" faces existential commoditization pressure.

Every evaluation MUST run the subject through these 8 checks. Score each as **PASS**, **RISKY**, or **FAIL** with a one-sentence rationale. If 3+ checks fail, the AI-era score is a dominant concern — elevate it in the verdict.

---

## 1. Wrapper risk

**Question:** Does the product add >20% value on top of raw LLM calls, or is it prompt-engineering plus basic glue code?

- **PASS** — Substantial product layer beyond prompts: complex workflows, deep integrations, proprietary data, industry knowledge, durable UX. A prompt leak does not destroy the business.
- **RISKY** — Meaningful product but much of the core IP lives in prompts that can be copied or reverse-engineered in a weekend.
- **FAIL** — Thin wrapper around a chat completion endpoint. A single competent engineer could rebuild the core in 2 weeks.

## 2. 12-Month commoditization horizon

**Question:** Will ChatGPT, Claude, Copilot, or Gemini ship this capability natively within 12 months?

- **PASS** — Too specialized, too regulated, too vertical, too data-dependent for foundation-model makers to prioritize.
- **RISKY** — Adjacent to native offerings; probably safe 12 months, not 24.
- **FAIL** — Foundation-model maker has already shipped it, announced it, or obviously wants to.

## 3. Cost-curve alignment

**Question:** Does the business get healthier or sicker as LLM inference costs drop 10× over the next 3 years?

- **PASS** — Cheaper inference = better margin, higher volume, lower-priced enablement of the core product. Falling costs compound.
- **RISKY / NEUTRAL** — Customer willingness to pay drops in proportion with API cost; flat outcome.
- **FAIL** — Cheaper inference enables cheaper competitors to underprice you faster than your costs fall. Margin compression structural.

## 4. Data moat compounding

**Question:** Does proprietary data accumulate with usage, making the product measurably better over time in a way competitors cannot replicate?

- **PASS** — Private training data, user-outcome data, or network-effect data compounds. New entrants face a real cold-start.
- **RISKY** — Some data but no clear compounding benefit.
- **FAIL** — No proprietary data; everything is replicable.

## 5. Agent-native buying

**Question:** In 2027–2028, AI agents will increasingly buy tools for humans. Is this product discoverable, provisionable, and usable by an autonomous agent via API/MCP?

- **PASS** — API-first, MCP-ready, machine-readable docs, no UI-gated actions on the critical path.
- **RISKY** — API exists but a human-in-the-loop step is required for key workflows.
- **FAIL** — Human-only product; requires UI interaction, manual sign-off, or phone call to proceed.

## 6. Non-software moat

**Question:** Is there a moat that AI cannot replicate — licenses, physical infrastructure, regulatory relationships, exclusive data deals, brand trust with high switching cost, network effects with real humans?

- **PASS** — One or more hard-to-copy non-software assets.
- **RISKY** — Some moat but primarily software/product.
- **FAIL** — 100% software. In a world where AI can clone software in a week, this is a terminal risk.

## 7. Distribution sovereignty

**Question:** Does distribution depend on a platform that could delist, throttle, or compete with you (GPT Store, Copilot Marketplace, Plugin directories, major IDE extensions)?

- **PASS** — Own distribution: direct email list, API integrations with non-competing infrastructure, enterprise sales, embedded partnerships.
- **RISKY** — Mixed — some platform dependency.
- **FAIL** — Primary distribution controlled by OpenAI / Microsoft / Google / Apple. One TOS change destroys the business.

## 8. Category permanence

**Question:** Will this product category exist as a standalone category in 2030, or is it a transitional bridge that gets absorbed into general-purpose AI?

- **PASS** — Durable need that persists regardless of model capability (regulatory compliance, physical-world interface, human-trust-dependent roles, long-horizon memory with SLAs).
- **RISKY** — The need exists but the format likely shifts (e.g. "AI writing assistant" → absorbed into OS-level layer).
- **FAIL** — Bridge tool that becomes unnecessary as foundation-model capability advances. "We'll be the layer that..." is the tell.

---

## Scoring guidance

- **8 PASS** — genuinely AI-era-proof. Very rare.
- **5–7 PASS** — defensible, likely to compound. Press the founder on the risky checks.
- **3–4 PASS** — survives short-term, structurally exposed. Highlight in the verdict.
- **0–2 PASS** — treat this as a fundamental red flag. Almost certainly mis-timed or mis-shaped. The "weak/flawed" rating floor.

## Common failure patterns

- **"AI for X" wrapper + SMB distribution + $20–$50 MRR** → triple tarpit. See Enso, Jasper's mid-2024 commoditization.
- **Productivity agent with no data moat + distribution via foundation-model marketplace** → Microsoft/OpenAI will absorb within 18 months.
- **Vertical AI with proprietary workflow + regulated-industry compliance + embedded channel partner** → the 2026+ archetype that compounds.

## Naming precedents (for Precedent Cases section)

Useful mental file of companies that illustrate each pattern:

- **Jasper** — horizontal AI writing, hit category commoditization when ChatGPT shipped; revenue halved 2023–2024.
- **Character.ai** — consumer chat, got absorbed into Google for talent in 2024; business-as-standalone was untenable.
- **Stability AI** — open-source foundation model provider; structural margin compression as open-weights proliferated.
- **Harvey (legal)** — narrow vertical + regulated industry + deep workflow integration; raised at $5B+ valuation in 2025.
- **Pearl (dental)** — narrow vertical + regulatory moat + proprietary image data; durable.
- **Cursor** — developer-first AI IDE; built real product atop LLMs, data moat from usage, defensible despite foundation-model pressure.
- **Humane AI Pin / Rabbit R1** — hardware-abstracted AI; obliterated by smartphone-native AI within 12 months of launch.
