# Security Policy

## Report a vulnerability

Do not open a public issue. Use **Security > Report a vulnerability** in this repository. Include the affected version, steps to reproduce and impact.

## Security model

- Cuadrilla has no server, telemetry or credential storage.
- Gemini agents run without `--dangerously-skip-permissions` and have no terminal access.
- Writes happen in an isolated `git worktree`.
- Reports from other models are treated as data, not instructions.
- Third-party skills are pinned Markdown copies without scripts.

## Known limits

- Read-only mode detects changes in Git repositories but cannot guarantee it prevents them.
- The secret-file filter removes common names from the file list. It does not stop an agent from reading a file.
- Reports can contain sensitive content if an agent read it. Rotate exposed secrets and delete the report.
- Installing any plugin runs code with your user permissions. Review updates before installing them.
