+++
title = 'Debugging One Clue at a Time'
date = 2026-04-08
description = 'A calm, repeatable approach to investigating bugs without changing everything at once.'
taxonomies = { categories = ['Engineering'], tags = ['debugging', 'engineering', 'problem-solving'] }

[extra]
lang = 'en'
math = false
mermaid = false
copy = true
comment = false
reaction = false
+++

When something breaks, the first impulse is often to change several things and see if the problem disappears. That can work by accident, but it makes the real cause harder to find.

A more useful loop is:

1. **Describe the symptom.** What did you expect, and what happened instead?
2. **Make it happen again.** Record the smallest set of steps that reproduces it.
3. **Change one thing.** Choose a change that tests a specific explanation.
4. **Observe the result.** Keep the change if it supports the explanation; otherwise revert it.
5. **Write down the cause.** Leave a short note so the same investigation is easier next time.

For a command-line check, even a tiny record can help:

```text
Expected: the generated page loads its stylesheet
Observed: the page is unstyled
Changed: checked the stylesheet URL in the browser
Found: the URL points to the placeholder domain
```

The aim is not to move slowly. It is to preserve enough evidence that each step makes the next step clearer.
