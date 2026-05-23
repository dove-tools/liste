---
name: liste-next
description: >
  Show the highest-priority items ready to work on next.
  Invoke as /liste-next.
---

# What to Work on Next

## Single highest-priority item

```bash
liste next --json
```

Returns one item with `id`, `type`, `title`, `status`, `priority`, `project`. Drop `--json` if you only need a human-readable line to relay to the user.

## Multiple candidates

```bash
liste next --count 5 --json
```

## Items with all dependencies satisfied

```bash
liste ready --json
```

## Items currently in progress

```bash
liste list --status active --json
```

## Just the IDs

```bash
liste next --count 5 --quiet
liste ready --quiet
```

To start an item from these results:
```bash
liste set <id> status active
```
