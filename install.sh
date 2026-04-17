#!/usr/bin/env bash
# Plain installer. Installs business-idea-validator → ~/.claude/skills/business-idea-validator/
# Re-run safely — it overwrites.
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)"
DEST="${HOME}/.claude/skills/business-idea-validator"

echo "Installing business-idea-validator skill"
echo "  source: ${SRC}"
echo "  dest:   ${DEST}"

mkdir -p "${DEST}"
cp "${SRC}/SKILL.md" "${DEST}/SKILL.md"
cp -R "${SRC}/references" "${DEST}/references"

echo
echo "Done. Restart Claude Code so it picks up the skill."
echo "Then try: /business-idea-validator"
