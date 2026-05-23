---
name: liste-diff
description: >
  Show what has changed in the roadmap since the last check.
  Use at session start/end to see recent activity. Invoke as /liste-diff.
---

# liste Changes Since Last Check

```bash
liste diff --json
```

Returns `created`, `updated`, and `completed` arrays of items changed since the last `liste diff` run. Use the structured output to summarize activity for the user.

Drop `--json` if you intend to relay output verbatim.

## Since a specific date

```bash
liste diff --since 2026-05-01 --json
```

Useful for session hand-offs and progress summaries.
