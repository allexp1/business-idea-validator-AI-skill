#!/usr/bin/env node
'use strict';

// Installs the business-idea-validator skill into the user's Claude skills
// directory. Copies files and nothing else: it does not run the skill, and it
// touches nothing outside ~/.claude.

const fs = require('fs');
const os = require('os');
const path = require('path');
const crypto = require('crypto');

const SKILL = 'business-idea-validator';
const PARTS = ['SKILL.md', 'references', 'scripts', 'evals', '.living'];

const argv = process.argv.slice(2);
const has = (f) => argv.includes(f);
const dryRun = has('--dry-run') || has('-n');

if (has('--help') || has('-h')) {
  console.log(`
  ${SKILL} — installer

  Usage
    npx business-idea-validator [options]

  Options
    -n, --dry-run   Show what would be written, change nothing
        --dest DIR  Install to DIR instead of ~/.claude/skills/${SKILL}
    -h, --help      This

  Installs the skill's files into your Claude skills directory. An existing
  install is moved to ~/.claude/skill-backups/ first — never overwritten, and
  never left inside skills/, where a backup would register as a second skill.
`);
  process.exit(0);
}

const src = path.resolve(__dirname, '..');
const destFlag = argv.indexOf('--dest');
const dest = destFlag !== -1 && argv[destFlag + 1]
  ? path.resolve(argv[destFlag + 1])
  : path.join(os.homedir(), '.claude', 'skills', SKILL);
const backupRoot = path.join(os.homedir(), '.claude', 'skill-backups');

const say = (s) => console.log(s);
const tick = (s) => say(`  ✓ ${s}`);

say(`\n  ${SKILL} v${require('../package.json').version}`);
say(`  from ${src}`);
say(`  to   ${dest}${dryRun ? '   (dry run)' : ''}\n`);

// Refuse to run from a tree that is missing its own content, which would
// otherwise install a hollow skill over a working one.
const missing = PARTS.filter((p) => !fs.existsSync(path.join(src, p)));
if (missing.length) {
  console.error(`  Cannot install: this package is missing ${missing.join(', ')}.`);
  console.error(`  Nothing was changed.\n`);
  process.exit(1);
}

// Back up any existing install. Backups go OUTSIDE skills/ deliberately:
// anything with a SKILL.md under skills/ is discovered as a skill, so a
// backup left in place would show up as a duplicate.
if (fs.existsSync(dest)) {
  const stamp = new Date().toISOString().replace(/[-:]/g, '').replace(/\..+/, '').replace('T', '-');
  const backup = path.join(backupRoot, `${SKILL}-${stamp}`);
  if (dryRun) {
    tick(`would back up existing install to ${backup}`);
  } else {
    fs.mkdirSync(backupRoot, { recursive: true });
    fs.renameSync(dest, backup);
    tick(`backed up existing install to ${backup}`);
  }
}

if (!dryRun) fs.mkdirSync(dest, { recursive: true });

for (const part of PARTS) {
  const from = path.join(src, part);
  const to = path.join(dest, part);
  if (dryRun) {
    const stat = fs.statSync(from);
    const n = stat.isDirectory() ? fs.readdirSync(from).length : 1;
    tick(`would copy ${part}${stat.isDirectory() ? ` (${n} entries)` : ''}`);
    continue;
  }
  fs.cpSync(from, to, { recursive: true });
  tick(`copied ${part}`);
}

// Make the render script executable. No-op on Windows, harmless.
const scripts = path.join(dest, 'scripts');
if (!dryRun && fs.existsSync(scripts)) {
  for (const f of fs.readdirSync(scripts)) {
    if (f.endsWith('.sh')) fs.chmodSync(path.join(scripts, f), 0o755);
  }
  tick('made scripts executable');
}

// Re-baseline the living sidecar's integrity hash against the SKILL.md just
// written, so it does not immediately report a mismatch it caused itself.
const hashFile = path.join(dest, '.living', 'ORIGINAL.sha256');
if (!dryRun && fs.existsSync(hashFile)) {
  const sum = crypto.createHash('sha256')
    .update(fs.readFileSync(path.join(dest, 'SKILL.md')))
    .digest('hex');
  fs.writeFileSync(hashFile, sum + '\n');
  tick('re-baselined the .living integrity hash');
}

say(dryRun ? `
  Dry run. Nothing was written.
` : `
  Done. Restart Claude Code, then try:

    /business-idea-validator <your idea>

  It writes documents and advice. It does not write code or modify your
  projects. PDF output needs Chrome, Chromium, Edge or Brave; without one
  you still get the HTML brief.
`);
