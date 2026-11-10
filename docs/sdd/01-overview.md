## 1. Overview

The Havilah Gardens website is the shop window for Havilah Gardens planters, pots and flowers. The goals, the people
and the open questions are in `docs/vision.md`.

### Phase 1

A static site (ADR-003). Each product is one content file. The build turns those files into a catalogue and one page
per product. The "Order" button opens WhatsApp with the product named in the message, and Esther answers by hand.

Changes reach the site through pull requests. Each pull request gets a preview link; merging to `main` deploys.

### Later phases

Online payment, a basket, delivery fees and order tracking come only after phase 1 shows real demand, and each gets
its own ADR before it is built.

### Constraints

- First market is Uganda: prices in UGX with no decimals.

- Public repository until Hillary decides to make it private; no private data in it (ADR-002).
- Every screen follows `docs/ui-rules.md`.
