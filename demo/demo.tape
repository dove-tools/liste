# liste demo
Output demo/liste-demo.gif

Require liste

Set Shell zsh
Set FontSize 14
Set Width 900
Set Height 600
Set Theme "Catppuccin Mocha"
Set TypingSpeed 40ms
Set Padding 20

# --- banner ---
Type "liste version"
Sleep 200ms
Enter
Sleep 1500ms

# --- setup ---
Type "cd $(mktemp -d) && liste init my-project"
Sleep 200ms
Enter
Sleep 1000ms

# --- add items ---
Type "liste add feature 'OAuth2 login support'"
Sleep 200ms
Enter
Sleep 700ms

Type "liste add task 'Set up Postgres schema'"
Sleep 200ms
Enter
Sleep 700ms

Type "liste add bug 'Session expires too early'"
Sleep 200ms
Enter
Sleep 700ms

Type "liste add epic 'v1 launch'"
Sleep 200ms
Enter
Sleep 900ms

# --- list ---
Type "liste list"
Sleep 200ms
Enter
Sleep 1500ms

# --- start working ---
Type "liste set FEAT-001 status active"
Sleep 200ms
Enter
Sleep 700ms

Type "liste set FEAT-001 priority high"
Sleep 200ms
Enter
Sleep 700ms

Type "liste set FEAT-001 phase 1"
Sleep 200ms
Enter
Sleep 700ms

# --- link ---
Type "liste link EPIC-001 parent-of FEAT-001"
Sleep 200ms
Enter
Sleep 700ms

Type "liste link FEAT-001 depends-on TASK-001"
Sleep 200ms
Enter
Sleep 800ms

# --- block ---
Type "liste block BUG-001 'waiting for repro steps'"
Sleep 200ms
Enter
Sleep 900ms

# --- status ---
Type "liste status"
Sleep 200ms
Enter
Sleep 1800ms

# --- tree ---
Type "liste tree EPIC-001"
Sleep 200ms
Enter
Sleep 1500ms

# --- next / progress ---
Type "liste next"
Sleep 200ms
Enter
Sleep 1000ms

Type "liste progress"
Sleep 200ms
Enter
Sleep 1500ms

# --- done ---
Type "liste done FEAT-001"
Sleep 200ms
Enter
Sleep 700ms

# --- context (AI output) ---
Type "liste context"
Sleep 200ms
Enter
Sleep 2000ms

Sleep 2s
