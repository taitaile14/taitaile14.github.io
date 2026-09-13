# Mingtai Zhang — Academic Homepage

Source for the academic homepage of **Mingtai Zhang (张明泰)**, built for PhD applications (Fall 2027).
It presents publications, research experience, systems built, education, honors, and two downloadable CVs.

Based on the open-source [AcadHomepage](https://github.com/RayeRen/acad-homepage.github.io) Jekyll template
(MIT), the same template used by <https://yuchenmiao04.github.io>. Deployed with GitHub Pages.

## Files you will actually edit

| Path | What it holds |
| --- | --- |
| `_pages/about.md` | All page content: About, News, Publications, Research, Beyond Research, Education, Honors, Skills, CV |
| `_config.yml` | Name, bio, email, GitHub handle, site URL, avatar path |
| `_data/navigation.yml` | Top navigation bar |
| `images/mingtai-zhang-profile.jpg` | Profile photo (square, ≥400×400 px) |
| `images/publications/` | Paper teaser images |
| `files/` | CV PDFs and paper PDFs |

## Set your GitHub username

The site URL is `https://<username>.github.io`, so the repository must be named `<username>.github.io`.

```bash
./set_username.sh <your-github-username>
```

This rewrites `url`, `repository`, and `author.github` in `_config.yml`.

## Deploy

```bash
git init && git add -A && git commit -m "Initial homepage"
gh repo create <username>.github.io --public --source=. --push
```

Then open **Settings → Pages** and set *Source: Deploy from a branch*, branch `main`, folder `/ (root)`.
The first build takes 1–2 minutes.

## Local preview

```bash
./preview.sh          # http://127.0.0.1:4000
```

`preview.sh` uses `Gemfile.preview` (Jekyll 4), because the `github-pages` gem pins Jekyll 3.9,
which does not run on Ruby 3.4+ or Ruby 4.x. GitHub Pages builds the live site from `Gemfile`
in its own environment, so the two never conflict.

## Double-blind policy used on this site

Papers under double-blind review are listed **masked**: no title, no venue name, no co-author list.
The two CV PDFs in `files/` are compiled from the LaTeX sources with `\blindtrue`, so they are masked as well.

Checked on 2026-09-13, neither CHI 2027 nor ICLR 2027 forbids listing a submission on a personal homepage;
their anonymity rules bind the submitted PDF, its supplementary material, and the links inside it.
Masking is a self-imposed courtesy that also avoids handing a reviewer the author identity.

### After notification

1. In the CV LaTeX source, switch `\blindtrue` back to `\blindfalse`, recompile, and copy the PDFs into `files/`.
2. In `_pages/about.md`, replace the masked entries under *Under review* with the real title, venue, and co-authors.
3. Add a News line with the acceptance date.

CHI 2027: reviews 2026-11-05, revision 2026-12-03, final notice 2026-12-17. ICLR 2027: decisions 2026-12-16.
