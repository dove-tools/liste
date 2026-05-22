---
name: liste-promote
description: >
  Advance a liste item to its next status in the lifecycle.
  Default lifecycle: idea → planned → active → done.
  Invoke as /liste-promote.
---

# Promote a liste Item

```bash
liste promote <id>
```

To view current status first:
```bash
liste show <id>
```

To jump to a specific status instead of incrementing:
```bash
liste move <id> <status>
```
