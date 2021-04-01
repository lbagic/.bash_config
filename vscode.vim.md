### basic

- `i` - insert mode
- `w, b, e, ge` - move by word
- `f` / `F` - find next / previous character
- `%` - jump to matching brackets
- `0` / `$` - go to start / end
- `*` / `#` - search next / previous word under cursor
- `gg` / `G` / `{num}G` - go to start / end / line
- `/{text}` - search for text

  - `n` / `N` - next / previous occurence

- `x` / `X` - delete delete current / previous char
- `d` - delete
- `r` - replace one character
- `.` - repeat last command
- `u` / `C-r` - undo / redo

- `v` - visual mode

### ...

- `ci` + `< { [ ' "` - change inside
- `gd` - jump to definition
- `gb` - adds another cursor on the next word it finds which is the same as the word under the cursor
- `af` - visual mode command which selects increasingly large blocks of text
- `gh` - equivalent to hovering your mouse over wherever the cursor is

- `\w` - Move forward to the start of the next Case or snake_case word segment
- `\e` - Move to the next end of a camelCase or snake_case word segment
- `\b` - Move back to the prior beginning of a camelCase or snake_case word segment

### search

- `\\/<text>` || `/<text>` - search text
- `\\s<char>` - search char
- `:s/find/replace/gcI`

### replace word with copy

- `bvep`
- `cw` > `C-r` > `0`
