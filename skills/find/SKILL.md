---
name: liste-find
description: >
  Search for existing liste items before creating new ones. Always run before
  any add command to prevent duplicates. Invoke as /liste-find.
---

# Find in liste

Always search before creating:

```bash
liste search "<keywords>"
```

**Match found** → update instead of creating a duplicate:
```bash
liste append <id> "<additional context>"
liste set <id> priority <level>
liste set <id> phase <number>
```

**No match** → proceed with the appropriate creation skill.

## Filtered browsing

```bash
liste list --type bug
liste list --status active
liste list --priority critical
liste list --tag <tag>
```

## View hierarchy

```bash
liste tree
liste tree <id>
```
