---
name: liste-add-bug
description: >
  Add a bug to the liste roadmap. Use when a defect, error, crash, or unexpected
  behavior is discovered during development. Invoke as /liste-add-bug.
---

# Add Bug to liste

## Step 1: Search for duplicates

```bash
liste search "<keywords from the bug>" --quiet
```

`--quiet` returns bare IDs. Use `--json` instead if you need titles and metadata for fuzzy matching.

If a matching bug exists: run `liste append <existing-id> "<additional context>"` and stop.

## Step 2: Add the bug and capture the ID

```bash
ID=$(liste add bug "<concise title: what is wrong>" --quiet)
```

`--quiet` prints only the new ID — assign it to a shell variable for the chained operations below.

## Step 3: Set priority

```bash
liste set $ID priority <level>
```

- `critical` — data loss, security, complete breakage, blocks all work
- `high` — significant feature broken, no workaround
- `medium` — partial breakage, workaround exists
- `low` — cosmetic, minor

## Step 4: Link if related

```bash
liste link $ID blocks <item-id>      # if it blocks another item
liste link $ID relates-to <item-id>  # if generally related
```

## One-shot via batch

Three or more mutations? Use `liste batch`:

```bash
liste batch <<EOF
add bug "Login timeout on Safari"
set BUG-001 priority high
link BUG-001 blocks FEAT-003
EOF
```
