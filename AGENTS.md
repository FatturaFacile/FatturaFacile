# Agent Guidelines — FatturaFacile (Organization Profile & Shared CI)

## Stack & Repository
- Role: GitHub organization profile and shared reusable GitHub Actions repository (`FatturaFacile/FatturaFacile`).
- Tracked files: [README.md](./README.md), [SECURITY.md](./SECURITY.md), [LICENSE](./LICENSE), [.github/CODEOWNERS](./.github/CODEOWNERS), [.github/FUNDING.yml](./.github/FUNDING.yml), and `.github/workflows/*.yml`.
- Reusable workflows: `reusable-dependabot-automerge.yml`, `reusable-qodana.yml`, `reusable-telegram.yml`, plus repo trigger `telegram.yml`.
- No application source code, package manager, or compile toolchain; never invent build scripts or add dependencies without approval.

## Architecture & Workflow Rules
- Keep [README.md](./README.md) concise, accurate, and synchronized with real ecosystem repo status (`web-api`, `web-frontend`, `web-frontend-inglorious`, `desktop`, `mobile`, `database`, `website`, `assets`, `mcp-server`, `integrations`, `openapi-sdk`).
- Preserve architectural accuracy when documenting cross-repo contracts: Clean Architecture, strict typing, row-level multi-tenancy (`X-Tenant-Id` / `tenant_id`), IT FatturaPA/SDI, and CH QR-bill v2.2 / ISO 20022.
- Reusable workflows (`.github/workflows/reusable-*.yml`): keep `workflow_call` inputs/secrets backward-compatible for downstream callers (`@main`).
- GitHub Actions security: set top-level `permissions: {}` with minimal job permissions, pin third-party actions to full commit SHAs, skip secret-using jobs on fork PRs, and pass event fields via `env:` (never inline `${{ github.event.* }}` inside shell `run:` blocks).

## Coding, Language & Localization Standards
- Language: English only for all docs, workflow comments, commit messages, and AI governance files; chat replies follow the owner's language.
- Localization (4 locales mandatory): maintain and document full quadrilingual parity across `it`, `de`, `fr`, `en`; keep legal/regulatory domain terms untranslated (`SDI`, `PEC`, `FatturaPA`, `IBAN`, `QR-IBAN`, `SCOR`, `QRR`, `AVS`, `AHV`, `LPP`, `QST`, `P/IVA`, `CF`, `UID/IDI`).
- Security: never commit or expose secrets, tokens, internal hosts, or customer data; never read `.env*`, `auth.json`, or key material.
- Token efficiency & hygiene: read only targeted files/line ranges, emit minimal diffs, follow sibling conventions, fix every encountered error (broken links, invalid YAML/Mermaid, stale commands), and avoid nested shell quoting on Windows.

## Quality Gate (Mandatory Before Push)
- Never push to `origin/dev` unless every repo gate passes with zero warnings/errors (no app build/test runner exists in this repo):
  - Validate all `.github/workflows/*.yml` files parse cleanly as YAML, pin third-party actions to SHAs, and avoid unsafe inline `${{ github.event.* }}` in `run:` scripts.
  - Verify all relative Markdown links resolve to existing files, internal anchors match headings, Mermaid blocks are valid, and documented commands are current.
  - Verify `git status` is clean with zero untracked temporary or debug artifacts.

## Strict Git Workflow (`dev` Only, Zero PRs, Zero Leftovers)
- Integrate all work directly into `dev` via local merge: `git checkout dev && git pull --rebase origin dev && git merge --no-ff <branch>` (or direct commit on `dev` for scoped governance/doc changes).
- **FORBIDDEN:** NEVER commit, merge, or push to `main`. NEVER create Pull Requests (`gh pr create` / `gh pr`).
- Autonomous conflict resolution: resolve all merge conflicts autonomously preserving Clean Architecture, strict types/workflow contracts, and all 4 locales (`it`, `de`, `fr`, `en`).
- Mandatory end-of-task cleanup: after pushing `dev`, ALWAYS delete merged local and remote feature branches (`git branch -D <branch>`, `git push origin --delete <branch>`), remove linked git worktrees (`git worktree remove --force <path> && git worktree prune`), and delete temporary/debug files created during the session so `git status` is completely clean.
