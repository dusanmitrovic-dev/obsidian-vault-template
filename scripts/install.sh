#!/bin/bash
# Initialize Obsidian Vault Starter Template
# Usage: ./install.sh [-t|--tag TAG] [-n|--name VAULT_NAME] [-i|--info]

set -euo pipefail

readonly REPOSITORY="dusanmitrovic-dev/obsidian-vault-template"
readonly API_LATEST="https://api.github.com/repos/${REPOSITORY}/releases/latest"
SCR_TMP_DIR=""

cleanup() {
  [[ -n "${SCR_TMP_DIR:-}" ]] && rm -rf "$SCR_TMP_DIR";
}

trap cleanup EXIT

log() {
  echo -e "\033[0;34m==>\033[0m $1";
}

success() {
  echo -e "\033[0;32m==>\033[0m $1";
}

error() {
  echo -e "\033[0;31mERROR:\033[0m $1" >&2; exit 1;
}

main() {
  local tag="latest"
  local name="vault"
  local info_only=false
  
  while [[ $# -gt 0 ]]; do
    case "$1" in
      -t|--tag) tag="$2"; shift 2 ;;
      --tag=*) tag="${1#*=}"; shift 1 ;;
      -n|--name) name="$2"; shift 2 ;;
      --name=*) name="${1#*=}"; shift 1 ;;
      -i|--info) info_only=true; shift 1 ;;
      -h|--help) echo "Usage: ./install.sh [-t|--tag TAG] [-n|--name VAULT_NAME] [-i|--info]"; exit 0 ;;
      *) error "Unknown option: $1" ;;
    esac
  done

  if [[ "$tag" = "latest" ]]; then
    local latest=$(curl -s "${API_LATEST}" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/' || true)
    tag="${latest:-main}"
  else
    [[ "$tag" != "main" ]] && [[ "$tag" != v* ]] && tag="v$tag"
  fi

  if [ "$info_only" = true ]; then echo "$tag"; exit 0; fi

  for cmd in curl tar grep sed; do command -v "${cmd}" >/dev/null 2>&1 || error "Command '${cmd}' missing."; done
  [ -d "$name" ] && error "Directory './$name' already exists."

  SCR_TMP_DIR=$(mktemp -d)
  local url="https://github.com/${REPOSITORY}/archive/refs/$( [[ "$tag" == "main" ]] && echo "heads/main" || echo "tags/$tag" ).tar.gz"

  log "Downloading ${tag}..."
  curl -fsSL "$url" -o "${SCR_TMP_DIR}/archive.tar.gz" || error "Download failed. Check the network or tag name."
  tar -xzf "${SCR_TMP_DIR}/archive.tar.gz" -C "${SCR_TMP_DIR}" || error "Extraction failed."

  local vault_src
  vault_src=$(find "${SCR_TMP_DIR}" -type d -name "vault" | head -n 1)

  [ -z "${vault_src:-}" ] && error "Vault source not found in archive."

  mv "$vault_src" "./${name}" || error "Failed to move vault to target directory."
  success "Installed ${tag} to ./${name}"
}

main "$@"

