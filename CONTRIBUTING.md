# Contributing to Obsidian Vault Starter Template

## Engineering Standards

### 1. Code Style
We adhere strictly to Google's Style Guides.
- **HTML/CSS:** [Google HTML/CSS Style Guide](https://google.github.io/styleguide/htmlcssguide.html)
- **JavaScript:** [Google JavaScript Style Guide](https://google.github.io/styleguide/jsguide.html)

### 2. Version Control Workflow
Direct pushes to `main` branch are prohibited.

1. **Branching:** Create branches using `type/issue-number-description` (e.g., `feat/1-init-sequence`, `fix/14-mobile-layout`).

2. **Commits:** Follow [Conventional Commits](https://www.conventionalcommits.org/)

**Commit types:**
  - `feat:` New features.
  - `fix:` Bug fixes.
  - `docs:` Documentation updates.
  - `chore:` Maintenance tasks.
  - `refactor:` Restructuring code without behavior changes.
  - `style:` Formatting adjustments (no code change).
  - `build:` Build system or external dependency changes.
  - `ci:` CI configuration files and scripts.
  - `perf:` Performance optimizations.
  - `test:` Adding or upgrading tests.
  - `revert:` Undoing the changes of a specific commit.

**Format:**
```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```
> [!IMPORTANT]
> Append `!` to the type for breaking changes (e.g., `refactor(core)!: ...`).

3. **Pull Requests:** All changes must be reviewed and merged via PR.

### 3. Release Cycle
- We follow [Semantic Versioning](https://semver.org/) (SemVer).

