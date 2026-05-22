package skills

import "embed"

// Files embeds all SKILL.md files in this directory's subdirectories.
//
//go:embed */SKILL.md
var Files embed.FS

// SkillsDir is the root to walk when reading embedded skills.
const SkillsDir = "."
