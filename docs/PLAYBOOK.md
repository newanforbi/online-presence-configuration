# Playbook: make Google show Brendan Ngwa Nforbi, not Newanforbi

## The actual problem

A search for **Brendan Ngwa Nforbi** currently returns two kinds of pages:

**Accurate for this name**

- LinkedIn: [https://www.linkedin.com/in/bngwanforbi](https://www.linkedin.com/in/bngwanforbi) — software developer in training, Stockton, owner-operator of Altamont Freight LLC.
- California business records for Altamont Freight LLC, where the manager / agent is listed as Brendan Ngwa Nforbi.

**Not this spelling, but still ranking**

- Court-aggregator pages (UniCourt, PacerMonitor, and similar) captioned **Brendan Ngehsi Newanforbi**.
- Data-broker and people-search pages that attach both spellings to the same city and the same residential address.

Google is not “confused” at random. It is matching tokens:

| Signal | What Google sees |
| --- | --- |
| Shared given name | `Brendan` on both sets of pages |
| Last-name overlap | `Nforbi` is the tail of `Newanforbi` |
| Shared place | Stockton, California |
| Shared address on aggregators | The same residential street on court reprints and on the Altamont Freight agent listing |
| Account username | This GitHub user is `newanforbi` while the project is about Brendan Ngwa Nforbi |

There is also a **different** LinkedIn user named Brendan Ngwa Nforbi (Boys & Girls Clubs of Silicon Valley, San Jose). The official site in `site/` disambiguates by city (Stockton) and employer (Altamont Freight LLC). Do not mention that other person by employer; location + company is enough.

## What “disappear” can mean

| Goal | Realistic outcome |
| --- | --- |
| Newanforbi pages vanish from the internet | No. Public court records stay public. |
| Newanforbi pages vanish from *all* Google queries | Almost never, especially for `.gov` and news. |
| Newanforbi pages stop showing in the query `Brendan Ngwa Nforbi` | Yes, this is the reachable goal. Fill page one with exact-name properties, remove address glue, and never cross-link. |
| Home address / phone stop appearing in snippets | Often yes, via Results about you, on commercial pages. |
| People-search “aka” listings | Yes, via each site’s opt-out, then a Google outdated-cache request. |

Google’s own policy: it will not remove results from government, education, or newspaper sites even when they show a home address. Commercial reprints (UniCourt, PacerMonitor, BizProfile, Spokeo) are the ones worth reporting.

## The unlink rule

Treat the two spellings as **two public identities that must never point at each other**.

On every property that should rank for Brendan Ngwa Nforbi:

- Use exactly **Brendan Ngwa Nforbi**.
- Do not write Newanforbi, Ngehsi, “also known as,” former names, or a combined legal-name line.
- Do not add `alternateName` or extra `sameAs` URLs in schema for the other spelling. That would *tell* Google they are the same person.
- Do not publish a street address. City and state only: Stockton, California.

On properties that already use the other spelling (the current GitHub user, any page you do not control):

- Do not add Brendan Ngwa Nforbi as the display name, website, or company.
- Do not link them to `brendanngwanforbi.com` or the LinkedIn `bngwanforbi` profile.

Zero links in either direction is what makes the queries separate over time.

## Occupy the search results

Google ranks what it can fetch. Right now the professional name has almost no owned pages, so aggregators fill the gap. The `site/` folder is a complete, indexable homepage plus a company page. After it is live on a custom domain:

1. LinkedIn website field → the custom domain.
2. Google Search Console → submit the sitemap.
3. Create only as many extra profiles as you will actually keep updated, each with the same name string, the same city, and a link to the official site:

   - New GitHub user (software work only)
   - Google Business Profile for **Altamont Freight LLC** (business name in the listing; your personal name in the owner field as Brendan Ngwa Nforbi)
   - One writing profile if you publish (Dev.to or Medium), byline exactly Brendan Ngwa Nforbi

A handful of consistent, linked pages beats a scatter of abandoned ones.

## GitHub is currently a leak

`https://github.com/newanforbi` is a public username that will keep the other spelling in circulation. Do **not** rename that user to something that includes Ngwa or Nforbi — GitHub keeps a redirect from the old login, which is an explicit cross-link.

Instead:

1. New account for the professional name.
2. Leave `newanforbi` without the professional display name, without the new website, and preferably with this configuration repo set to **private**.
3. Put software projects you want found on the new account only.

## Business listings

Altamont Freight LLC is a real California LLC (filed 7 July 2022, document 202251417772). Third-party sites such as BizProfile reprint the registered-agent **street address**. That address is one of the strongest glues between the two names.

- You cannot delete the Secretary of State record.
- You *can* ask Google to hide the residential address on **commercial reprints** (see [GOOGLE-REMOVALS.md](GOOGLE-REMOVALS.md)).
- You *can* stop publishing that street address anywhere new.
- If the registered-agent address is your home, ask a California business-filings service or an attorney whether a commercial agent address would reduce future reprints. That is a filings decision, not a Google trick.

## Future court captions

If a court already has a case under the other spelling, that caption stays. This kit does not change court records.

For **new** professional web pages, keep using Brendan Ngwa Nforbi only. If you want future legal captions to match the professional name, that is a question for a California attorney (legal-name usage, not SEO). Do not file under a name the court would treat as false.

## Measurement

Once a month, in an incognito window:

1. `Brendan Ngwa Nforbi`
2. `"Brendan Ngwa Nforbi"`
3. `Brendan Ngwa Nforbi Stockton`
4. `Brendan Ngwa Nforbi Altamont Freight`

You want: official site, LinkedIn, Search Console-verified properties, then business directories. You do not want: aggregator captions in the other spelling on page one of query 1.

Separately search the other spelling so you know it still exists — the success condition is **isolation**, not deletion.
