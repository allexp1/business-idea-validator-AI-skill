#!/usr/bin/env bash
# Installs:
#   - business-idea-validator → ~/.claude/skills/business-idea-validator/
#   - geo (SEO + GEO audit, separate repo) → ~/.claude/skills/geo/
# Re-run safely — it overwrites.
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="${HOME}/.claude/skills"
GEO_REPO="https://github.com/allexp1/geo-seo-audit-AI-skill.git"

mkdir -p "${SKILLS_DIR}"

# --- 1) business-idea-validator ---
BIV_DEST="${SKILLS_DIR}/business-idea-validator"
echo "Installing business-idea-validator"
echo "  source: ${SRC}"
echo "  dest:   ${BIV_DEST}"

mkdir -p "${BIV_DEST}"
cp "${SRC}/SKILL.md" "${BIV_DEST}/SKILL.md"
cp -R "${SRC}/references" "${BIV_DEST}/references"

# --- 2) geo (companion skill from separate repo) ---
echo
echo "Installing companion skill: geo (from ${GEO_REPO})"

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

if ! command -v git >/dev/null 2>&1; then
  echo "ERROR: git is required to install the geo skill. Install git and re-run."
  exit 1
fi

git clone --depth 1 "${GEO_REPO}" "${TMP_DIR}/geo-repo" >/dev/null 2>&1

GEO_DEST="${SKILLS_DIR}/geo"
echo "  dest:   ${GEO_DEST}"
mkdir -p "${GEO_DEST}"
cp "${TMP_DIR}/geo-repo/SKILL.md" "${GEO_DEST}/SKILL.md"
cp -R "${TMP_DIR}/geo-repo/scripts" "${GEO_DEST}/scripts"
cp -R "${TMP_DIR}/geo-repo/schema" "${GEO_DEST}/schema"

if ! python3 -c "import requests, bs4" 2>/dev/null; then
  echo
  echo "Note: geo skill needs Python deps. Install with:"
  echo "  python3 -m pip install -r ${TMP_DIR}/geo-repo/requirements.txt"
  echo "  (or: curl -fsSL https://raw.githubusercontent.com/allexp1/geo-seo-audit-AI-skill/main/requirements.txt | python3 -m pip install -r /dev/stdin)"
fi

echo
echo "Done. Restart Claude Code so it picks up the skills."
echo "Slash commands: /business-idea-validator  and  /geo audit https://example.com"
