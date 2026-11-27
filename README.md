# RelayMe site

Static HTML/CSS site. No build step, deploys on any static host (Cloudflare Pages, Netlify, Vercel, Render static).

- Every page carries `noindex, nofollow, noarchive` so the site stays hidden from search until launch. Remove the `<meta name="robots">` tag from each page (and add a sitemap) to go public.
- `start.html` is the signup/onboarding form, served from this site (no iframe). It posts to the RelayMe Client Onboarding workflow in n8n (`/webhook/relayme-onboard-submit`), then sends the client on to connect LinkedIn. Pricing buttons link to `start.html?plan=starter|pro|teams`.
- `book.html` embeds the RelayMe Calendly page. `booked.html` is the post-booking thank-you page (set as the Calendly redirect).
- Copy is a draft: no performance claims, no client names. Plan contents are not listed on the pricing page yet.
- Do not put secrets or credentials in this repo.

## Deploying on Railway

New service -> GitHub Repo -> this repo. Leave Root Directory empty; Railway builds the
`Dockerfile` (nginx serving the files as they are). Then Settings -> Networking -> add a
domain. No variables are needed.
