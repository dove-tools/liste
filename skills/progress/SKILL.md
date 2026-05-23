---
name: liste-progress
description: >
  Show completion progress across the roadmap. Use to see done vs remaining.
  Invoke as /liste-progress.
---

# liste Completion Progress

```bash
liste progress --json
```

Returns `overall_percent`, `total_done`, `total_items`, and a per-phase breakdown. Drop `--json` for a human-readable summary.

## By phase

```bash
liste phase <number> --json
```

## Items not updated recently

```bash
liste stale --json
```
