---
name: liste-set
description: >
  Update a field on an existing liste item. Use to change priority, phase,
  status, or tags. Invoke as /liste-set.
---

# Set a Field on a liste Item

```bash
liste set <id> <field> <value>
```

## Common fields

| Field | Values | Example |
|---|---|---|
| `priority` | critical, high, medium, low | `liste set FEAT-001 priority high` |
| `phase` | positive integer | `liste set FEAT-001 phase 2` |
| `status` | idea, planned, active, done, cancelled | `liste set FEAT-001 status planned` |

## Adding tags

```bash
liste set <id> tags backend,auth,security
```

## View current values

```bash
liste show <id>
```
