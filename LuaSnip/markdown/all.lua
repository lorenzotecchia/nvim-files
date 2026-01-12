return {
  -- ═══════════════════════════════════════════════════════════════════════════
  -- DATE & TIME SNIPPETS
  -- ═══════════════════════════════════════════════════════════════════════════

  s(
    { trig = "date", dscr = "Current date (YYYY-MM-DD)" },
    f(function()
      return os.date("%Y-%m-%d")
    end)
  ),

  s(
    { trig = "datel", dscr = "Long date format" },
    f(function()
      return os.date("%B %d, %Y")
    end)
  ),

  s(
    { trig = "time", dscr = "Current time (HH:MM)" },
    f(function()
      return os.date("%H:%M")
    end)
  ),

  s(
    { trig = "datetime", dscr = "Date and time" },
    f(function()
      return os.date("%Y-%m-%d %H:%M")
    end)
  ),

  s(
    { trig = "iso", dscr = "ISO 8601 timestamp" },
    f(function()
      return os.date("%Y-%m-%dT%H:%M:%S")
    end)
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- HEADINGS
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "h1", dscr = "Heading level 1" }, fmta("# <>", { i(1, "Heading") })),

  s({ trig = "h2", dscr = "Heading level 2" }, fmta("## <>", { i(1, "Heading") })),

  s({ trig = "h3", dscr = "Heading level 3" }, fmta("### <>", { i(1, "Heading") })),

  s({ trig = "h4", dscr = "Heading level 4" }, fmta("#### <>", { i(1, "Heading") })),

  s({ trig = "h5", dscr = "Heading level 5" }, fmta("##### <>", { i(1, "Heading") })),

  s({ trig = "h6", dscr = "Heading level 6" }, fmta("###### <>", { i(1, "Heading") })),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- TEXT FORMATTING
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "b", dscr = "Bold text" }, fmta("**<>**", { i(1, "text") })),

  s({ trig = "it", dscr = "Italic text" }, fmta("*<>*", { i(1, "text") })),

  s({ trig = "bi", dscr = "Bold italic text" }, fmta("***<>***", { i(1, "text") })),

  s({ trig = "st", dscr = "Strikethrough" }, fmta("~~<>~~", { i(1, "text") })),

  s({ trig = "hi", dscr = "Highlight (HTML mark)" }, fmta("==<>==", { i(1, "text") })),

  s({ trig = "sub", dscr = "Subscript" }, fmta("~<>~", { i(1, "text") })),

  s({ trig = "sup", dscr = "Superscript" }, fmta("^<>^", { i(1, "text") })),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- CODE
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "ic", dscr = "Inline code" }, fmta("`<>`", { i(1, "code") })),

  s(
    { trig = "cb", dscr = "Code block" },
    fmta(
      [[
```<>
<>
```]],
      { i(1, "language"), i(2, "code") }
    )
  ),

  s(
    { trig = "cbpy", dscr = "Python code block" },
    fmta(
      [[
```python
<>
```]],
      { i(1) }
    )
  ),

  s(
    { trig = "cbjs", dscr = "JavaScript code block" },
    fmta(
      [[
```javascript
<>
```]],
      { i(1) }
    )
  ),

  s(
    { trig = "cbts", dscr = "TypeScript code block" },
    fmta(
      [[
```typescript
<>
```]],
      { i(1) }
    )
  ),

  s(
    { trig = "cblua", dscr = "Lua code block" },
    fmta(
      [[
```lua
<>
```]],
      { i(1) }
    )
  ),

  s(
    { trig = "cbsh", dscr = "Shell code block" },
    fmta(
      [[
```bash
<>
```]],
      { i(1) }
    )
  ),

  s(
    { trig = "cbcc", dscr = "C++ code block" },
    fmta(
      [[
```cpp
<>
```]],
      { i(1) }
    )
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- LINKS & IMAGES
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "link", dscr = "Markdown link" }, fmta("[<>](<>)", { i(1, "text"), i(2, "url") })),

  s({ trig = "img", dscr = "Image" }, fmta("![<>](<>)", { i(1, "alt text"), i(2, "url") })),

  s({ trig = "rlink", dscr = "Reference-style link" }, fmta("[<>][<>]", { i(1, "text"), i(2, "reference") })),

  s({ trig = "rdef", dscr = "Reference definition" }, fmta("[<>]: <>", { i(1, "reference"), i(2, "url") })),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- LISTS
  -- ═══════════════════════════════════════════════════════════════════════════

  s(
    { trig = "ul", dscr = "Unordered list" },
    fmta(
      [[
- <>
- <>
- <>
]],
      { i(1, "item"), i(2, "item"), i(3, "item") }
    )
  ),

  s(
    { trig = "ol", dscr = "Ordered list" },
    fmta(
      [[
1. <>
2. <>
3. <>]],
      { i(1, "item"), i(2, "item"), i(3, "item") }
    )
  ),

  s(
    { trig = "task", dscr = "Task list" },
    fmta(
      [[
- [ ] <>
- [ ] <>
- [ ] <>]],
      { i(1, "task"), i(2, "task"), i(3, "task") }
    )
  ),

  s({ trig = "td", dscr = "Single todo item" }, fmta("- [ ] <>", { i(1, "task") })),

  s({ trig = "tdd", dscr = "Done todo item" }, fmta("- [x] <>", { i(1, "completed task") })),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- QUOTES & CALLOUTS
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "q", dscr = "Blockquote" }, fmta(">> <>", { i(1, "quote") })),

  s(
    { trig = "note", dscr = "Note callout (GFM/Obsidian)" },
    fmta(
      [[
>> [!NOTE]
>> <>]],
      { i(1, "note content") }
    )
  ),

  s(
    { trig = "warn", dscr = "Warning callout" },
    fmta(
      [[
>> [!WARNING]
>> <>]],
      { i(1, "warning content") }
    )
  ),

  s(
    { trig = "tip", dscr = "Tip callout" },
    fmta(
      [[
>> [!TIP]
>> <>]],
      { i(1, "tip content") }
    )
  ),

  s(
    { trig = "important", dscr = "Important callout" },
    fmta(
      [[
>> [!IMPORTANT]
>> <>]],
      { i(1, "important content") }
    )
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- TABLES
  -- ═══════════════════════════════════════════════════════════════════════════

  s(
    { trig = "table2", dscr = "2-column table" },
    fmta(
      [[
| <> | <> |
|---|---|
| <> | <> |]],
      { i(1, "Header 1"), i(2, "Header 2"), i(3, "Cell"), i(4, "Cell") }
    )
  ),

  s(
    { trig = "table3", dscr = "3-column table" },
    fmta(
      [[
| <> | <> | <> |
|---|---|---|
| <> | <> | <> |]],
      { i(1, "H1"), i(2, "H2"), i(3, "H3"), i(4, "C1"), i(5, "C2"), i(6, "C3") }
    )
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- HORIZONTAL RULES & DIVIDERS
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "hr", dscr = "Horizontal rule" }, t("---")),

  s({ trig = "hr2", dscr = "Horizontal rule (asterisks)" }, t("***")),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- MATH (for markdown with LaTeX support)
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "mm", dscr = "Inline math" }, fmta("$<>$", { i(1) })),

  s(
    { trig = "dm", dscr = "Display math" },
    fmta(
      [[
$$
<>
$$]],
      { i(1) }
    )
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- FRONTMATTER
  -- ═══════════════════════════════════════════════════════════════════════════

  s(
    { trig = "fm", dscr = "YAML frontmatter" },
    fmta(
      [[
---
title: "<>"
date: <>
tags: [<>]
---

<>]],
      {
        i(1, "Title"),
        f(function()
          return os.date("%Y-%m-%d")
        end),
        i(2, "tag1, tag2"),
        i(3),
      }
    )
  ),

  s(
    { trig = "fmfull", dscr = "Full YAML frontmatter" },
    fmta(
      [[
---
title: "<>"
author: "<>"
date: <>
tags: [<>]
categories: [<>]
draft: <>
---

<>]],
      {
        i(1, "Title"),
        i(2, "Author"),
        f(function()
          return os.date("%Y-%m-%d")
        end),
        i(3, "tag1"),
        i(4, "category"),
        c(5, { t("false"), t("true") }),
        i(6),
      }
    )
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- FOOTNOTES
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "fn", dscr = "Footnote reference" }, fmta("[^<>]", { i(1, "1") })),

  s({ trig = "fnd", dscr = "Footnote definition" }, fmta("[^<>]: <>", { i(1, "1"), i(2, "footnote text") })),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- MISC
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "toc", dscr = "Table of contents placeholder" }, t("[[toc]]")),
}
