# Python

---

### Setup linters and formatters

- install [python vscode extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
- install black python package `pip3 install black`
- create `.vscode/settings.json` with the following settings

```json
{
  // -------------------------- FORMATTERS --------------------------
  "files.eol": "\n",
  "editor.tabSize": 2,
  "editor.insertSpaces": true,
  "editor.detectIndentation": false,
  "editor.formatOnSave": true,
  "python.formatting.provider": "black",
  "[python]": {
    "editor.defaultFormatter": null,
    "editor.tabSize": 4
  },
}
```