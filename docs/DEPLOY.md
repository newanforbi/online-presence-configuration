# Deploy the official site (without leaking the other username)

The public files are everything under `site/`. They must be served at a **custom domain** whose hostname contains the professional name, for example `brendanngwanforbi.com`.

## Do not do this

- Do not enable GitHub Pages on `newanforbi/online-presence-configuration`.
- Do not use `https://newanforbi.github.io/…` as the canonical URL.
- Do not leave this repository public.

Either of those puts the other spelling in the official URL or in Google’s copy of this playbook.

## Recommended path: Cloudflare Pages + new GitHub user

1. Register `brendanngwanforbi.com` at any registrar.
2. Create a GitHub user that is **not** `newanforbi` (see CHECKLIST.md).
3. Create a **public** repo on that new user named `brendanngwanforbi.com` (or `website`).
4. Copy **only** the contents of `site/` into that repo — not `docs/`, not this playbook, not the URL inventory.
5. In Cloudflare Pages (or Netlify): new project → that public repo → output directory `/` (the repo root is already the site).
6. Add the custom domain. Cloudflare will give you DNS records; put them at the registrar.
7. Confirm `site/CNAME` matches the domain.
8. Open `https://brendanngwanforbi.com` and view-source to confirm the JSON-LD still uses that origin.

Replace every occurrence of `brendanngwanforbi.com` in `site/` if you chose a different domain (`index.html`, `altamont-freight/index.html`, `sitemap.xml`, `robots.txt`, `CNAME`, `humans.txt`, `llms.txt`).

## Search Console after DNS works

1. https://search.google.com/search-console — add `https://brendanngwanforbi.com`
2. Verify with a DNS TXT record (preferred) or the HTML file they generate
3. Submit `https://brendanngwanforbi.com/sitemap.xml`
4. URL Inspection → Request indexing on `/` and `/altamont-freight/`

## Local preview

From the `site/` directory:

```bash
python3 -m http.server 8080
```

Then open http://127.0.0.1:8080

Before every deploy, from the repo root:

```bash
bash scripts/assert-clean-site.sh
```

That script fails if the public site ever mentions the other spelling, a street address, or the `newanforbi` GitHub user.

## After go-live

Add the URL as the LinkedIn website and as `sameAs` is already in the page’s JSON-LD for LinkedIn only. Give Google a week or two of crawling, then check an incognito search for `Brendan Ngwa Nforbi`.
