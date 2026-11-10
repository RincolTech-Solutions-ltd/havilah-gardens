# ADR-003: Phase 1 is a static catalogue site with orders through WhatsApp

## Status: Accepted (10 Nov 2026)

## Context
Havilah Gardens has no online demand data yet and a small team. A full shop (accounts, basket, payments, stock) costs
time to build and run, and the first market is Uganda, where mobile money needs a payment provider to be set up first. Customers in our
markets already buy from small businesses through WhatsApp.

## Decision
Phase 1 is a fast static website: a home page, the product catalogue, one page per product, and an about page. Each
product is one content file (name, size, price, photos, short story), so adding a product is adding a file. The
"Order" button opens WhatsApp with a message that already names the product. There is no server, no database and no
customer accounts.

Built with Astro and hosted on Cloudflare Pages (free tier), with a preview link for each pull request so Esther can
see changes before they go live. Online payment, a basket and order tracking are phase 2, decided in a later ADR once
phase 1 shows demand.

## Consequences
- Better: live in days, almost nothing to run or secure, very fast on phones, good for search.
- Worse: orders are handled by hand in WhatsApp; no stock count online.
- Watch for: the WhatsApp number shown on the site becomes public. Use a business number, not a personal one.
