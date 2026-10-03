# wiresage.dev

Source for the [WireSage](https://github.com/wiresage) website: one static page in plain HTML and CSS. No build step, no JavaScript, no dependencies.

## Layout

| Path | What it is |
| --- | --- |
| `index.html` | The whole site, one page. The logo and the mark are inline SVG so their arcs can animate. |
| `style.css` | All styles. Colors and font stacks are the custom properties at the top. |
| `assets/` | Favicons and the 1200×630 social card, taken from the brand kit. |
| `CNAME` | Custom domain (`wiresage.dev`) for GitHub Pages. |
| `.nojekyll` | Tells GitHub Pages to serve the files as they are, without Jekyll. |
| `Dockerfile`, `nginx.conf` | nginx image that serves the site: non-root, port 8080, gzip and cache/security headers. |
| `docker-compose.yml` | Runs that image. |
| `.dockerignore` | Keeps `design/` and `.git` out of the Docker build. |
| `design/` | Local design hand-off files. Git-ignored: not source, not deployed. |

Fonts (Outfit, Source Serif 4, JetBrains Mono) load from Google Fonts.

## Preview

Open `index.html` in a browser, or serve the folder:

```sh
python -m http.server 8000
```

## Docker

```sh
docker compose up -d --build   # http://localhost:8089
docker compose down
```

Another host port: `PORT=9000 docker compose up -d`. Without Compose:

```sh
docker build -t wiresage-dev .
docker run --rm -p 8089:8080 wiresage-dev
```

## Deploy

GitHub Pages: **Settings → Pages → Deploy from a branch → `main` / `(root)`**. The `CNAME` file sets the custom domain; point the domain's DNS at GitHub Pages.
