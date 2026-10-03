# UngalSoththu — GitHub Pages site

Public archive for the **UngalSoththu (உங்கள் சொத்து)** desk: daily Chennai/Tamil Nadu
transit news briefs and weekly grievance-redress audits, rendered from the workspace
notes. Live at:

**https://cashlessconsumer.github.io/ungalsoththu/**

## How it updates

- Canonical sources stay in the workspace: `UngalSoththu/notes/*-daily-transit-brief*.md`
  and `UngalSoththu/notes/*transit-grm-weekly*.md`.
- `scripts/build.py` copies those notes into `briefs/` and `reports/`, renders each to
  HTML via pandoc, and regenerates `index.html` (counts, dates, thread links).
- `scripts/publish.sh` = build + commit + push. The daily brief automation and the
  weekly GRM automation each end by running it, so the site updates itself.

Manual update:

```bash
bash /home/workspace/UngalSoththu/site/scripts/publish.sh
```

## Layout

- `index.html` — hub: brief archive + GRM weeklies + desk intro (generated; do not hand-edit)
- `briefs/` — one `.md` source + `.html` page per daily brief
- `reports/` — weekly GRM audit pages
- `og.png` — social card (identity OG asset)
- `scripts/` — build + publish tooling

Identity/branding source of truth: `Identities/ungalsoththu.yaml` (palette, fonts, handles).
