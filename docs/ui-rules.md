# UI house rules

Every page of the Havilah Gardens site follows these rules. They come from the Rincol product UI rules
(`~/.claude/skills/product-ui-craft`), cut down to what a product catalogue needs. Run the scanner on changed files
before every UI pull request:

```
python3 ~/.claude/skills/product-ui-craft/scan.py <file-or-dir> [...]
```

## The products are the hero

- Large, real photos of the actual product in natural light, all in the same aspect ratio. No stock photos posing as
  ours and no AI images presented as real products.
- Each product card shows the photo, the name, the size and the price, and nothing else.
- The price is in the local currency with no decimals for UGX, currency first ("UGX 85,000"), using tabular figures.

## Banned (each one looks "AI-generated")

- A coloured stripe on any edge of a card, alert or header.
- Purple or violet as the brand colour, gradients, glow, glassmorphism.
- Emoji as icons; an icon on every heading.
- Template layouts: three identical feature cards in a row, a card inside a card, "01 / 02 / 03" labels, a chip above
  every title.
- Bounce easing, pulsing dots, `transition: all`.
- Marketing filler words ("Elevate", "Unlock", "Seamless").

## Use instead

- A neutral base (off-white, near-black), one brand colour from the Havilah brand once Esther picks it, and greens only
  where they mean plants, not status.
- At most 4 text sizes plus 1 display size, and 2 weights.
- Touch targets at least 48 by 48px. On a phone, the product page has one sticky "Order on WhatsApp" button at the bottom.
- Motion 100 to 250ms, ease-out, `transform` and `opacity` only, and respect `prefers-reduced-motion`.
- Plain, warm copy in short sentences, written as Esther would say it.

## Check before you finish

Take phone-size screenshots (412 by 900) of every page you changed and look at them. If it looks like a template, redo it.
