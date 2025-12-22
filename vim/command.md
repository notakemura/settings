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

### 基本的な選択 (Basic Selection)

| コマンド (Command) | 説明 (Description)                                    |
| :----------------- | :---------------------------------------------------- |
| `v`                | 文字単位で選択開始 (Start visual mode character-wise) |
| `V`                | 行単位で選択開始 (Start visual line mode)             |
| `Ctrl + v`         | 矩形選択開始 (Start visual block mode)                |
| `ggVG`             | 全選択 (Select all)                                   |
| `Esc`              | 選択解除 (Exit visual mode)                           |

### 複数行・範囲選択 (Multi-line / Range Selection)

| コマンド (Command) | 説明 (Description)                                          |
| :----------------- | :---------------------------------------------------------- |
| `V` -> `j`/`k`     | 行単位で上下に選択範囲を広げる (Expand selection line-wise) |
| `v` -> `iw`        | カーソル下の単語を選択 (Select inner word)                  |
| `v` -> `i"`        | `"` で囲まれた範囲を選択 (Select inside double quotes)      |

## 編集 (Editing)

### 基本的な編集 (Basic Editing)

| コマンド (Command) | 説明 (Description)                             |
| :----------------- | :--------------------------------------------- |
| `i`                | カーソル位置から挿入 (Insert at cursor)        |
| `a`                | カーソル位置の次から挿入 (Append after cursor) |
| `o`                | 下に行を挿入して開始 (Open new line below)     |
| `O`                | 上に行を挿入して開始 (Open new line above)     |
| `x`                | 1文字削除 (Delete character)                   |
| `dd`               | 1行削除 (Delete line)                          |
| `u`                | 元に戻す (Undo)                                |
| `Ctrl + r`         | やり直し (Redo)                                |

### コピー・切り取り・貼り付け (Copy, Cut, Paste)

| コマンド (Command) | 説明 (Description)                            |
| :----------------- | :-------------------------------------------- |
| `y`                | 選択範囲をコピー (Yank selection)             |
| `yy`               | 1行コピー (Yank line)                         |
| `d`                | 選択範囲を切り取り (Delete/Cut selection)     |
| `p`                | カーソルの後ろに貼り付け (Paste after cursor) |
| `P`                | カーソルの前に貼り付け (Paste before cursor)  |

### 矩形選択の活用 (Using Visual Block Mode)

| コマンド (Command)                        | 説明 (Description)                                                                      |
| :---------------------------------------- | :-------------------------------------------------------------------------------------- |
| `Ctrl + v` → `j`/`k` → `I` → text → `Esc` | 選択した複数行の左端（先頭）に一括入力 (Insert text at the beginning of multiple lines) |
| `Ctrl + v` → `j`/`k` → `A` → text → `Esc` | 選択した複数行の右端（末尾）に一括入力 (Append text at the end of multiple lines)       |

## 行単位で複数行選択 (Line-wise Multi-line Selection)

| コマンド (Command) | 説明 (Description)                                                                                |
| :----------------- | :------------------------------------------------------------------------------------------------ |
| `V`                | ノーマルモードで `V` を押すと行単位のビジュアルモードに入ります。`j` / `k` で選択を拡張できます。 |
| `ggVG`             | ファイル全体を行単位で選択します（先頭へ `gg` → `V` → 最後まで `G`）。                            |