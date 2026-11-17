# Contributing

Thanks for helping keep this list useful. Pull requests and issues are welcome.

## What belongs here

A project is a good fit when it is:

- **Odoo-focused** - the skills teach Odoo development, or an Odoo workflow
  (module building, migration, review, translation, testing, operations).
- **Agent-readable** - shipped as an agent skill (`SKILL.md`, or a harness
  plugin/marketplace entry containing one). Plain documentation sets that an
  agent cannot load on demand do not qualify.
- **Public** - installable without an invitation, a paid plan, or a private
  repository.
- **Maintained** - a commit within the last twelve months. Archived or stale
  projects are removed.
- **Described honestly** - state the license, or say that none is shipped.

Related tooling (MCP servers, CLIs) is welcome in the tooling section when it is
the natural companion of a skill pack.

## Adding an entry

1. Pick the right section. Complete packs go under *Complete skill packs*;
   single-purpose skills under *Task-specific skills*.
2. Add a bullet in this shape:

   ```markdown
   - [Display Name][label] -
     One to three sentences. Say what the skills cover, the Odoo versions, the
     license, and how to install it when that is not obvious.
   ```

3. Add the link definition at the bottom of `README.md`, keeping the list of
   definitions alphabetical by label:

   ```markdown
   [label]: https://github.com/owner/repo
   ```

4. If the pack is version-specific, add or extend its row in the *Version
   coverage* table.
5. If the pack fills a gap in *Which skill should I use?*, add the task there.
6. Keep every line at 88 characters or fewer.
7. Run `pre-commit install` once, then `pre-commit run --all-files`. The
   awesome-lint hook runs on every commit that touches `README.md`; CI runs the
   same check. Without pre-commit, `npx awesome-lint` gives the same result.

## Style

- One sentence per idea, present tense, no marketing superlatives.
- Link the repository, not a blog post or a marketplace landing page.
- Use `code` for skill names, commands and file names.
- Do not reorder or rename sections without an issue first.

## Review

Pull requests are checked for the criteria above. An entry can be declined when
it duplicates a maintained pack without adding coverage, when it cannot be
verified, or when it is a thin wrapper around a paid product. Removal follows
the same criteria - open an issue rather than deleting silently.

## License

By contributing you agree that your contributions are released under
[CC0 1.0 Universal](LICENSE).
