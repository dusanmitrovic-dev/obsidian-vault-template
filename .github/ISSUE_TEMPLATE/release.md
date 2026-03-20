---
name: Release
about: Checklist for cutting a new version
title: 'chore: prepare and cut release vX.Y.Z'
labels: chore, docs
assignees: ''
---

### Context
<!-- Why are we cutting this release? (e.g., Reached milestone, hotfix, initial launch). -->

### Objective
Prepare repository for `vX.Y.Z` release.

### Implementation Details
- Migrate `[Unreleased]` changes in `CHANGELOG.md`.
- Bump version to `vX.Y.Z` where applicable.
- Generate git tag `vX.Y.Z`.
- Publish GitHub Release artifacts.

### Acceptance Criteria
- [ ] Changelog updated in `main`.
- [ ] Tag `vX.Y.Z` exists on remote.
- [ ] GitHub Release published.

