---
name: liste-append
description: >
  Add notes, findings, or context to an existing liste item's body.
  Use when you learn something significant about an item during work.
  Invoke as /liste-append.
---

# Append to a liste Item

```bash
liste append <id> "<text to add>"
```

Use when you discover:
- An implementation constraint or gotcha
- A decision and its rationale
- Test results or benchmarks
- Links to relevant PRs, issues, or documentation
- Changes to scope or acceptance criteria

For longer edits:
```bash
liste edit <id>
```
