return {
  -- Example use of insert node placeholder text
  s({ trig = "h1", dscr = "Replace with heading" },
    fmta(
      [[# <>]],
      {
        i(1, "First Level Heading"),
      }
    )
  ),

  s({ trig = "h2", dscr = "replace with heading" },
    fmta(
      [[## <>]],
      {
        i(1, "Second level heading"),
      }
    )
  ),

  s({ trig = "h3", dscr = "replace with heading" },
    fmta(
      [[### <>]],
      {
        i(1, "Third level heading"),
      }
    )
  ),

  s({ trig = "h4", dscr = "replace with heading" },
    fmta(
      [[#### <>]],
      {
        i(1, "Fourth level heading"),
      }
    )
  ),


}
