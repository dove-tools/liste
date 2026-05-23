---
name: liste-find
description: >
  Search for existing liste items before creating new ones. Always run before
  any add command to prevent duplicates. Invoke as /liste-find.
---

# Find in liste

Always search before creating.

## Quick check (IDs only)

```bash
liste search "<keywords>" --quiet
```

Returns bare IDs — minimum tokens, ideal for "does anything match?"

## Full search with metadata

```bash
liste search "<keywords>" --json
```

Returns structured JSON with `id`, `type`, `title`, `status`, `priority`. Use when you need to fuzzy-match against titles or filter by type before deciding to update vs. create.

**Match found** → update instead of creating a duplicate:
```bash
liste append <id> "<additional context>"
liste set <id> priority <level>
liste set <id> phase <number>
```

**No match** → proceed with the appropriate creation skill.

## Filtered browsing

```bash
liste list --type bug --json
liste list --status active --json
liste list --priority critical --json
liste list --tag <tag> --json
```

## View hierarchy

```bash
liste tree
liste tree <id>
```
