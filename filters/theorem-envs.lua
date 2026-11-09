-- Maps fenced divs such as  ::: theorem ... :::  to the right output:
--   LaTeX/PDF : \begin{theorem} ... \end{theorem}   (amsthm, numbered)
--   HTML/EPUB : <div class="theorem"> with a bold label, styled by CSS
local envs = {
  theorem = "Theorem", lemma = "Lemma", proposition = "Proposition",
  definition = "Definition", example = "Example", problem = "Problem",
  remark = "Remark", proof = "Proof",
}

local counter = 0
local current_chapter = 0

function Header(el)
  -- Unnumbered chapters ({-}, e.g. the Preface) must not advance the chapter number.
  if el.level == 1 and not el.classes:includes("unnumbered") then
    current_chapter = current_chapter + 1
    counter = 0
  end
  return nil
end

function Div(el)
  for cls, label in pairs(envs) do
    if el.classes:includes(cls) then
      if FORMAT:match("latex") then
        local blocks = pandoc.List({ pandoc.RawBlock("latex", "\\begin{" .. cls .. "}") })
        blocks:extend(el.content)
        blocks:insert(pandoc.RawBlock("latex", "\\end{" .. cls .. "}"))
        return blocks
      else
        local head
        if cls == "proof" then
          head = label .. "."
        else
          counter = counter + 1
          head = label .. " " .. current_chapter .. "." .. counter .. "."
        end
        local first = el.content[1]
        local lead = pandoc.Strong({ pandoc.Str(head) })
        if first and (first.t == "Para" or first.t == "Plain") then
          first.content:insert(1, pandoc.Space())
          first.content:insert(1, lead)
        else
          el.content:insert(1, pandoc.Para({ lead }))
        end
        return el
      end
    end
  end
  return nil
end

-- Raw TeX blocks, such as the \newcommand lines in macros.md, only matter for LaTeX.
-- Pandoc has already expanded the macros in the math, so drop the blocks elsewhere.
-- Otherwise chunked HTML makes an empty page for the content before the first chapter.
function RawBlock(el)
  if not FORMAT:match("latex") and (el.format == "tex" or el.format == "latex") then
    return {}
  end
  return nil
end

-- One top-down walk, in document order, so each theorem sees the chapter it is in.
-- (Separate passes for Header and Div would count all chapters before labelling.)
function Pandoc(doc)
  return doc:walk({ traverse = "topdown", Header = Header, Div = Div, RawBlock = RawBlock })
end

return { { Pandoc = Pandoc } }
