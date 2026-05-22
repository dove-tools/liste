---
name: liste-block
description: >
  Mark a liste item as blocked. Use when you cannot proceed due to an external
  dependency, decision, or missing resource. Invoke as /liste-block.
---

# Block a liste Item

```bash
liste block <id> "<specific reason for the block>"
```

The reason must describe exactly what prevents progress:
- `"Waiting on OAuth provider approval"`
- `"Depends on FEAT-003 which is not yet merged"`
- `"API contract not finalized with external team"`

To unblock later when resolved:
```bash
liste move <id> active
```
