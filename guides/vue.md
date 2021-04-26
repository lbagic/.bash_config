# Vue3 project setup

Run `vue create {projectName}` and select the following options...

- Manually select feature
- Check the features needed for your project:
  - Choose Vue version, Babel, TypeScript, Router, Vuex, CSS Pre-processors
- Choose a version: 3.x
- Use class-style component syntax: No
- Use Babel alongside TypeScript: No
- Use history mode for router: Yes
- Pick a CSS pre-processor: Sass/SCSS (with dart-sass)
- Pick a linter / formatter config: ESLint + Prettier
- Pick additional lint features: Lint on save
- Where do you prefer placing config: In dedicated config files

---

### Setup linters and formatters

- install [prettier extension](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- install [eslint extension](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- install [vetur extension](https://marketplace.visualstudio.com/items?itemName=octref.vetur)
- create `.vscode/settings.json` with the following settings

```json
{
  // -------------------------- FORMATTERS --------------------------
  "files.eol": "\n",
  "editor.tabSize": 2,
  "editor.insertSpaces": true,
  "editor.detectIndentation": false,
  "editor.formatOnSave": true,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true,
    "source.organizeImports": true
  },
  "eslint.format.enable": true,
  "eslint.validate": ["javascript", "typescript", "html", "vue"],
  "prettier.arrowParens": "avoid",
  "prettier.semi": false,
  "prettier.singleQuote": true,
  "prettier.trailingComma": "all",
  "prettier.printWidth": 80,
  "vetur.completion.autoImport": true,
  "vetur.validation.template": false,
  "vetur.format.defaultFormatterOptions": {
    "prettier": {
      "arrowParens": "avoid",
      "semi": false,
      "singleQuote": true,
      "trailingComma": "all",
      "printWidth": 80
    }
  },
}
```

- append the following rules to `.eslintrc.js`

```js
{
  "rules": {
    "prettier/prettier": [
      "warn",
      {
        "singleQuote": true,
        "semi": false,
        "trailingComma": "all",
        "arrowParens": "avoid",
        "printWidth": 80
      }
    ],
  }
}
```

---

### Configure loose typings for TypeScript (not recommended)

- append the following rules to `.eslintrc.js`

```json
{
  "rules": {
    "@typescript-eslint/explicit-module-boundary-types": 0,
    "@typescript-eslint/no-explicit-any": 0
  }
}
```

- append the following rules to `tsconfig.json`

```json
{
  "compilerOptions": {
    "noImplicitAny": false,
    "noImplicitThis": false,
    "noImplicitReturns": false
  }
}
```
