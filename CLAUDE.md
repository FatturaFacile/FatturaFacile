@AGENTS.md

- Claude override: read targeted file ranges only and emit minimal contextual diffs; never alter `.github/workflows/*.yml` contracts without verifying downstream `workflow_call` compatibility.
- Use isolated git worktrees only for multi-step tasks and remove them immediately after merging into `dev`.
