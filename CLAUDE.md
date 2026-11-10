# Havilah Gardens: rules for agents and contributors

1. **Public repo, no private data (ADR-002).** Never commit costs, margins, buying prices, supplier names or prices,
   phone numbers, home addresses, payment details or anything copied from a private chat. Selling prices shown to
   customers on the site are fine once Esther has approved them. When in doubt, leave it out and note it as a question.
2. **Docs live with the code (ADR-001).** A change that alters how the site works updates `docs/workspace.dsl`, the
   matching `docs/sdd/` chapter, or adds an ADR in the same pull request. ADRs use the format in `docs/adr/`.
3. **Esther owns product decisions.** What we sell, names, photos, prices and wording come from her. Do not invent
   products, prices or claims. Use a clearly marked placeholder and open an `idea` issue instead.
4. **Ideas enter through issues.** Every idea from the Havilah Group WhatsApp chat becomes an issue labelled `idea`
   (see `docs/ideas/README.md`). Work starts from an issue, and the pull request links it.
5. **UI follows `docs/ui-rules.md`.** Run `python3 ~/.claude/skills/product-ui-craft/scan.py <changed files>` before a
   UI pull request and fix every hit.
6. **Merging.** Green CI plus an independent review with no must-fix. No Claude co-author trailers or PR footers.
