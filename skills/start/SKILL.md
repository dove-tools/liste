---
name: liste-start
description: >
  Mark a liste item as active — you are beginning work on it now.
  Invoke as /liste-start or when beginning work on a planned item.
---

# Start a liste Item

```bash
liste set <id> status active
```

If you don't know the ID:
```bash
liste next                      # top priority items ready to start
liste list --status planned
liste search "<keywords>"
```
