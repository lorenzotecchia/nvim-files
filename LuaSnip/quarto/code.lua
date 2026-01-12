return {
  s({ trig = "cb", dscr = "Insert a code block" },
    fmta(
      [[
```{<>}
<>
```
      ]],
      {
        i(1, "language"),
        i(2, "code"),
      }
    )
  ),
}
