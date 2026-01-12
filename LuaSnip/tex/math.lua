return {
  -- ═══════════════════════════════════════════════════════════════════════════
  -- FRACTIONS & ROOTS
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "//", snippetType = "autosnippet", dscr = "Fraction" },
    fmta([[\frac{<>}{<>}]], { i(1), i(2) })
  ),

  s({ trig = "frac", dscr = "Fraction" },
    fmta([[\frac{<>}{<>}]], { i(1), i(2) })
  ),

  s({ trig = "dfrac", dscr = "Display fraction" },
    fmta([[\dfrac{<>}{<>}]], { i(1), i(2) })
  ),

  s({ trig = "sq", snippetType = "autosnippet", dscr = "Square root" },
    fmta([[\sqrt{<>}]], { i(1) })
  ),

  s({ trig = "nrt", dscr = "Nth root" },
    fmta([[\sqrt[<>]{<>}]], { i(1, "n"), i(2) })
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- SUBSCRIPTS & SUPERSCRIPTS
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "__", snippetType = "autosnippet", wordTrig = false, dscr = "Subscript" },
    fmta("_{<>}", { i(1) })
  ),

  s({ trig = "^^", snippetType = "autosnippet", wordTrig = false, dscr = "Superscript" },
    fmta("^{<>}", { i(1) })
  ),

  s({ trig = "inv", snippetType = "autosnippet", wordTrig = false, dscr = "Inverse" },
    t("^{-1}")
  ),

  s({ trig = "sq2", snippetType = "autosnippet", wordTrig = false, dscr = "Squared" },
    t("^{2}")
  ),

  s({ trig = "cb3", snippetType = "autosnippet", wordTrig = false, dscr = "Cubed" },
    t("^{3}")
  ),

  s({ trig = "xnn", snippetType = "autosnippet", dscr = "x_n" },
    t("x_{n}")
  ),

  s({ trig = "xii", snippetType = "autosnippet", dscr = "x_i" },
    t("x_{i}")
  ),

  s({ trig = "xjj", snippetType = "autosnippet", dscr = "x_j" },
    t("x_{j}")
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- CALCULUS
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "dint", dscr = "Definite integral" },
    fmta([[\int_{<>}^{<>} <> \, d<>]], { i(1, "a"), i(2, "b"), i(3, "f(x)"), i(4, "x") })
  ),

  s({ trig = "int", dscr = "Integral" },
    fmta([[\int <> \, d<>]], { i(1, "f(x)"), i(2, "x") })
  ),

  s({ trig = "iint", dscr = "Double integral" },
    fmta([[\iint_{<>} <> \, d<>]], { i(1, "D"), i(2, "f"), i(3, "A") })
  ),

  s({ trig = "iiint", dscr = "Triple integral" },
    fmta([[\iiint_{<>} <> \, d<>]], { i(1, "E"), i(2, "f"), i(3, "V") })
  ),

  s({ trig = "oint", dscr = "Contour integral" },
    fmta([[\oint_{<>} <> \, d<>]], { i(1, "C"), i(2, "f"), i(3, "s") })
  ),

  s({ trig = "dv", dscr = "Derivative" },
    fmta([[\frac{d<>}{d<>}]], { i(1, "y"), i(2, "x") })
  ),

  s({ trig = "ddv", dscr = "Second derivative" },
    fmta([[\frac{d^2<>}{d<>^2}]], { i(1, "y"), i(2, "x") })
  ),

  s({ trig = "pdv", dscr = "Partial derivative" },
    fmta([[\frac{\partial <>}{\partial <>}]], { i(1, "f"), i(2, "x") })
  ),

  s({ trig = "ppdv", dscr = "Second partial derivative" },
    fmta([[\frac{\partial^2 <>}{\partial <>^2}]], { i(1, "f"), i(2, "x") })
  ),

  s({ trig = "lim", dscr = "Limit" },
    fmta([[\lim_{<> \to <>} <>]], { i(1, "x"), i(2, "\\infty"), i(3) })
  ),

  s({ trig = "sum", dscr = "Sum" },
    fmta([[\sum_{<>=<>}^{<>} <>]], { i(1, "i"), i(2, "1"), i(3, "n"), i(4) })
  ),

  s({ trig = "prod", dscr = "Product" },
    fmta([[\prod_{<>=<>}^{<>} <>]], { i(1, "i"), i(2, "1"), i(3, "n"), i(4) })
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- OPERATORS & FUNCTIONS
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "sin", dscr = "Sine" }, t("\\sin")),
  s({ trig = "cos", dscr = "Cosine" }, t("\\cos")),
  s({ trig = "tan", dscr = "Tangent" }, t("\\tan")),
  s({ trig = "cot", dscr = "Cotangent" }, t("\\cot")),
  s({ trig = "sec", dscr = "Secant" }, t("\\sec")),
  s({ trig = "csc", dscr = "Cosecant" }, t("\\csc")),
  s({ trig = "ln", dscr = "Natural log" }, t("\\ln")),
  s({ trig = "log", dscr = "Logarithm" }, t("\\log")),
  s({ trig = "exp", dscr = "Exponential" }, t("\\exp")),

  s({ trig = "arcsin", dscr = "Arcsine" }, t("\\arcsin")),
  s({ trig = "arccos", dscr = "Arccosine" }, t("\\arccos")),
  s({ trig = "arctan", dscr = "Arctangent" }, t("\\arctan")),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- RELATIONS & ARROWS
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "<=", snippetType = "autosnippet", dscr = "Less or equal" },
    t("\\leq")
  ),

  s({ trig = ">=", snippetType = "autosnippet", dscr = "Greater or equal" },
    t("\\geq")
  ),

  s({ trig = "!=", snippetType = "autosnippet", dscr = "Not equal" },
    t("\\neq")
  ),

  s({ trig = "~=", snippetType = "autosnippet", dscr = "Approximately" },
    t("\\approx")
  ),

  s({ trig = "==", snippetType = "autosnippet", dscr = "Equivalent" },
    t("\\equiv")
  ),

  s({ trig = "=>", snippetType = "autosnippet", dscr = "Implies" },
    t("\\Rightarrow")
  ),

  s({ trig = "=<", snippetType = "autosnippet", dscr = "Implied by" },
    t("\\Leftarrow")
  ),

  s({ trig = "<=>", snippetType = "autosnippet", dscr = "If and only if" },
    t("\\Leftrightarrow")
  ),

  s({ trig = "->", snippetType = "autosnippet", dscr = "Right arrow" },
    t("\\to")
  ),

  s({ trig = "<-", snippetType = "autosnippet", dscr = "Left arrow" },
    t("\\leftarrow")
  ),

  s({ trig = "|->", snippetType = "autosnippet", dscr = "Maps to" },
    t("\\mapsto")
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- SET THEORY
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "set", dscr = "Set notation" },
    fmta([[\{<> \mid <>\}]], { i(1, "x"), i(2, "condition") })
  ),

  s({ trig = "inn", snippetType = "autosnippet", dscr = "Element of" },
    t("\\in")
  ),

  s({ trig = "ninn", snippetType = "autosnippet", dscr = "Not element of" },
    t("\\notin")
  ),

  s({ trig = "sub", dscr = "Subset" },
    t("\\subset")
  ),

  s({ trig = "sube", dscr = "Subset or equal" },
    t("\\subseteq")
  ),

  s({ trig = "sup", dscr = "Superset" },
    t("\\supset")
  ),

  s({ trig = "supe", dscr = "Superset or equal" },
    t("\\supseteq")
  ),

  s({ trig = "uu", snippetType = "autosnippet", dscr = "Union" },
    t("\\cup")
  ),

  s({ trig = "nn", snippetType = "autosnippet", dscr = "Intersection" },
    t("\\cap")
  ),

  s({ trig = "UU", snippetType = "autosnippet", dscr = "Big union" },
    fmta([[\bigcup_{<>=<>}^{<>}]], { i(1, "i"), i(2, "1"), i(3, "n") })
  ),

  s({ trig = "NN", snippetType = "autosnippet", dscr = "Big intersection" },
    fmta([[\bigcap_{<>=<>}^{<>}]], { i(1, "i"), i(2, "1"), i(3, "n") })
  ),

  s({ trig = "empty", dscr = "Empty set" },
    t("\\emptyset")
  ),

  -- Number sets
  s({ trig = "RR", snippetType = "autosnippet", dscr = "Real numbers" },
    t("\\mathbb{R}")
  ),

  s({ trig = "QQ", snippetType = "autosnippet", dscr = "Rational numbers" },
    t("\\mathbb{Q}")
  ),

  s({ trig = "ZZ", snippetType = "autosnippet", dscr = "Integers" },
    t("\\mathbb{Z}")
  ),

  s({ trig = "NN", snippetType = "autosnippet", dscr = "Natural numbers" },
    t("\\mathbb{N}")
  ),

  s({ trig = "CC", snippetType = "autosnippet", dscr = "Complex numbers" },
    t("\\mathbb{C}")
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- LOGIC
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "AA", snippetType = "autosnippet", dscr = "For all" },
    t("\\forall")
  ),

  s({ trig = "EE", snippetType = "autosnippet", dscr = "Exists" },
    t("\\exists")
  ),

  s({ trig = "neg", dscr = "Negation" },
    t("\\neg")
  ),

  s({ trig = "land", dscr = "Logical and" },
    t("\\land")
  ),

  s({ trig = "lor", dscr = "Logical or" },
    t("\\lor")
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- BRACKETS & DELIMITERS
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "lr(", dscr = "Left-right parentheses" },
    fmta([[\left( <> \right)]], { i(1) })
  ),

  s({ trig = "lr[", dscr = "Left-right brackets" },
    fmta([[\left[ <> \right]]], { i(1) })
  ),

  s({ trig = "lr{", dscr = "Left-right braces" },
    fmta([[\left\{ <> \right\}]], { i(1) })
  ),

  s({ trig = "lr|", dscr = "Left-right absolute value" },
    fmta([[\left| <> \right|]], { i(1) })
  ),

  s({ trig = "lra", dscr = "Left-right angle brackets" },
    fmta([[\left\langle <> \right\rangle]], { i(1) })
  ),

  s({ trig = "norm", dscr = "Norm" },
    fmta([[\left\| <> \right\|]], { i(1) })
  ),

  s({ trig = "floor", dscr = "Floor function" },
    fmta([[\left\lfloor <> \right\rfloor]], { i(1) })
  ),

  s({ trig = "ceil", dscr = "Ceiling function" },
    fmta([[\left\lceil <> \right\rceil]], { i(1) })
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- MISC SYMBOLS
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "ooo", snippetType = "autosnippet", dscr = "Infinity" },
    t("\\infty")
  ),

  s({ trig = "...", snippetType = "autosnippet", dscr = "Dots" },
    t("\\ldots")
  ),

  s({ trig = "cdots", dscr = "Centered dots" },
    t("\\cdots")
  ),

  s({ trig = "vdots", dscr = "Vertical dots" },
    t("\\vdots")
  ),

  s({ trig = "ddots", dscr = "Diagonal dots" },
    t("\\ddots")
  ),

  s({ trig = "xx", snippetType = "autosnippet", dscr = "Times" },
    t("\\times")
  ),

  s({ trig = "**", snippetType = "autosnippet", dscr = "Cdot" },
    t("\\cdot")
  ),

  s({ trig = "pm", dscr = "Plus minus" },
    t("\\pm")
  ),

  s({ trig = "mp", dscr = "Minus plus" },
    t("\\mp")
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- TEXT IN MATH
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "tt", dscr = "Text in math mode" },
    fmta([[\text{<>}]], { i(1) })
  ),

  s({ trig = "bf", dscr = "Bold math" },
    fmta([[\mathbf{<>}]], { i(1) })
  ),

  s({ trig = "cal", dscr = "Calligraphic" },
    fmta([[\mathcal{<>}]], { i(1) })
  ),

  s({ trig = "bb", dscr = "Blackboard bold" },
    fmta([[\mathbb{<>}]], { i(1) })
  ),

  s({ trig = "scr", dscr = "Script" },
    fmta([[\mathscr{<>}]], { i(1) })
  ),

  s({ trig = "frak", dscr = "Fraktur" },
    fmta([[\mathfrak{<>}]], { i(1) })
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- VECTORS & LINEAR ALGEBRA
  -- ═══════════════════════════════════════════════════════════════════════════

  s({ trig = "vec", dscr = "Vector" },
    fmta([[\vec{<>}]], { i(1) })
  ),

  s({ trig = "hat", dscr = "Hat" },
    fmta([[\hat{<>}]], { i(1) })
  ),

  s({ trig = "bar", dscr = "Bar" },
    fmta([[\bar{<>}]], { i(1) })
  ),

  s({ trig = "tilde", dscr = "Tilde" },
    fmta([[\tilde{<>}]], { i(1) })
  ),

  s({ trig = "dot", dscr = "Dot (time derivative)" },
    fmta([[\dot{<>}]], { i(1) })
  ),

  s({ trig = "ddot", dscr = "Double dot" },
    fmta([[\ddot{<>}]], { i(1) })
  ),

  s({ trig = "grad", dscr = "Gradient" },
    t("\\nabla")
  ),

  s({ trig = "div", dscr = "Divergence" },
    fmta([[\nabla \cdot <>]], { i(1) })
  ),

  s({ trig = "curl", dscr = "Curl" },
    fmta([[\nabla \times <>]], { i(1) })
  ),

  s({ trig = "lap", dscr = "Laplacian" },
    t("\\nabla^2")
  ),
}
