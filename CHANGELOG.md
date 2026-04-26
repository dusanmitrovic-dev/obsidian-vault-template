# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changes

- Migrate installer endpoint to custom domain: `vault.mainframeforge.com` (#62).

### Removed

- Prune redundant `.gitkeep` files from parent directories (#66).

### Fixes

- Enforce HTTPS protocol for branded installer endpoint (#64).
- Update supported versions table in security policy (#68).

## [0.2.0] - 2026-04-19

### Added

- Add dynamic release version badge (#46).
- Add automated latest tag workflow (#48).
- Implement inbox buffer logic for new notes (#50).
- Configure centralized attachment management (#52).
- Implement daily notes configuration (#54).
- Implement templates configuration (#56).
- Add daily ledger template note (#58).

## [0.1.0] - 2026-03-31

### Added

- Set up `.gitignore` to prevent polluting remote repository (#3).
- Set up repository governance and GitHub templates (#4).
- Initialize new Obsidian vault and implement PARA methodology (#5).
- Implement inbox, dailies, and system vault structure (#9).
- Document philosophy, directory structure, and convention sections (#11).
- Add MIT license to the repository (#13).
- Implement Quick Start section (#15).
- Enhance `README.md` with status badges (#19).
- Add indexing convention clause to the docs (#23).
- Add revert commit type and breaking change contribution guide (#36).
- Implement bash `install.sh` script for Linux OS (#32).
- Add bash installer quick setup section (#42).

### Changes

- Refactor `README.md` typography, title, and overview text (#15).
- Refactor contribution branch naming examples (#16).
- Refactor `SECURITY.md` project name (#21).
- Refactor `CHANGELOG.md` readability (#25).
- Adapt issue templates for Obsidian vault context (#26).
- Standardize issue templates and contribution guidelines (#33).

### Fixes

- Fix typo `ethhumbs.db` in `.gitignore` (#24).
- Fix task issue template missing commit types (#35).
- Fix missing closing bracket in bash install script (#40).

[unreleased]: https://github.com/dusanmitrovic-dev/obsidian-vault-template/compare/v0.2.0...HEAD
[0.2.0]: https://github.com/dusanmitrovic-dev/obsidian-vault-template/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/dusanmitrovic-dev/obsidian-vault-template/releases/tag/v0.1.0

