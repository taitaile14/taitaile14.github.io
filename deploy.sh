#!/usr/bin/env bash
# Create the GitHub Pages repository and push this site.
#
#   1. Set the handle first:   ./set_username.sh <github-username>
#   2. Log in as that account: gh auth login
#   3. Run:                    ./deploy.sh
set -euo pipefail
cd "$(dirname "$0")"

USER_CFG=$(grep -E '^  github ' _config.yml | sed -E 's/.*"(.*)".*/\1/')
GH_USER=$(gh api user -q .login)

echo "config handle : $USER_CFG"
echo "logged in as  : $GH_USER"

if [ "$USER_CFG" != "$GH_USER" ]; then
  echo
  echo "Mismatch. The GitHub Pages user site must live in <username>.github.io owned by that same user."
  echo "Either rename the GitHub account to '$USER_CFG', or run ./set_username.sh $GH_USER."
  exit 1
fi

REPO="$GH_USER/$GH_USER.github.io"

if gh repo view "$REPO" >/dev/null 2>&1; then
  echo "repository $REPO already exists, pushing"
  git remote get-url origin >/dev/null 2>&1 || git remote add origin "https://github.com/$REPO.git"
  git push -u origin main
else
  gh repo create "$REPO" --public --source=. --remote=origin --push \
     --description "Academic homepage of Mingtai Zhang"
fi

# Deploy from the main branch, root folder.
gh api -X POST "repos/$REPO/pages" -f "source[branch]=main" -f "source[path]=/" >/dev/null 2>&1 \
  || gh api -X PUT "repos/$REPO/pages" -f "source[branch]=main" -f "source[path]=/" >/dev/null 2>&1 \
  || echo "Pages API call failed; enable it under Settings -> Pages."

echo
echo "Done. The site appears at https://$GH_USER.github.io within a few minutes."
gh api "repos/$REPO/pages" -q ".status, .html_url" 2>/dev/null || true
