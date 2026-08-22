---
last_updated: 2026-08-22
review_interval_days: 21
mode: advisory
spec: living-skills/1.1
baseline: references/market-data.md@2026-08-22
---

# Market-fact deltas since the shipped baseline

This file holds **only what has changed** since `references/market-data.md`.
Everything not contradicted here still comes from the baseline, with the
baseline's dates.

**Precedence:** a figure present here supersedes the baseline. Say which you
used when they disagree, and always quote the date.

## Deltas

*None. Baseline and overlay were written on the same day (2026-08-22).*

When a refresh finds a changed figure, add it here as:

```
### <topic> — supersedes market-data.md §<n>
- <figure>. — verified <date> — <source URL>
- Was: <previous value> (baseline 2026-08-22)
```

## Monitoring list — check every refresh

Ordered by how much damage a stale value does to a verdict.

1. **Regulatory dates.** EU AI Act Annex III / high-risk timing, Article 50
   scope, national implementations, US state AI statutes. A brief that gets a
   compliance deadline wrong is worse than no brief. Never mark these settled.
2. **Precedent company states.** Every named company in
   `references/archetypes-2026.md`. Confirm each is still where the file says.
   Companies move between the "compounding" and "deaths" tables — Character.AI
   already crossed once.
3. **Series A / funding bars.** ARR, NRR, gross-margin and burn-multiple
   thresholds move with the cycle, and they set the venture-path yardstick.
4. **Model pricing and consumption.** Both halves matter: price per token *and*
   tokens per task. The skill's cost-per-outcome check depends on the ratio, not
   on either number alone.
5. **Retention benchmarks.** Annual AI-app retention, enterprise churn. These
   set the LTV floor for consumer cases.
6. **Pricing-model mix.** Seat / usage / outcome / hybrid shares.
7. **Base rates.** AI startup shutdown counts and cohort survival.
8. **Distribution surfaces.** ChatGPT App Directory status and discovery
   mechanics; new assistant app stores; answer-engine share of software research.
9. **Agentic commerce protocols.** Which of MCP / ACP / UCP / AP2 / x402 have
   real merchant adoption, and whether any consolidated or died.

## Conflict notes

`SKILL.md` deliberately contains **no market figures**, so a KNOWLEDGE.md/SKILL.md
conflict should be rare. If one arises it will be about *method* rather than
data — surface it under the advisory rule in PROTOCOL.md rather than acting on it.
