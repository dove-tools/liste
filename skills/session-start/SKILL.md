---
name: liste-session-start
description: >
  Load liste project context and install hard behavioral rules at session start.
  Invoke at the start of every session when working in a project directory.
  Triggers when CLAUDE.md says "invoke liste:session-start at session start" or similar.
---

# liste Session Start

## Step 1: Detect project

Run:
```bash
liste context 2>/dev/null
```

If the command fails with "no .liste/ found", this skill is a no-op — stop here.

If it succeeds, present the full context output to the user.

## Step 2: Hard behavioral rules

**These rules are mandatory for the entire session. No exceptions. No skipping.**

### Before creating any item
```bash
liste search "<keywords>"
```
Check results. If a matching item exists, update it with `liste append <id>` instead of creating a duplicate. Only proceed with creation if no match is found.

### Bug found
```bash
liste add bug "<concise description of the defect>"
```
Run this **immediately** when any bug, error, crash, or unexpected behavior is discovered — before continuing any other work.

### Starting work on an item
```bash
liste set <id> status active
```
Run this **before** beginning any work on a liste item.

### Completing an item
```bash
liste done <id>
```
Run this **immediately** when work on a liste item is complete.

### Blocked on an item
```bash
liste block <id> "<specific reason for the block>"
```
Run this when you cannot proceed with a liste item.

### Dependency discovered
```bash
liste link <id> depends-on <target-id>
```
Run this when you discover that one item cannot proceed until another is done.

### Significant finding about an item
```bash
liste append <id> "<what you learned>"
```
Run this when you discover important context, a constraint, or implementation detail about an item.

### Three or more mutations needed
```bash
liste batch <<EOF
done FEAT-001
set BUG-002 status active
add task "Write integration tests"
add bug "Login fails on Safari"
EOF
```
Use `liste batch` for 3+ operations. Never loop individual commands when batch is available.

## Step 3: Show work queue

```bash
liste next
```

Present the result to the user and ask if they'd like to start on the top item.
