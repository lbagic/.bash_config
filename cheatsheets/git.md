Squash history into one commit

```
git reset $(git commit-tree HEAD^{tree} -m "1.0 release candidate")
```
