#!/usr/bin/env bash
# bump-cask.sh — checks adrinand/gokfre for a new release and bumps the cask in this tap.
set -euo pipefail

CASK_NAME="$1"
APP_REPO_URL="$2"
CASK_PATH="Casks/${CASK_NAME}.rb"

LATEST_VERSION=$(curl -sIL -o /dev/null -w '%{url_effective}' \
  "${APP_REPO_URL}/releases/latest" | grep -oE '/tag/v[0-9.]+' | head -n1 | sed 's|/tag/v||')
if [[ -z "${LATEST_VERSION}" ]]; then
  echo "❌ Could not determine the latest version."
  exit 1
fi
echo "🔍 Latest repo release version: ${LATEST_VERSION}"

CURRENT_VERSION=$(grep -oE 'version\s+"[^"]+"' "${CASK_PATH}" | head -1 | cut -d'"' -f2)
echo "📦 Current cask version: ${CURRENT_VERSION}"

if [[ "${CURRENT_VERSION}" == "${LATEST_VERSION}" ]]; then
  echo "✅ Already up-to-date."
  exit 0
fi

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

ARM_DMG="Gokfre-${LATEST_VERSION}-arm64.dmg"
INTEL_DMG="Gokfre-${LATEST_VERSION}-x86_64.dmg"

curl -sL --fail -o "${TMP_DIR}/${ARM_DMG}"  "${APP_REPO_URL}/releases/download/v${LATEST_VERSION}/${ARM_DMG}"
curl -sL --fail -o "${TMP_DIR}/${INTEL_DMG}" "${APP_REPO_URL}/releases/download/v${LATEST_VERSION}/${INTEL_DMG}"

SHA_ARM=$(shasum -a 256 "${TMP_DIR}/${ARM_DMG}" | awk '{print $1}')
SHA_INTEL=$(shasum -a 256 "${TMP_DIR}/${INTEL_DMG}" | awk '{print $1}')

if [[ -z "${SHA_ARM}" || -z "${SHA_INTEL}" ]]; then
  echo "❌ Failed to compute SHA256 checksums."
  exit 1
fi
echo "✅ SHA256 (arm):   ${SHA_ARM}"
echo "✅ SHA256 (intel): ${SHA_INTEL}"

sed -i '' \
  -e "s|version \".*\"|version \"${LATEST_VERSION}\"|" \
  -e "/on_arm/,/url/ s|sha256 \".*\"|sha256 \"${SHA_ARM}\"|" \
  -e "/on_intel/,/url/ s|sha256 \".*\"|sha256 \"${SHA_INTEL}\"|" \
  "${CASK_PATH}"

echo "Testing ARM64 install..."
arch -arm64 brew uninstall --cask "${CASK_NAME}" 2>/dev/null || true
arch -arm64 brew install --cask --no-quarantine "${CASK_PATH}" \
  || { echo "❌ ARM install failed"; exit 1; }

echo "Testing Intel install (Rosetta)..."
arch -arm64 brew uninstall --cask "${CASK_NAME}" || true
if [[ ! -f "/usr/local/bin/brew" ]]; then
  echo "Installing Intel Homebrew to /usr/local..."
  arch -x86_64 /bin/bash -c \
    "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || true
fi
arch -x86_64 /usr/local/bin/brew install --cask --no-quarantine "${CASK_PATH}" \
  || { echo "❌ Intel install failed"; exit 1; }

# --- 5. Open a PR and auto-merge it ---
git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"

BRANCH="bump-${CASK_NAME}-${LATEST_VERSION}"
git checkout -b "${BRANCH}"
git add "${CASK_PATH}"
git commit -m "${CASK_NAME}: update to ${LATEST_VERSION}"
git push origin "${BRANCH}"

gh pr create \
  --title "${CASK_NAME}: update to ${LATEST_VERSION}" \
  --body "Automated update to version ${LATEST_VERSION}." \
  --head "${BRANCH}" \
  --base main

gh pr merge "${BRANCH}" --merge --auto

echo "✅ Successfully bumped the cask version to the latest"