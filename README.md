# wiresage.dev

Source for the [WireSage](https://github.com/wiresage) website: one static page in plain HTML and CSS. No build step, no JavaScript, no dependencies.

## Layout

| Path | What it is |
| --- | --- |
| `index.html` | The whole site. |
| `style.css` | All styles. Colors and font stacks are the custom properties at the top. |
| `assets/` | Logo, icon, favicons and the 1200×630 social card, taken from the brand kit. |
| `CNAME` | Custom domain (`wiresage.dev`) for GitHub Pages. |
| `.nojekyll` | Tells GitHub Pages to serve the files as they are, without Jekyll. |
| `design/` | Local design hand-off files. Git-ignored: not source, not deployed. |

Fonts (Outfit, Source Serif 4, JetBrains Mono) load from Google Fonts.

## Preview

Open `index.html` in a browser, or serve the folder:

```sh
python -m http.server 8000
```

## Deploy

GitHub Pages: **Settings → Pages → Deploy from a branch → `main` / `(root)`**. The `CNAME` file sets the custom domain; point the domain's DNS at GitHub Pages.
