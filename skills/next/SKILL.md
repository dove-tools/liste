---
name: liste-next
description: >
  Show the highest-priority items ready to work on next.
  Invoke as /liste-next.
---

# What to Work on Next

## Single highest-priority item

```bash
liste next
```

## Multiple candidates

```bash
liste next --count 5
```

## Items with all dependencies satisfied

```bash
liste ready
```

## Items currently in progress

```bash
liste list --status active
```

To start an item from these results:
```bash
liste set <id> status active
```
