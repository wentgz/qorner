# Qorner

A sample personal website powered by [Zola](https://www.getzola.org/), a static site generator. Its theme, **Qorner**, is a fork of the [Serene](https://github.com/isunjn/serene) theme.

## Requirements

- [Zola](https://www.getzola.org/documentation/getting-started/installation/)
- Optional: Docker and Docker Compose

## Run locally

```sh
zola serve
```

Open the local URL printed by Zola (usually `http://127.0.0.1:1111`). Zola rebuilds the site when you edit files.

Alternatively, with Docker Compose:

```sh
docker compose up --build
```

## Personalize it

1. Edit `config.toml`: set `base_url`, site title and description, your display name, bio, avatar, social links, and footer text.
2. Replace `static/img/demo-avatar.svg` with your own image, then update `avatar` in `config.toml`. Keep images you reference under `static/`.
3. Edit `content/about/_index.md` and `content/about/card.toml` for the About page.
4. Edit `content/contact/contact.toml` for your contact links. Remove the Contact page from `sections` in `config.toml` if you do not need it.
5. Replace `content/posts/2026-01-01-welcome.md` with your own Markdown post. Add more `.md` files to `content/posts/`. Keep `content/posts/_index.md`; it configures the blog section and its templates.
6. Adjust `sections` in `config.toml` to choose which pages appear in the navigation.

The `templates/`, `sass/`, `static/js/`, and `static/icon/` directories contain Qorner’s layout, styles, and assets.

## Build for deployment

```sh
zola build
```

The generated static site is written to `public/`. For a static hosting provider such as Vercel or Netlify, configure the build command as `zola build` and the publish/output directory as `public`. Make sure the build environment has Zola installed; use the same Zola version locally and in CI. Set `base_url` in `config.toml` to the final site URL before publishing.

## Notes

- Qorner is a fork of [Serene](https://github.com/isunjn/serene), which is distributed under the MIT License. The original license notice is included in `LICENSE`. Check licenses for any other third-party assets you add.
