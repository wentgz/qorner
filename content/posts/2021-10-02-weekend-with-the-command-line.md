+++
title = 'A Weekend with the Command Line'
date = 2021-10-02
description = 'A few small shell commands that make everyday file work easier.'
taxonomies = { categories = ['Tools'], tags = ['terminal', 'shell', 'workflow'] }

[extra]
lang = 'en'
math = false
mermaid = false
copy = true
comment = false
reaction = false
+++

The command line becomes less intimidating when it starts with ordinary tasks. Listing files, searching text, and checking the current directory are useful before any complicated scripting begins.

Here are three commands I reach for often:

```sh
pwd                 # show the current directory
find . -type f      # list files under the current directory
rg "TODO" .        # search project files for TODO markers
```

The important part is not memorizing every option. It is learning how to combine a small number of commands to answer a question. For example: “Which files contain this setting?” is a useful task to practice before editing configuration across a project.

Start with commands that are read-only. Once their output makes sense, add commands that change files—and check the result after each change.
