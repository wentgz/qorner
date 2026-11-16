+++
title = 'A First Static Site Deploy'
date = 2026-05-16
description = 'What a static site generator does, and the few pieces needed to publish the result.'
taxonomies = { categories = ['Web'], tags = ['zola', 'static-sites', 'deployment'] }

[extra]
lang = 'en'
math = false
mermaid = false
copy = true
comment = false
reaction = false
+++

A static site generator takes source files—configuration, templates, styles, and content—and turns them into files a web server can deliver directly. Those generated files are usually HTML, CSS, JavaScript, images, and feeds.

That gives the project two distinct parts:

- **The source:** the files used to build the site.
- **The output:** the generated site that visitors open in a browser.

With Zola, `zola build` writes the output to `public/` by default. A hosting provider needs that directory, while a connected build service also needs the source files so it can run the command again after a change.

## A short deployment checklist

- Set the site’s `base_url` to its real published address.
- Make sure the home page and other content files are committed.
- Build the site and check that `public/index.html` exists.
- Configure the host to publish `public/`.
- Open the deployed site and check both the page and its asset requests.

The first successful build is only one checkpoint. Looking at the deployed page in a browser confirms that its links and assets point to the right place too.
