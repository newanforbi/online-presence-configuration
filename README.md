# Online presence for Brendan Ngwa Nforbi

This repository is an **owner-only control kit**. It does two jobs:

1. Ships a public website that should become the official Google result for **Brendan Ngwa Nforbi**.
2. Gives you a private checklist to stop a different spelling — **Newanforbi** — from riding along in that search.

## Make this repository private first

This GitHub account is currently `newanforbi`. If this repo stays public, Google can index these playbooks and **permanently connect the two names**. That is the opposite of the goal.

In GitHub: **Settings → Change repository visibility → Private**.

Do this before you merge, and do not enable GitHub Pages on this account. The public site must live on a **custom domain** (recommended: `brendanngwanforbi.com`) under a GitHub user that is **not** `newanforbi`.

## What this can and cannot do

Google does not let anyone erase public court records or force a spelling to vanish from the index. What *does* work:

- Fill page one of `Brendan Ngwa Nforbi` with pages you control that use **only** that name.
- Never cross-link the two spellings (no `aka`, no `sameAs`, no schema `alternateName`).
- Ask Google to hide **home address / phone / email** snippets via [Results about you](https://myactivity.google.com/results-about-you).
- Opt out of people-search sites that glue both names to the same address.

Court-aggregator pages titled Newanforbi will keep existing. The aim is that they stop ranking for the Brendan Ngwa Nforbi query because stronger, exact-name pages occupy those slots.

## Start here

| Order | File | What you do |
| --- | --- | --- |
| 1 | [docs/CHECKLIST.md](docs/CHECKLIST.md) | Work the actions in sequence |
| 2 | [docs/PLAYBOOK.md](docs/PLAYBOOK.md) | Understand why the names mix and how to separate them |
| 3 | [site/](site/) | Deploy the official page to a clean domain |
| 4 | [docs/DEPLOY.md](docs/DEPLOY.md) | Host the site without leaking the other username |
| 5 | [docs/GOOGLE-REMOVALS.md](docs/GOOGLE-REMOVALS.md) | File the Google requests that actually qualify |
| 6 | [docs/PEOPLE-SEARCH-OPT-OUTS.md](docs/PEOPLE-SEARCH-OPT-OUTS.md) | Remove broker listings that alias the names together |
| 7 | [docs/PROFILE-COPY.md](docs/PROFILE-COPY.md) | Paste-ready text for LinkedIn and other profiles |
| 8 | [docs/URL-INVENTORY.md](docs/URL-INVENTORY.md) | Pages currently mixing the names |

The public site is in `site/`. It is written so a `scripts/assert-clean-site.sh` check fails if the other spelling, a street address, or the `newanforbi` GitHub user ever lands in that folder.
