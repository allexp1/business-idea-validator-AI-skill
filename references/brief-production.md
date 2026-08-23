# Brief Production — deliverables, files, history

Every evaluation produces a **brief** plus a **`verdict.json`**. The chat reply
is a one-line confirmation; the brief is the artifact the founder re-reads,
forwards and acts on.

Skip production only when the user says "no PDF" / "just talk", or when the turn
is a follow-up question about an evaluation already produced.

---

## 1. Section order

Same order in every format. Names flex by mode (see the terminology map in
SKILL.md).

0. **Decision Page** — one page, hard. The spine; see §9.
1. Cover — subject, mode, capital path, why-now line, date
2. Stat row — 4 tiles (required for OPERATING, optional for NASCENT)
3. **Score table** — six components with raw / max / weight / weighted score, the total, the computed label, any override line, and the **reference-class line** beneath it
4. Verdict — 2–3 sentences
5. **Steelman** — the strongest honest case *for*
6. What's Working / Current Moats — 4 cards
7. Hard Truths / What's Eroding — 5–7 cards
8. AI-Era Deep Check — all 13, PASS / RISKY / FAIL / N/A
9. *Rights & data provenance* — **conditional**, when check 13 is RISKY or FAIL
10. Competitor Teardown — 3–5 named, with threat level; plus *Complementors* when any matter
11. Unit Economics Napkin — including inference cost, cost per outcome, and runway
12. Precedent Cases — **conditional**, when one was actually found
13. *Tarpit callout* — **conditional**, 2+ hits
14. *Manipulation flag* — **conditional**, when a trigger fires
15. **Pre-Mortem** — the obituary, in the shape of its Eisenmann pattern
16. **Pre-Parade** — what must be true for the 10× outcome
17. What You'd Do Instead / Strategic Options — 2–3, mapped to archetypes, plus "What NOT to do"
18. **Kill Criteria** — 2–4 falsifiable, dated, numeric
19. **Uplift Plan** — every weak component: intervention, ceiling, cost, testable in 90d
20. *Salvage* — **conditional**, Flawed verdicts only
21. **What Would Change My Mind**
22. 7-Day Validation Plan / 90-Day Strategic Plan
23. *Since Last Time* — **conditional**, when prior history exists
24. One-Sentence Summary
25. Verified Facts footer — 3–6 key facts with sources
26. Sources — ≥3 hyperlinked

Sections marked *conditional* are **omitted entirely** when they do not apply.
Never leave a placeholder or an "N/A" heading.

## 2. Deliverable ladder

Produce the **first** option available, then always write `verdict.json`.

### a. Artifact (preferred when the tool is available)
Publish the filled HTML as an Artifact. Gives a shareable link, needs no local
browser, renders anywhere. Private by default. Pass a favicon and a short
`description`; title it `<Subject> <Validation|Strategy>`.

Also save the HTML locally so the PDF path stays available.

### b. PDF via script
```bash
scripts/render-brief.sh --in <brief.html> --out <Brief.pdf> --open
```
Detects Chrome → Chromium → Edge → Brave, dedupes the filename, works on macOS
and Linux. Never paste a raw headless-browser command into the chat — the script
exists so the command is maintained in one place.

### c. HTML fallback
If no browser is found the script exits non-zero with a readable message. Keep
the HTML, tell the user where it is and what to install.

## 3. Filling the template

`references/pdf-template.html` is the visual blueprint. Keep the CSS block
untouched; replace every `{{PLACEHOLDER}}`. Remove optional sections entirely
rather than leaving empty placeholders.

**Verdict accent colours** — set `--accent` / `--accent-soft` in `:root`:

| Label | accent | accent-soft |
| --- | --- | --- |
| Strong | `#1c7a44` | `#e8f5ee` |
| Promising | `#1f4fd6` | `#eef2ff` |
| Weak | `#7a2fd6` | `#f4eefe` |
| Flawed | `#b23a1f` | `#fbece8` |

**Depth targets:** 4 What's Working · 5–7 Hard Truths · all 13 AI-era checks ·
3–5 competitors · 2–3 precedents · 2–3 options · 2–4 kill criteria · 5–7 plan steps.

**Voice:** sharp, direct, evidence-cited. Named companies, real numbers, dates
on every figure. No corporate softening.

## 4. Filenames and locations

- Working HTML: `~/Desktop/<slug>-<validation|strategy>.html`
- Brief: `~/Desktop/<Slug>-<Validation|Strategy>.pdf` — PascalCase slug, e.g. `Enso-Bot-Validation.pdf`
- Collision: the script appends `-2`, `-3`
- **History (canonical):** `~/.claude/business-idea-validator/history/<slug>/<YYYY-MM-DD>.{json,pdf,html}`

History lives under `$HOME`, not in the skill directory, so it survives
reinstalls and skill updates. Create the directory if absent.

## 5. `verdict.json`

Written next to the brief **and** into history. This is what makes an evaluation
comparable to its own past.

```json
{
  "schema": "biv/2",
  "subject": "Acme Scheduling",
  "slug": "acme-scheduling",
  "subject_url": "https://acme.example",
  "evaluated_at": "2026-08-22",
  "mode": "nascent",
  "capital_path": "bootstrap",
  "verdict": {
    "computed_label": "Weak",
    "computed_score": 51.9,
    "label": "Promising",
    "override_reason": "Founder chairs the 400-member practitioner association — distribution advantage the rubric cannot see"
  },
  "components": {
    "ai_era": 17.5, "demand_evidence": 12, "moat": 6.4,
    "unit_economics": 10, "founder_fit": 8, "penalty": -2
  },
  "ai_era_checks": [
    {"id": 1, "name": "Complement asymmetry", "status": "RISKY", "rationale": "..."}
  ],
  "moat_detail": {"network": 0, "switching": 2, "scale": 1, "brand": 1, "data": 3, "regulatory": 1, "technology": 1},
  "unit_economics": {
    "cac": "$140", "cac_basis": "...", "ltv": "$620", "payback_months": 5,
    "ltv_cac": 4.4, "gross_margin_pct": 71,
    "inference_cost_per_outcome": "$0.06", "inference_pct_revenue": 9
  },
  "competitors": [{"name": "...", "traction": "...", "pricing": "...", "weakness": "...", "threat": 3}],
  "precedents": [{"name": "...", "year": 2025, "outcome": "acquired", "lesson": "..."}],
  "tarpits": ["horizontal-smb"],
  "kill_criteria": ["If fewer than 8 of 30 interviewed practice managers name this a top-3 problem within 30 days, stop."],
  "would_change_mind": {"up": ["..."], "down": ["..."]},
  "verified_facts": [{"claim": "...", "source": "https://...", "status": "confirmed|contradicted|unverified"}],
  "sources": ["https://..."],
  "knowledge_version": "2026-08-22"
}
```

`knowledge_version` is the baseline date of `market-data.md`, or the
`last_updated` of `.living/KNOWLEDGE.md` when the sidecar is present and fresher.
It records which vintage of market facts produced the verdict — without it, a
later comparison cannot tell a changed business from changed data.

## 6. Compare mode

Triggered by `/business-idea-validator compare <slug>`, or automatically when
history exists for the subject.

1. Read the two most recent history entries for the slug.
2. Produce a **Since Last Time** section:
   - verdict movement (label and score, with the delta)
   - per-component deltas, largest first
   - **which AI-era checks flipped, and why** — the highest-signal part
   - what changed in the market rather than in the business (compare
     `knowledge_version` — if the facts moved and the business did not, say so
     plainly; a verdict that dropped because the market moved is a different
     story from one that dropped because the founder stalled)
   - kill criteria from last time: met, missed, or untested
3. Untested kill criteria are themselves a finding. A founder who has not
   checked their own stop conditions in three months has told you something.

## 7. Chat closing

One or two lines. Where the brief is, the verdict label, and the single sharpest
sentence. Everything else lives in the brief.

## 8. The playbook document

Produced only by `/business-idea-validator playbook SLUG`, and only when the
saved verdict was Strong or Promising. For Weak or Flawed, decline with a
sentence explaining that the uplift interventions come first.

**It is a document.** It plans work; it does not perform any. No code, no file
changes in the user's projects. See the Scope section of `SKILL.md`.

Structure:

1. **Where this stands** — verdict, score, date of the evaluation it builds on
2. **The sequence** — which interventions, in the dependency order from
   `playbook/index.md` (demand → pricing → distribution → moats, with execution
   underneath). Say why this order for this subject.
3. **One section per intervention** — drawn from the relevant `playbook/` file:
   what to do, what "done" looks like, the falsification condition, the cost
4. **The first two weeks** — day-level, concrete, one person's worth of work
5. **What not to do yet** — the tempting work that is premature. Usually moat
   building before traction, or a second channel before the first one works.
6. **Review point** — when to re-run the evaluation, and which component scores
   should have moved by then

Filename `~/Desktop/{Slug}-Playbook.pdf`, and into history alongside the brief.
Same deliverable ladder: Artifact, then PDF via the script, then HTML.

---

## 9. Readability — the spine, the conditional body, and the budgets

The brief has grown. Keep it readable by holding to one rule: **a fixed spine
and a conditional body.**

### The spine — always present, in this order

1. **Decision Page** — one page, hard limit. See below.
2. Score table, with the reference-class line beneath it
3. Verdict
4. Uplift plan
5. One-sentence summary

A reader who stops after the Decision Page must still have everything they need
to decide. Everything after it is there for the reader who wants the reasoning.

### The Decision Page

One page. If it runs to two, cut it rather than reflowing it.

- **Verdict and score**, with the computed label and any override
- **Why now** — one line, or "no clear answer", which is itself the finding
- **Reference class and base rate** — one line (`frameworks.md §14`)
- **The single biggest risk** — one sentence, drawn from the hard truths
- **The single next action** — one sentence, drawn from the uplift plan
- **The kill criterion that matters most** — one line, with its number and date

Six lines and two numbers. This is the page that gets forwarded and the page
the founder re-reads in three months.

### The conditional body

**Sections appear only when they have something to say.** Omit entirely —
do not include with a placeholder or an "N/A":

| Section | Appears when |
| --- | --- |
| Tarpit callout | 2+ tarpits hit |
| Manipulation flag | a trigger from Phase 2 step 11 fires |
| Rights & data provenance detail | check 13 is RISKY or FAIL |
| Salvage | verdict is Flawed |
| Since Last Time | prior history exists for the slug |
| Precedent cases | a structurally similar case was actually found |
| Complementors | at least one exists and matters |

An empty section costs the reader attention and tells them nothing. Omission is
information: a brief with no manipulation flag is saying the triggers did not fire.

### Length budgets

Hold these. The brief is long because it does a lot, not because sections sprawl.

| Section | Budget |
| --- | --- |
| Decision Page | 1 page, hard |
| Verdict | 2–3 sentences |
| Steelman | 1 paragraph |
| Each Hard Truth | ≤3 sentences, 5–7 of them |
| Each AI-era rationale | 1 sentence |
| Pre-mortem | 1 paragraph |
| Pre-parade | 1 paragraph |
| Uplift plan | table plus 2 lines |
| Each playbook pointer | 1 line, naming the file |

**When a section wants more room, that is usually a sign it belongs in the
playbook or the spec, not the brief.** The brief diagnoses; the other documents
elaborate.

### The sections themselves

Names flex by mode. The ones carrying the most signal:

- **Steelman** — the strongest *honest* case for the idea, before the criticism. Not a compliment sandwich. A brief that cannot argue the other side has not understood the idea, and its negative verdict is worth less. Performed harshness is a bias too, and the one this skill is most likely to acquire.
- **Hard Truths** — 5–7 specific named risks. Never "the market is competitive." Name the competitor, the structural force, the number.
- **Pre-Mortem** — the obituary, in the shape of its Eisenmann pattern.
- **What You'd Do Instead** — 2–3 options, each mapped to an archetype, each marked Recommended / Conditional / Opportunistic, plus **"What NOT to do"**.
- **Kill criteria** — 2–4 falsifiable, dated, numeric stop conditions checkable by the founder alone inside 90 days.
- **What would change my mind** — 2–3 pieces of evidence that move the verdict up a band, one that moves it down.
- **The plan** — 7-Day Validation (nascent, with real questions from `interview-bank.md`) or 90-Day Strategic (operating).
- **Sources** — ≥3 hyperlinked.
