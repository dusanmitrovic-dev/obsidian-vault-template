---
name: Release
about: Checklist for cutting a new version
title: 'Chore: Prepare and Cut Release vX.Y.Z'
labels: chore, config, docs
assignees: ''
---

### Objective
Prepare repository for `vX.Y.Z` release.

### Implementation Details
- Migrate `[Unreleased]` changes in `CHANGELOG.md`.
- Bump version to `vX.Y.Z`.
- Generate git tag `vX.Y.Z`.
- Publish GitHub Release artifacts.

### Verification
- [ ] Changelog updated in `main`.
- [ ] Tag `vX.Y.Z` exists on remote.
- [ ] GitHub Release published.

