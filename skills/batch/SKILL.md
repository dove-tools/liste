---
name: liste-batch
description: >
  Run multiple liste commands atomically via stdin. Use when making 3 or more
  mutations in a single operation. Invoke as /liste-batch.
---

# Batch liste Mutations

Use for 3 or more mutations — never loop individual commands:

```bash
liste batch <<EOF
done FEAT-001
set BUG-002 status active
add task "Write integration tests"
add bug "Login fails on Safari"
link TASK-003 depends-on FEAT-001
EOF
```

Commands in batch (without the `liste` prefix):
`add`, `done`, `set`, `move`, `block`, `link`, `unlink`, `delete`, `append`

## From file

```bash
liste batch < mutations.txt
```
