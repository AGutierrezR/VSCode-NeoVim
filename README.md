# README

- [README](#readme)
  - [Movements](#movements)
    - [Horizontal Movements (Default Motions)](#horizontal-movements-default-motions)
      - [Move horizontally word by word](#move-horizontally-word-by-word)
      - [Move to a specific character](#move-to-a-specific-character)
      - [Move to extremes](#move-to-extremes)
    - [Vertical Movements (Default Motions)](#vertical-movements-default-motions)
    - [High precision](#high-precision)
    - [Using counts](#using-counts)
    - [Other motions](#other-motions)
  - [Text Objects ID](#text-objects-id)
    - [Text Object by default are:](#text-object-by-default-are)
    - [From mini.ai](#from-miniai)
    - [From treesitter](#from-treesitter)
    - [From various-textobjs](#from-various-textobjs)

## Movements

### Horizontal Movements (Default Motions)

#### Move horizontally word by word

- `w`: Jump to the beginning of the next word
- `b`: Jump to the beginning of the previous word
- `e`: Jump to the end of the next word
- `ge`: Jump to the end of the previous word
- `W`: Jump to the beginning of the next **WORD**
- `B`: Jump to the beginning of the previous **WORD**
- `E`: Jump to the end of the next **WORD**
- `gE`: Jump to the end of the previous **WORD**

#### Move to a specific character

- `f{character}`: Move the cursor to the next occurrence of a character in line.
- `F{character}`: Move the cursor to the previous occurrence of a character in line.
- `t{character}`: Move the cursor just before the next occurrence of a character in line.
- `T{character}`: Move the cursor just before the previous occurrence of a character in line.

#### Move to extremes

- `0`: Move to the first character in a line.
- `^` or `_`: Move to the first non-blank character in a line.
- `$`: Move to the end of a line.
- `g_`: Move to the non-blank character at the end of a line.

### Vertical Movements (Default Motions)

Starting from `k` and `j`, we also have:

- `Ctrl+D`: Move down half a page by scrolling the page.
- `Ctrl+U`: Move up half a page by scrolling the page.
- `gg`: Go to the top of the file.
- `G`: Go to the end of the file.
- `{line}gg`: Go to a specific line.
- `{`: Jumps entire paragraphs downwards.
- `}`: Jumps entire paragraphs upwards.

### High precision

- `/{pattern}`: Search forward inside a file.
- `?{pattern}`: Search backwards inside a file.
- `*`: Search forward the word under the cursor.
- `#`: Search backwards the word under the cursor.

### Using counts

Counts are numbers which let you multiply the effect of a movement.

- `{number}j`: Move the cursor `number` lines below.
- `{number}k`: Move the cursor `number` lines above.

### Other motions

- `%`: Jump to matching `{[()]}`

## Text Objects ID

These are the Text Objects that are used in combination with commands (`v`, `c`, `d`).

### Text Object by default are:

- `w`: word
- `s`: sentence (overridden by treesitter)
- `p`: paragraph
- `b` or `(`: block surrounded by `()` (overridden by mini.ai)
- `B` or `{`: block surrounded by `{}`
- `"` or `'`: quoted text
- `<` or `>`: block surrounded by `<>`
- `[` or `]`: block surrounded by `[]`
- `t`: tag (HTML, etc.)

### From mini.ai

- `q`: any quote
- `b`: any block (`()`, `{}`, `[]`)

### From treesitter

- `f`: function
- `c`: class
- `s`: assignment
- `g`: block
- `a`: parameter
- `k`: call
- `/`: comment
- `r`: conditional
- `o`: loop
- `t`: return

### From various-textobjs

- `e`: entire file
- `y`: object key
- `v`: object value
- `l`: line (character-wise)
- `x`: HTML attribute
