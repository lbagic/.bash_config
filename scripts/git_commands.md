Squash history into one commit

```
git reset $(git commit-tree HEAD^{tree} -m \"A new start\")
```
