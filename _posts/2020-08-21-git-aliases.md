---
layout: post
author: Aaron
---

I struggle to believe that it took me 4 years of working with `git` and misspelling `git checkout -b <new_branch>` to find you about [git aliases](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases), allowing me to:

```bash
$ git config --global alias.new "checkout -b"
```

Resulting in:

```bash
aaron@a-thinkpad ~/projects/2ar0n.github.io [? master] $ git new test
Switched to a new branch 'test'
aaron@a-thinkpad ~/projects/2ar0n.github.io [? test] $
```

And while we're here, I also want to share the extremely convenient command

```bash
$ git push -u origin HEAD
```

which avoids having to write out the full branch name on a new branch to push out to the remote.
