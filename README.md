# Havilah Gardens

Havilah Gardens makes and sells planters, pots and flowers. This repository holds the website that shows and sells
them, and the documents that explain how it is built.

Esther leads the products: what we make, how it looks and how it is sold. Hillary leads the build. The work is run
under Rincol Tech Solutions.

## Where to start

| You want to know | Read |
| --- | --- |
| What Havilah Gardens is and what the site must do | [docs/vision.md](docs/vision.md) |
| How a product idea becomes work on the site | [docs/ideas/README.md](docs/ideas/README.md) |
| Why things are built the way they are | [docs/adr/](docs/adr/) |
| The architecture (C4 model) | [docs/workspace.dsl](docs/workspace.dsl) and [docs/sdd/](docs/sdd/) |
| How every screen must look and feel | [docs/ui-rules.md](docs/ui-rules.md) |

## Browse the architecture

```
docker run -it --rm -p 8080:8080 -v "$PWD/docs:/usr/local/structurizr" structurizr/lite
```

Then open http://localhost:8080. CI validates the model on every change (`.github/workflows/architecture-model.yml`).

## This repository is public for now

It is public so CI runs free on GitHub's runners. It will go private before launch (see
[ADR-002](docs/adr/ADR-002-public-until-launch-no-private-data.md)). Until then, nothing private goes in here: no costs,
margins, supplier prices, phone numbers, addresses or personal messages.
