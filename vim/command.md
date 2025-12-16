# Vim Commands

## カーソル移動 (Cursor Movement)

### 絶対的な位置移動 (Absolute Position Movement)

| コマンド (Command) | 説明 (Description)                                               |
| :----------------- | :--------------------------------------------------------------- |
| `gg`               | ファイルの先頭へ移動 (Go to the first line)                      |
| `G`                | ファイルの末尾へ移動 (Go to the last line)                       |
| `:{n}` / `{n}G`    | 指定した行番号へ移動 (Go to line n)                              |
| `0`                | 行頭へ移動 (Go to the beginning of the line)                     |
| `^`                | 行の最初の非空白文字へ移動 (Go to the first non-blank character) |
| `$`                | 行末へ移動 (Go to the end of the line)                           |

### 相対的な位置移動 (Relative Position Movement)

| コマンド (Command) | 説明 (Description)                                                |
| :----------------- | :---------------------------------------------------------------- |
| `h`                | 左へ移動 (Move left)                                              |
| `j`                | 下へ移動 (Move down)                                              |
| `k`                | 上へ移動 (Move up)                                                |
| `l`                | 右へ移動 (Move right)                                             |
| `w`                | 次の単語の先頭へ移動 (Move to the beginning of the next word)     |
| `b`                | 前の単語の先頭へ移動 (Move to the beginning of the previous word) |
| `e`                | 次の単語の末尾へ移動 (Move to the end of the next word)           |
| `Ctrl + f`         | 1ページ下へスクロール (Scroll down one page)                      |
| `Ctrl + b`         | 1ページ上へスクロール (Scroll up one page)                        |
| `Ctrl + d`         | 半ページ下へスクロール (Scroll down half a page)                  |
| `Ctrl + u`         | 半ページ上へスクロール (Scroll up half a page)                    |

## 検索 (Search)

| コマンド (Command)   | 説明 (Description)                                                 |
| :------------------- | :----------------------------------------------------------------- |
| `/{pattern} + Enter` | 文字列を前方検索してカーソル移動 (Search forward and move cursor)  |
| `?{pattern} + Enter` | 文字列を後方検索してカーソル移動 (Search backward and move cursor) |
| `n`                  | 次の検索結果へ移動 (Move to the next match)                        |
| `N`                  | 前の検索結果へ移動 (Move to the previous match)                    |

## 選択 (Selection)

| コマンド (Command) | 説明 (Description)                                    |
| :----------------- | :---------------------------------------------------- |
| `v`                | 文字単位で選択開始 (Start visual mode character-wise) |
| `V`                | 行単位で選択開始 (Start visual line mode)             |
| `Ctrl + v`         | 矩形選択開始 (Start visual block mode)                |
| `ggVG`             | 全選択 (Select all)                                   |
| `Esc`              | 選択解除 (Exit visual mode)                           |