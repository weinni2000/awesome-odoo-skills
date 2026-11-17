# Awesome Odoo Skills [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list of agent skills for Odoo ERP development.

[Agent skills](https://agentskills.io) are folders of structured documentation - a
`SKILL.md` with frontmatter plus optional references, scripts and examples - that AI
coding agents load on demand. They teach an agent the Odoo-specific rules it would
otherwise guess: version differences, ORM patterns, access rules, view syntax,
migration steps and review checklists.

This list covers skills for writing, reviewing, testing, translating and migrating
Odoo addons, Odoo 13 through 20, for Claude Code, Codex, Copilot CLI, Cursor,
OpenCode and any other agentskills.io-compatible harness.

## Contents

- [Official](#official)
- [Complete skill packs](#complete-skill-packs)
- [Version coverage](#version-coverage)
- [Task-specific skills](#task-specific-skills)
- [MCP servers and tooling](#mcp-servers-and-tooling)
- [Installing skills](#installing-skills)
- [Which skill should I use](#which-skill-should-i-use)

## Official

- [Odoo Skill Library][official] - Five skills: `odoo-git`, `odoo-guidelines`,
  `odoo-review`, `odoo-security` and `odoo-web-guidelines`. They ship inside the
  Odoo source tree on `master` (Odoo 20 and later); the `18.0` and `19.0`
  branches have no `skills/` directory. Copy all five together because they
  cross-reference each other.

## Complete skill packs

- [ursais/ai-skills][ursais] - Seven thin workflow skills for end-to-end OCA
  module delivery: `odoo-dev`, `odoo-migrate`, `odoo-fix`, `odoo-review`,
  `odoo-merge`, `odoo-rebase` and `odoo-translate`. Policy lives once in
  `shared/`, which must sit next to the skills. Cursor-first, needs
  `GITHUB_TOKEN`, `gh` and a test harness. No license file.
- [wpmoo-org/odoo-skills][wpmoo] - MIT. 22 skills: self-contained Odoo 13-19
  version packs plus addon factory, testing, security review, OpenUpgrade
  migration, frontend, performance, integrations, i18n and deployment-ops. Each
  version pack ships a `validate-addon.mjs` checker. Install with
  `npx @wpmoo/odoo-skills install`.
- [mart337i/odoo-skills][mart] - 21 skills for Odoo engineering: 17.0-20.0
  packs, code review and code tracing, OWL, website, report design and report
  migration, web testing, test writing, idea gates and OCA migration 8.0-20.0.
  No license file.
- [fhidalgodev/odoo-development-skill][fhidalgo] - MIT. Universal Odoo 14-20
  skill with about 124 version-tagged pattern files (models, security, views,
  OWL, tests, migration, accounting, stock), plus `agents/` and a
  skills.sh-compatible `SKILL.md`.
- [letzdoo/claude-marketplace][letzdoo] - MIT. Claude Code plugin marketplace:
  `odoo-development` (123 skill files for Odoo 14-19), `odoo-doodba-dev` (SQLite
  code indexer and Doodba commands), `odoo-query` (read-only XML-RPC queries)
  and `odoo-token-killer` (output filtering proxy).
- [unclecatvn/agent-skills][unclecatvn] - MIT. Odoo 16.0-19.0 version packs, a
  trace-first `odoo-workflow`, an `odoo-commit` skill and a DTG base utility
  pack, plus `odoo-code-tracer` and `odoo-code-review` agents. Ships as a Claude
  Code plugin and as an `npx skills add` target.
- [OdooEssentials/odoo-ai-skills][odooessentials] - Eight skills that extend the
  official guidelines: `odoo-development`, `odoo-coding-conventions`,
  `odoo-module-migration`, `odoo-oca-contrib`, `odoo-i18n`,
  `odoo-website-snippets`, `agentic-testing` and `living-design-doc`. No license
  file.
- [odoo-ps/ps-ai-skills][ps] - Ten skills from Odoo's Professional Services
  teams: `odev` CLI rules, coding guidelines, commit messages, upgrade skill and
  upgrade utilities, SaaS (data-only) development, task analysis and estimation,
  analysis through MCP. No license file.
- [sickn33/agentic-awesome-skills][sickn33] - MIT. 24 Odoo skills inside a
  2,955+ skill collection: module developer, ORM expert, XML view builder, QWeb
  templates, security rules, tests, performance tuner, upgrade advisor,
  deployment, RPC API and functional setup skills for accounting, sales,
  purchase, inventory, manufacturing, HR and e-commerce.

## Version coverage

What each pack documents today. Read its `SKILL.md` for the exact scope.

| Pack                               | 13  | 14  | 15  | 16  | 17  | 18  | 19  | 20  |
| ---------------------------------- | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| Official Odoo Skill Library        |     |     |     |     |     |     |     | yes |
| ursais/ai-skills                   | any | any | any | any | any | any | any | any |
| wpmoo-org/odoo-skills              | yes | yes | yes | yes | yes | yes | yes |     |
| mart337i/odoo-skills               |     |     |     |     | yes | yes | yes | yes |
| unclecatvn/agent-skills            |     |     |     | yes | yes | yes | yes |     |
| fhidalgodev/odoo-development-skill |     | yes | yes | yes | yes | yes | yes | yes |
| letzdoo/claude-marketplace         |     | yes | yes | yes | yes | yes | yes |     |

`ursais/ai-skills` asks which series you target instead of encoding one, so it
works across the OCA series in use.

## Task-specific skills

- [ignify-rd/odoo19-module-development-skill][ignify] - Odoo 19 only,
  distributed on npm as `odoo19-module-development-skill`. Walks every layer
  from models to views to security and calls out the 19-specific syntax changes.
- [miquelalzanillas/odoo-oca-convention-skill][miquel] - OCA conventions and
  OpenUpgrade migration guidance for Odoo 14-19, packaged as the
  `odoo-oca-developer` skill with `init_oca_module.py` and
  `validate_module.py` helpers, the OCA module template and worked examples.
- [txampa/claude-skill-odoo-integration][txampa] - MIT. XML-RPC integration
  patterns for talking to external Odoo instances, versions 8 through 17.
- [stanleykao72/claude-code-spec-workflow-odoo][stanley] - MIT. Spec-driven
  development workflow adapted to Odoo: requirements, design, tasks, then
  implementation.
- [Mindrally/skills][mindrally] - Apache-2.0. Ships an `odoo-development` skill
  and a `python-odoo-cursor-rules` skill inside a 265+ skill library.
- [erpipe-org/mcp-odoo skills][erpipe-skills] - MIT. Four business workflow
  skills driven through its MCP server: `odoo-month-end-close`,
  `odoo-data-quality-gate`, `odoo-migration-copilot` and
  `odoo-agency-fleet-review`.

## MCP servers and tooling

Skills that need live data usually pair with an MCP server.

- [erpipe-org/mcp-odoo][erpipe] - MIT. MCP server for AI agents with gated
  writes and multi-instance support, plus a hosted option.
- [marcfargas/odoo-toolbox][marcfargas] - LGPL-3.0. TypeScript SDK, CLI, skill
  modules and an MCP server for connecting to Odoo; CI-tested against versions
  17 and 18.
- [dannyg-sys/odoo-mcp-server][dannyg] - MIT. 19-tool MCP server for local
  development environments: server control, module management, testing and
  database operations, with `odoo-manage` and `odoo-stream` skills.

## Installing skills

- [Claude Code][claude-code] - Drop a skill folder into `.claude/skills/` in the
  project or `~/.claude/skills/` for every project. Plugin marketplaces install
  the same way through `/plugin marketplace add <repo>`.
- [Codex][], [Copilot CLI][copilot-cli], [OpenCode][] and [Cursor][] - Use
  `.agents/skills/` at the directory where you launch the
  agent, or the harness's own global directory (Cursor uses `~/.cursor/skills`).
  Check your harness's documentation.
- [skills.sh][skills-sh] - Many repositories install with
  `npx skills add <owner>/<repo>`; add `--skill <name>` to pick one skill out of
  a pack.
- npm-packaged packs install with their own CLI: `npx @wpmoo/odoo-skills install`
  or the `odoo19-module-development-skill` CLI, into the current project.

Keep every skill's internal layout (`SKILL.md`, `references/`, `scripts/`)
intact; relative links break otherwise. Restart the agent session after
installing so the skills are picked up.

A skill is instructions your agent will follow, so treat third-party packs like
code: read the `SKILL.md` before installing, and prefer repositories you trust.

## Which skill should I use

| Task                | Start with                                                    |
| ------------------- | ------------------------------------------------------------- |
| New custom module   | Official `odoo-guidelines`, wpmoo addon factory               |
| New OCA module      | ursais `odoo-dev`, OdooEssentials `odoo-oca-contrib`          |
| OCA migration       | ursais `odoo-migrate`, wpmoo `odoo-migration-openupgrade`     |
| Fix from an issue   | ursais `odoo-fix`, unclecatvn `odoo-workflow`                 |
| Code review         | Official `odoo-review`, ursais, mart337i `odoo-code-review`   |
| Security audit      | Official `odoo-security`, wpmoo `odoo-security-review`        |
| Frontend, Owl, SCSS | Official `odoo-web-guidelines`, wpmoo `odoo-frontend`         |
| Tests               | wpmoo `odoo-testing`, OdooEssentials `agentic-testing`        |
| Translations        | ursais `odoo-translate`, wpmoo `odoo-i18n-l10n`               |
| Reports             | mart337i `odoo-report-design`                                 |
| QWeb templates      | sickn33 `odoo-qweb-templates`                                 |
| Commit messages     | Official `odoo-git`, odoo-ps `odoo_commit_message_guidelines` |
| Doodba projects     | letzdoo `odoo-doodba-dev`                                     |

## Contributing

Contributions are welcome. Read [CONTRIBUTING.md](CONTRIBUTING.md) first. In
short: the project must be Odoo-focused, public, maintained within the last
twelve months, and usable by an agent without credentials.

This list is released under [CC0 1.0 Universal](LICENSE).

[official]: https://github.com/odoo/odoo/tree/master/skills
[ursais]: https://github.com/ursais/ai-skills
[wpmoo]: https://github.com/wpmoo-org/odoo-skills
[mart]: https://github.com/mart337i/odoo-skills
[fhidalgo]: https://github.com/fhidalgodev/odoo-development-skill
[letzdoo]: https://github.com/letzdoo/claude-marketplace
[unclecatvn]: https://github.com/unclecatvn/agent-skills
[odooessentials]: https://github.com/OdooEssentials/odoo-ai-skills
[ps]: https://github.com/odoo-ps/ps-ai-skills
[sickn33]: https://github.com/sickn33/agentic-awesome-skills
[ignify]: https://github.com/ignify-rd/odoo19-module-development-skill
[miquel]: https://github.com/miquelalzanillas/odoo-oca-convention-skill
[txampa]: https://github.com/txampa/claude-skill-odoo-integration
[stanley]: https://github.com/stanleykao72/claude-code-spec-workflow-odoo
[mindrally]: https://github.com/Mindrally/skills
[erpipe-skills]: https://github.com/erpipe-org/mcp-odoo/tree/main/skills
[erpipe]: https://github.com/erpipe-org/mcp-odoo
[marcfargas]: https://github.com/marcfargas/odoo-toolbox
[dannyg]: https://github.com/dannyg-sys/odoo-mcp-server
[claude-code]: https://docs.claude.com/en/docs/claude-code/skills
[codex]: https://github.com/openai/codex
[copilot-cli]: https://github.com/github/copilot-cli
[cursor]: https://cursor.com/docs
[opencode]: https://opencode.ai
[skills-sh]: https://skills.sh
