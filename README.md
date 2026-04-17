# Business Idea Validator — Claude Skill

A brutally honest business idea validator and startup advisor skill for Claude. It uses real frameworks from Harvard Business School (and related sources) to evaluate business ideas through three lenses: **desirability**, **feasibility**, and **viability**.

Designed specifically to fight AI sycophancy — it tells the truth, not what the user wants to hear.

## What it does

Triggers whenever a user mentions a startup idea, business concept, product idea, side project, SaaS idea, app idea, or asks whether an idea is good, viable, or worth pursuing. Also triggers on phrases like:

- "I have an idea..."
- "Should I build this?"
- "Is this a good business?"
- "Validate my idea"
- "Roast my startup idea"
- "Be honest about my idea"

## Contents

- `SKILL.md` — main skill definition and evaluation methodology
- `references/frameworks.md` — supporting frameworks (Jobs-to-be-Done, Porter's Five Forces, Lean Canvas, etc.)

## Installation

### Recommended — run `install.sh`

The install script sets up this skill **and** its companion GEO/SEO audit skill (`/geo`) from [geo-seo-audit-AI-skill](https://github.com/allexp1/geo-seo-audit-AI-skill):

```bash
git clone https://github.com/allexp1/business-idea-validator-AI-skill.git
cd business-idea-validator-AI-skill
./install.sh
```

This installs:
- `~/.claude/skills/business-idea-validator/` — this skill
- `~/.claude/skills/geo/` — companion SEO + GEO audit skill (invoked as `/geo`)

Restart Claude Code after install so both skills are picked up.

### Manual — this skill only

```bash
mkdir -p ~/.claude/skills
cp -r . ~/.claude/skills/business-idea-validator
```

### Packaging as a `.skill` file

```bash
zip -r business-idea-validator.skill SKILL.md references/
```

## Usage

Once installed, present any business idea to Claude and the skill activates automatically. Example prompts:

- "I want to build a SaaS for dentists to manage appointments — is this a good idea?"
- "Roast my startup idea: Uber for dog walkers."
- "Validate this: a subscription box for left-handed people."

## License

MIT
