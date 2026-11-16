+++
title = 'Why I Keep a Changelog'
date = 2024-12-09
description = 'A short changelog helps people understand what changed between releases.'
taxonomies = { categories = ['Projects'], tags = ['documentation', 'releases', 'maintenance'] }

[extra]
lang = 'en'
math = false
mermaid = false
copy = true
comment = false
reaction = false
+++

A changelog is a record of changes that matter to users. It is different from a raw commit list: commits describe development steps, while a changelog summarizes what someone can now do or what behavior has changed.

For a small project, a useful entry can be only a few bullets:

- **Added:** a new way to filter the list.
- **Changed:** the default sort order now shows recent items first.
- **Fixed:** an empty search no longer hides every result.

The wording should answer “What changed for me?” Avoid listing internal refactors unless they affect setup, performance, or future use.

Writing the notes as changes happen is easier than reconstructing them at release time. A short draft beside the work gives you a reminder of the user-facing result and makes the final release easier to explain.
