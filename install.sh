#!/usr/bin/env bash
# Installs business-idea-validator into ~/.claude/skills/business-idea-validator/
# Safe to re-run: backs up any existing install first.
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)"
DEST="${HOME}/.claude/skills/business-idea-validator"
# Backups must NOT live under ~/.claude/skills/ — anything with a SKILL.md in
# there is discovered as a skill, so a backup would register as a duplicate.
BACKUP_ROOT="${HOME}/.claude/skill-backups"
STAMP="$(date +%Y%m%d-%H%M%S)"

echo "Installing business-idea-validator"
echo "  source: ${SRC}"
echo "  dest:   ${DEST}"

if [[ -d "$DEST" ]]; then
  BACKUP="${BACKUP_ROOT}/business-idea-validator-${STAMP}"
  echo "  backing up existing install → ${BACKUP}"
  mkdir -p "$BACKUP_ROOT"
  mv "$DEST" "$BACKUP"
fi

mkdir -p "$DEST"
cp "${SRC}/SKILL.md" "${DEST}/SKILL.md"
cp -R "${SRC}/references" "${DEST}/references"
cp -R "${SRC}/scripts"    "${DEST}/scripts"
cp -R "${SRC}/evals"      "${DEST}/evals"

# The .living sidecar keeps the perishable market figures current. It is
# optional: without it the skill falls back to the dated baseline in
# references/market-data.md and says so.
if [[ -d "${SRC}/.living" ]]; then
  cp -R "${SRC}/.living" "${DEST}/.living"
fi

chmod +x "${DEST}/scripts/"*.sh

# Re-baseline the sidecar's integrity hash against the SKILL.md just installed.
if [[ -f "${DEST}/.living/ORIGINAL.sha256" ]]; then
  if command -v shasum >/dev/null 2>&1; then
    shasum -a 256 "${DEST}/SKILL.md" | awk '{print $1}' > "${DEST}/.living/ORIGINAL.sha256"
  elif command -v sha256sum >/dev/null 2>&1; then
    sha256sum "${DEST}/SKILL.md" | awk '{print $1}' > "${DEST}/.living/ORIGINAL.sha256"
  fi
fi

cat <<DONE

Done. Restart Claude Code so it picks up the skill, then try:
  /business-idea-validator <your idea>

New in v2.0.0:
  · the verdict is computed from a rubric, not judged
  · 12 AI-era checks (was 8), with regulation as a hard gate
  · bootstrap / venture / service-as-software capital paths
  · verdict.json + evaluation history + compare mode
  · self-refreshing market data via the .living sidecar

PDF output needs Chrome, Chromium, Edge or Brave. Without one you still get
the HTML brief.
DONE
