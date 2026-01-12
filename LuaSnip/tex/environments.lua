return {
  -- ═══════════════════════════════════════════════════════════════════════════
  -- DOCUMENT STRUCTURE
  -- ═══════════════════════════════════════════════════════════════════════════

  s(
    { trig = "beg", dscr = "Generic environment" },
    fmta(
      [[
\begin{<>}
    <>
\end{<>}]],
      { i(1, "environment"), i(2), rep(1) }
    )
  ),

  s({ trig = "sec", dscr = "Section" }, fmta([[\section{<>}]], { i(1, "title") })),

  s({ trig = "ssec", dscr = "Subsection" }, fmta([[\subsection{<>}]], { i(1, "title") })),

  s({ trig = "sssec", dscr = "Subsubsection" }, fmta([[\subsubsection{<>}]], { i(1, "title") })),

  s({ trig = "chap", dscr = "Chapter" }, fmta([[\chapter{<>}]], { i(1, "title") })),

  s({ trig = "par", dscr = "Paragraph" }, fmta([[\paragraph{<>}]], { i(1, "title") })),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- MATH ENVIRONMENTS
  -- ═══════════════════════════════════════════════════════════════════════════

  s(
    { trig = "ali", dscr = "Align environment" },
    fmta(
      [[
\begin{align}
    <>
\end{align}]],
      { i(1) }
    )
  ),

  s(
    { trig = "ali*", dscr = "Align* (no numbering)" },
    fmta(
      [[
\begin{align*}
    <>
\end{align*}]],
      { i(1) }
    )
  ),

  s(
    { trig = "gat", dscr = "Gather environment" },
    fmta(
      [[
\begin{gather}
    <>
\end{gather}]],
      { i(1) }
    )
  ),

  s(
    { trig = "cases", dscr = "Cases environment" },
    fmta(
      [[
\begin{cases}
    <> & \text{if } <> \\
    <> & \text{otherwise}
\end{cases}]],
      { i(1), i(2, "condition"), i(3) }
    )
  ),

  s(
    { trig = "pmat", dscr = "Parentheses matrix" },
    fmta(
      [[
\begin{pmatrix}
    <>
\end{pmatrix}]],
      { i(1) }
    )
  ),

  s(
    { trig = "bmat", dscr = "Bracket matrix" },
    fmta(
      [[
\begin{bmatrix}
    <>
\end{bmatrix}]],
      { i(1) }
    )
  ),

  s(
    { trig = "vmat", dscr = "Determinant matrix" },
    fmta(
      [[
\begin{vmatrix}
    <>
\end{vmatrix}]],
      { i(1) }
    )
  ),

  s(
    { trig = "mat2", dscr = "2x2 matrix" },
    fmta(
      [[
\begin{pmatrix}
    <> & <> \\
    <> & <>
\end{pmatrix}]],
      { i(1, "a"), i(2, "b"), i(3, "c"), i(4, "d") }
    )
  ),

  s(
    { trig = "mat3", dscr = "3x3 matrix" },
    fmta(
      [[
\begin{pmatrix}
    <> & <> & <> \\
    <> & <> & <> \\
    <> & <> & <>
\end{pmatrix}]],
      { i(1), i(2), i(3), i(4), i(5), i(6), i(7), i(8), i(9) }
    )
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- LISTS
  -- ═══════════════════════════════════════════════════════════════════════════

  s(
    { trig = "enum", dscr = "Enumerate" },
    fmta(
      [[
\begin{enumerate}
    \item <>
\end{enumerate}]],
      { i(1) }
    )
  ),

  s(
    { trig = "item", dscr = "Itemize" },
    fmta(
      [[
\begin{itemize}
    \item <>
\end{itemize}]],
      { i(1) }
    )
  ),

  s(
    { trig = "desc", dscr = "Description" },
    fmta(
      [[
\begin{description}
    \item[<>] <>
\end{description}]],
      { i(1, "term"), i(2, "description") }
    )
  ),

  s({ trig = "ii", snippetType = "autosnippet", dscr = "List item" }, fmta([[\item <>]], { i(1) })),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- FIGURES & TABLES
  -- ═══════════════════════════════════════════════════════════════════════════

  s(
    { trig = "fig", dscr = "Figure environment" },
    fmta(
      [[
\begin{figure}[<>]
    \centering
    \includegraphics[width=<>\textwidth]{<>}
    \caption{<>}
    \label{fig:<>}
\end{figure}]],
      { i(1, "htbp"), i(2, "0.8"), i(3, "path"), i(4, "caption"), i(5, "label") }
    )
  ),

  s(
    { trig = "tab", dscr = "Table environment" },
    fmta(
      [[
\begin{table}[<>]
    \centering
    \caption{<>}
    \label{tab:<>}
    \begin{tabular}{<>}
        \toprule
        <>
        \midrule
        <>
        \bottomrule
    \end{tabular}
\end{table}]],
      { i(1, "htbp"), i(2, "caption"), i(3, "label"), i(4, "ccc"), i(5, "Header"), i(6, "Data") }
    )
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- THEOREMS & PROOFS
  -- ═══════════════════════════════════════════════════════════════════════════

  s(
    { trig = "thm", dscr = "Theorem" },
    fmta(
      [[
\begin{theorem}[<>]
    <>
\end{theorem}]],
      { i(1, "name"), i(2) }
    )
  ),

  s(
    { trig = "lem", dscr = "Lemma" },
    fmta(
      [[
\begin{lemma}
    <>
\end{lemma}]],
      { i(1) }
    )
  ),

  s(
    { trig = "prop", dscr = "Proposition" },
    fmta(
      [[
\begin{proposition}
    <>
\end{proposition}]],
      { i(1) }
    )
  ),

  s(
    { trig = "cor", dscr = "Corollary" },
    fmta(
      [[
\begin{corollary}
    <>
\end{corollary}]],
      { i(1) }
    )
  ),

  s(
    { trig = "def", dscr = "Definition" },
    fmta(
      [[
\begin{definition}[<>]
    <>
\end{definition}]],
      { i(1, "term"), i(2) }
    )
  ),

  s(
    { trig = "prf", dscr = "Proof" },
    fmta(
      [[
\begin{proof}
    <>
\end{proof}]],
      { i(1) }
    )
  ),

  s(
    { trig = "rem", dscr = "Remark" },
    fmta(
      [[
\begin{remark}
    <>
\end{remark}]],
      { i(1) }
    )
  ),

  s(
    { trig = "ex", dscr = "Example" },
    fmta(
      [[
\begin{example}
    <>
\end{example}]],
      { i(1) }
    )
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- CODE & VERBATIM
  -- ═══════════════════════════════════════════════════════════════════════════

  s(
    { trig = "verb", dscr = "Verbatim" },
    fmta(
      [[
\begin{verbatim}
<>
\end{verbatim}]],
      { i(1) }
    )
  ),

  s(
    { trig = "lst", dscr = "Lstlisting" },
    fmta(
      [[
\begin{lstlisting}[language=<>]
<>
\end{lstlisting}]],
      { i(1, "Python"), i(2) }
    )
  ),

  s(
    { trig = "mint", dscr = "Minted code block" },
    fmta(
      [[
\begin{minted}{<>}
<>
\end{minted}]],
      { i(1, "python"), i(2) }
    )
  ),

  -- ═══════════════════════════════════════════════════════════════════════════
  -- FRAMES (BEAMER)
  -- ═══════════════════════════════════════════════════════════════════════════

  s(
    { trig = "frame", dscr = "Beamer frame" },
    fmta(
      [[
\begin{frame}{<>}
    <>
\end{frame}]],
      { i(1, "Title"), i(2) }
    )
  ),

  s(
    { trig = "block", dscr = "Beamer block" },
    fmta(
      [[
\begin{block}{<>}
    <>
\end{block}]],
      { i(1, "Title"), i(2) }
    )
  ),

  s(
    { trig = "cols", dscr = "Beamer columns" },
    fmta(
      [[
\begin{columns}
    \begin{column}{0.5\textwidth}
        <>
    \end{column}
    \begin{column}{0.5\textwidth}
        <>
    \end{column}
\end{columns}]],
      { i(1), i(2) }
    )
  ),
}
