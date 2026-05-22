---
name: liste-link
description: >
  Create a typed relationship between two liste items.
  Use when you discover a dependency, hierarchy, or association.
  Invoke as /liste-link.
---

# Link liste Items

```bash
liste link <source-id> <type> <target-id>
```

## Link types

| Type | Meaning | Example |
|---|---|---|
| `depends-on` | Source cannot proceed until target is done | `liste link FEAT-001 depends-on TASK-003` |
| `blocks` | Source prevents target from proceeding | `liste link BUG-002 blocks FEAT-001` |
| `parent-of` | Source is a grouping containing target | `liste link EPIC-001 parent-of FEAT-002` |
| `child-of` | Source belongs to target grouping | `liste link FEAT-002 child-of EPIC-001` |
| `relates-to` | General association | `liste link FEAT-001 relates-to FEAT-004` |

## Remove a link

```bash
liste unlink <source-id> <type> <target-id>
```

## View full link graph

```bash
liste graph <id>
```
