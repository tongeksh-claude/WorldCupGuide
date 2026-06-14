#!/bin/bash
cd "$(dirname "$0")"

# Remove stale lock file from previous attempt
rm -f .git/index.lock

git config user.email "tongeksh@gmail.com"
git config user.name "Chopappa"
git branch -M main
git add index.html
git commit -m "Add 2026 World Cup viewing guide with Chinese language support

- Full match schedule with Melbourne AEST times
- Star players, tactics, match previews for all 48 teams
- Chinese (Simplified) toggle with mainland player names
- Jersey numbers on player cards
- All UI labels, venue names, tactics, and previews in Chinese"

git remote remove origin 2>/dev/null; git remote add origin https://github.com/tongeksh-claude/WorldCupGuide.git
git push -u origin main
