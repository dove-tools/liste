---
name: liste-add-epic
description: >
  Add a large grouping of related work to the liste roadmap. Use for major
  initiatives containing multiple features, tasks, and bugs.
  Invoke as /liste-add-epic.
---

# Add Epic to liste

## Step 1: Search for duplicates

```bash
liste search "<keywords from the epic>" --quiet
```

## Step 2: Add the epic and capture the ID

```bash
ID=$(liste add epic "<concise title: the initiative name>" --quiet)
```

## Step 3: Assign phase and link children

```bash
liste set $ID phase <number>
liste link <child-id> child-of $ID   # repeat for each child item
```

## One-shot via batch

```bash
liste batch <<EOF
add epic "Auth platform rewrite"
set EPIC-001 phase 2
link FEAT-003 child-of EPIC-001
link FEAT-004 child-of EPIC-001
link TASK-010 child-of EPIC-001
EOF
```
