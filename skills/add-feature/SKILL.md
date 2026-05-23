---
name: liste-add-feature
description: >
  Add a new feature to the liste roadmap. Use for new capabilities that don't yet
  exist. Invoke as /liste-add-feature.
---

# Add Feature to liste

## Step 1: Search for duplicates

```bash
liste search "<keywords from the feature>" --quiet
```

Use `--json` instead if you need titles and metadata for fuzzy matching.

If a matching item exists: update it with `liste append <id>` and stop.

## Step 2: Add the feature and capture the ID

```bash
ID=$(liste add feature "<concise title: what the feature does>" --quiet)
```

## Step 3: Set metadata

```bash
liste set $ID priority <critical|high|medium|low>
liste set $ID phase <number>   # if known
```

## Step 4: Link dependencies

```bash
liste link $ID depends-on <blocking-id>
```

## One-shot via batch

```bash
liste batch <<EOF
add feature "OAuth2 login"
set FEAT-001 priority high
set FEAT-001 phase 2
link FEAT-001 depends-on TASK-005
EOF
```
