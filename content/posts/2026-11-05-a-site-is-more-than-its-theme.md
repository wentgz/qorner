+++
title = 'A Site Is More Than Its Theme'
date = 2026-11-05
description = 'The difference between a visual theme and a complete website project.'
taxonomies = { categories = ['Web'], tags = ['themes', 'zola', 'content'] }

[extra]
lang = 'en'
math = false
mermaid = false
copy = true
comment = false
reaction = false
+++

A theme controls how a site looks and how its pages are arranged. It can provide templates, styles, scripts, icons, and reusable components. The site still needs content and configuration to tell the generator what pages to create.

For a Zola site, that usually means a configuration file plus Markdown files under `content/`. A home page can live at `content/_index.md`; blog posts can live in a section such as `content/posts/`.

This distinction also matters when a hosting service builds from Git. The build service checks out the files that are committed to the repository. If the local `content/` directory is ignored by Git, it will not be present in that checkout.

## A useful mental model

Think of the theme as the layout and the content as the material placed into that layout. Zola combines both with the configuration, then writes the finished site to `public/`.

That makes deployment easier to reason about: check that the source is in the repository, check that the build creates the expected files, and then check that the host publishes those files.
