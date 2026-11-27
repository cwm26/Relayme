# RelayMe site

Static HTML/CSS site. No build step, deploys on any static host (Cloudflare Pages, Netlify, Vercel, Render static).

- Every page carries `noindex, nofollow, noarchive` so the site stays hidden from search until launch. Remove the `<meta name="robots">` tag from each page (and add a sitemap) to go public.
- `start.html` embeds the n8n onboarding form (`/webhook/relayme-onboard`). It only works once the RelayMe Client Onboarding workflow is published.
- `book.html` embeds the RelayMe Calendly page. `booked.html` is the post-booking thank-you page (set as the Calendly redirect).
- Copy is a draft: no performance claims, no client names. Plan contents are not listed on the pricing page yet.
- Do not put secrets or credentials in this repo.
