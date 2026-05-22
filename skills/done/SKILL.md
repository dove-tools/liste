---
name: liste-done
description: >
  Mark a liste item as complete. Invoke as /liste-done or immediately when
  finishing work on a liste item.
---

# Mark liste Item Done

```bash
liste done <id>
```

If you don't know the ID:
```bash
liste list --status active
liste search "<keywords>"
```

After marking done, check for newly unblocked items:
```bash
liste ready
```
