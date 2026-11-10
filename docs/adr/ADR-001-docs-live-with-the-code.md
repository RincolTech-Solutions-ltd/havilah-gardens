# ADR-001: Docs live with the code

## Status: Accepted

## Context
Havilah Gardens starts small, with two people and ideas arriving through a WhatsApp chat. Decisions made in a chat are
easy to lose. Across Rincol projects, docs kept in a separate place drift away from what is actually built.

## Decision
The vision, ADRs, the Structurizr C4 model (`docs/workspace.dsl`) and the SDD chapters (`docs/sdd/`) live in this
repository next to the code. A pull request that changes how the site works updates the matching doc in the same pull
request. CI validates the C4 model on every change to `docs/`.

## Consequences
- Better: one place to look, docs reviewed together with the code, history in git.
- Worse: every change carries a little doc work.
- Watch for: ADRs that describe a plan which was never built. Mark those Superseded rather than leaving them stale.
