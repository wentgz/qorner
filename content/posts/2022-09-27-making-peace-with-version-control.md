+++
title = 'Making Peace with Version Control'
date = 2022-09-27
description = 'A calm way to use commits as checkpoints while you work.'
taxonomies = { categories = ['Engineering'], tags = ['git', 'workflow', 'version-control'] }

[extra]
lang = 'en'
math = false
mermaid = false
copy = true
comment = false
reaction = false
+++

Version control is easier to use when commits are treated as useful checkpoints rather than ceremony. A checkpoint records one coherent change and gives you a place to return to if the next experiment does not work.

Before committing, I ask:

1. Does this change have one clear purpose?
2. Can I describe that purpose in one sentence?
3. Would this checkpoint help me understand the project later?

Small commits are not a contest. A change can span several files if they all contribute to the same result. The goal is to make the history readable enough that another person—or future you—can follow what changed and why.

When a task is uncertain, a checkpoint can be especially useful. It gives you room to try an approach, inspect the result, and revise without losing the working state.
