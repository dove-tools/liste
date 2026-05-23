---
name: liste-add-task
description: >
  Add a concrete work unit to the liste roadmap. Use for specific, actionable
  items (write tests, update docs, refactor X). Invoke as /liste-add-task.
---

# Add Task to liste

## Step 1: Search for duplicates

```bash
liste search "<keywords from the task>" --quiet
```

If a matching item exists: update it with `liste append <id>` and stop.

## Step 2: Add the task and capture the ID

```bash
ID=$(liste add task "<concise title: specific action to take>" --quiet)
```

## Step 3: Set metadata

```bash
liste set $ID priority <critical|high|medium|low>
liste set $ID phase <number>
```

## Step 4: Link to parent

```bash
liste link $ID child-of <feature-or-epic-id>
```

## One-shot via batch

```bash
liste batch <<EOF
add task "Write integration tests for auth"
set TASK-001 priority high
set TASK-001 phase 1
link TASK-001 child-of FEAT-003
EOF
```
