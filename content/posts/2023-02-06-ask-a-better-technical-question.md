+++
title = 'Ask a Better Technical Question'
date = 2023-02-06
description = 'A compact structure for describing a problem and getting more useful help.'
taxonomies = { categories = ['Learning'], tags = ['communication', 'debugging', 'questions'] }

[extra]
lang = 'en'
math = false
mermaid = false
copy = true
comment = false
reaction = false
+++

A clear technical question saves time for everyone involved. It does not need to include every detail about a project; it needs enough context for someone else to understand the specific problem.

I like to include four parts:

- **Goal:** what I am trying to do.
- **Expected result:** what I thought would happen.
- **Actual result:** what happened instead, including the exact error if there is one.
- **What I tried:** the checks or changes I have already made.

For example, “My build is broken” is hard to investigate. “I expect the static build to create `public/index.html`; the command exits successfully, but that file is missing. I checked the output directory and found only the assets” gives someone a place to start.

Writing the question can also reveal the next check. If the expected result is not clear yet, that may be the first thing to verify.
