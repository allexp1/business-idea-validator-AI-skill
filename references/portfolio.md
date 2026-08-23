# Portfolio view

Produced by `/business-idea-validator portfolio`. Reads every evaluation in
`~/.claude/business-idea-validator/history/` and reports across them.

Useful once someone has evaluated more than about four ideas, which is when the
interesting information stops being inside any one brief and starts being in the
pattern across them.

## What it reports

**1. The table.** One row per subject: verdict, score, capital path, date
evaluated, days since, and whether the kill criteria were ever checked.

**2. Shared failure modes.** Which AI-era checks fail across multiple ideas, and
which Eisenmann pattern recurs. *"Four of your six ideas fail check 10.
Distribution is not an idea problem, it is your problem"* is more useful than
four separate distribution paragraphs, and it is invisible from inside any one
brief.

**3. Stale evaluations.** Any brief older than 90 days whose market data has
since moved. Flag which ones would likely score differently now because
`market-data.md` changed underneath them, separately from ideas that changed.

**4. Untested kill criteria.** Every kill criterion whose deadline has passed
with no recorded check. This is the highest-signal thing in the whole view: a
founder who set a stop condition and never looked at it has told you something
about how the decision is actually being made.

**5. Concentration.** How the ideas distribute across capital paths and
archetypes. Six bootstrap ideas in adjacent niches is a coherent strategy; six
ideas across unrelated markets is a search, and worth naming as one.

**6. The one recommendation.** Which single idea most deserves the next block of
attention, and why — usually the highest score with the cheapest untested
assumption, not the highest score.

## Rules

- **Report, do not re-score.** The portfolio view reads saved verdicts; it does
  not silently re-evaluate. If an evaluation looks stale, say so and offer a
  re-run rather than quietly producing a new number.
- **Never rank on score alone.** A Promising bootstrap idea and a Promising
  venture idea are not comparable quantities; they answer different questions.
  Group by path before comparing.
- **Say when there is not enough data.** Under about four evaluations, patterns
  are noise. Print the table and skip the pattern analysis rather than inventing
  a trend from three points.
- Output is a short markdown summary in chat plus an optional document. This one
  is genuinely better short — it is a dashboard, not a brief.
