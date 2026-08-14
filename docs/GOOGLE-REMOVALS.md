# Google removal requests that qualify

Use these official tools only. There is no form that deletes public court records because you dislike the caption.

## 1. Results about you (do this first)

Open [https://myactivity.google.com/results-about-you](https://myactivity.google.com/results-about-you) signed into your own Google account.

Add monitoring for:

- Brendan Ngwa Nforbi
- The other spelling you want isolated
- Stockton, California
- The residential address that already appears on aggregator pages
- Any personal phone or email that is not a business listing you want public

Turn on email notifications.

When Google shows a match:

1. Open the result.
2. If **Remove result** is offered, choose **It shows my personal info and I don’t want it there**.
3. Enter the contact info **exactly as it appears on that page** (including the other spelling if that is how the page labels you).
4. Submit and keep the request ID from the confirmation email.

**Query-based removal** is the useful outcome for this project: Google may keep the URL in the index for other searches but stop showing it for queries that contain your name. That is how a Newanforbi aggregator page can drop out of a Brendan Ngwa Nforbi search without the page being deleted.

### What Google will usually refuse

From [Google’s policy](https://support.google.com/websearch/answer/12719076):

- Official court / government sites
- Newspaper and educational sites
- Pages where **you** control the content (edit LinkedIn yourself; do not file a removal on your own site)

### What is worth filing

Commercial pages that reprint a **home address or phone** next to a name, including:

- UniCourt case pages
- PacerMonitor case pages
- BizProfile and similar business-data reprints
- Whitepages / Spokeo / BeenVerified and other people-search results

A full URL list is in [URL-INVENTORY.md](URL-INVENTORY.md).

## 2. Report from the search results page

1. Google the professional name while logged in.
2. Next to a bad result, open the three-dot menu → **About this result** → **Remove result**.
3. Choose personal contact info and complete the flow.

Same policy limits as above. Use this when Results about you missed a URL you can see on the SERP.

## 3. Detailed personal-info form

If you are not using Results about you, or you are filing for a URL behind a paywall:

[https://support.google.com/websearch/contact/content_removal_form](https://support.google.com/websearch/contact/content_removal_form)

Pick the personal-information option. Paste one URL per request when the form requires it. Screenshots help; crop to the address/phone line.

## 4. Outdated cache (only after the source changes)

When a people-search site or aggregator has **already** removed or edited the page, but Google still shows the old title or snippet:

[https://search.google.com/search-console/remove-outdated-content](https://search.google.com/search-console/remove-outdated-content)

This does not hide a live page. It only refreshes a result that is already wrong compared with the live HTML.

## 5. Search Console for *your* site

After `brendanngwanforbi.com` is live:

1. [https://search.google.com/search-console](https://search.google.com/search-console)
2. Add a **URL prefix** property for `https://brendanngwanforbi.com`.
3. Verify (DNS TXT on the domain, or the HTML file they give you — put that file in `site/` and redeploy).
4. Sitemaps → submit `https://brendanngwanforbi.com/sitemap.xml`.
5. URL inspection → request indexing for `/` and `/altamont-freight/`.

Bing: [https://www.bing.com/webmasters](https://www.bing.com/webmasters) — import the Search Console property if offered, and submit the same sitemap.

## 6. What not to file

- DMCA against court dockets or news (not your copyright, and false claims can get the Google account restricted).
- “This is not me” against a page that is you under another spelling. Google treats that as a disputed identity, not a removal category. Isolation is done by not linking the names and by occupying the SERP, not by denying the filing exists.
- Removals for your own LinkedIn or your own website.
