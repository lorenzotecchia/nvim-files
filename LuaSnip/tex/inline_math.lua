return {
  s(
    { trig = "eq", snippetType = "autosnippet", dscr = "Expands 'eq' into an equation environment" },
    fmta(
      [[
       \begin{equation}
           <>
       \end{equation}
     ]],
      { i(1) }
    )
  ),
  s(
    {
      trig = "mm",
      snippetType = "autosnippet",
      wordTrig = true,
      dscr = "Inline Math",
    },
    fmta("$<>$", { i(1) })
    -- (
    -- {
    -- condition = tex.in_text,
    -- }
    -- )
  ),
  s(
    {
      trig = "2mm",
      snippetType = "autosnippet",
      wordTrig = true,
      dscr = "Inline Math",
    },
    fmta("$$<>$$", { i(1) })
    -- (
    -- {
    -- condition = tex.in_text,
    -- }
    --    )
  ),
}
