---
name: liste-status
description: >
  Show a full roadmap overview: phases, status counts, and blocked items.
  Use for a command-center view of current project state. Invoke as /liste-status.
---

# liste Status Overview

## Compact AI-agent summary (preferred)

```bash
liste context
```

Purpose-built for LLM consumption — capped output, all the signal, none of the table noise.

## Phase overview

```bash
liste roadmap --json
```

## Status counts

```bash
liste status --json
```

Returns `by_status` map and an `items` array.

## Blocked items

```bash
liste blocked --json
```

Drop `--json` from any of the above if you're going to relay the output verbatim to the user.
