`npx eslint --init`
`npm i eslint-config-prettier eslint-plugin-prettier prettier -D`

add to eslint config

```
extends: ["airbnb-base", "prettier"],
plugins: ["prettier"],
rules: {
  "prettier/prettier": "error",
}
```
