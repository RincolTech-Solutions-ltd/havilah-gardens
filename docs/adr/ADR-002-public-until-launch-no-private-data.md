# ADR-002: Public until launch, with no private data in the repository

## Status: Accepted

## Context
A public repository gets GitHub's hosted CI runners for free. Rincol also has self-hosted runners that private
repositories can use. The product ideas come from private chats that hold prices, costs, supplier details and personal
messages. Once something is public it can be copied or indexed, and making the repository private later does not
remove it from git history or from copies.

## Decision
The repository starts public under the Rincol Tech Solutions organisation and moves to private when Hillary decides
the time is right (at the latest before taking real orders online). CI jobs read the runner from the repository
variable `CI_RUNS_ON` (default `ubuntu-latest`), so moving to Rincol's self-hosted runners is a variable change, not a
code change.

While it is public, the repository never holds: buying prices, costs, margins, supplier names or terms, phone numbers,
home addresses, payment details, secrets, or text copied from private chats. Customer-facing selling prices are
allowed once Esther approves them. Private business detail stays in the private chat and in Hillary's own notes.

## Consequences
- Better: free CI now; one switch to go private later.
- Worse: some useful context (costs, suppliers) has to live outside the repository.
- Watch for: a pull request or issue that quotes a private chat. Reviewers check for it. If it slips in, removing it
  takes a history rewrite, so keep it out from the start.
