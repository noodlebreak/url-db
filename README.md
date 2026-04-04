# urlDB

A bare-bones link & text sharing app with **no backend**. Your data is compressed and encoded directly into the URL itself — the URL *is* the database.

## Demo

**[https://noodlebreak-url-db.pgs.sh/](https://noodlebreak-url-db.pgs.sh/)**

## How it works

Everything you add gets LZ-compressed and stored in the URL hash. When someone opens that URL, the data is decompressed and displayed. Optionally, you can encrypt it with a password using AES-256-GCM.

## Why it works

While a safe URL limit is ~2,000 characters, browsers can technically handle far more. Chrome supports up to 2MB (2,097,152 characters) — enough for ~20,000 short links. There is no strict max length defined by the HTTP protocol itself.

### Limits by platform

| Platform | Limit |
|---|---|
| Chrome | 2MB (2,097,152 chars) |
| Firefox | 65,536+ chars |
| Safari | 80,000+ chars |
| Apache | ~4,000–8,192 chars |
| Cloudflare/Google/Azure | 16KB |
| AWS | 8K |

Your mileage may vary depending on the sharing medium.

## Features

- **No backend** — data lives entirely in the URL
- **LZ compression** — minimizes URL length
- **AES-256-GCM encryption** — optional password protection
- **Import/Export** — supports `.txt` and `.json` files
- **Single HTML file** — zero build steps, zero dependencies (besides LZ-string CDN)

## Deploy

Host `index.html` anywhere that serves static files. For example, with [pico.sh](https://pico.sh) pages:

```bash
rsync --delete -rv --exclude '.git*' --exclude 'pico-command.sh' . pgs.sh:/url-db
```
