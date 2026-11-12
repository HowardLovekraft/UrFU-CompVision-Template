// Plotting library
#import "@preview/cetz:0.5.2"
// Colourful boxes
#import "@preview/showybox:2.0.4": showybox


#let preamble(doc) = {
  set page(
    paper: "a4",
    margin: (x: 2cm, left: 3cm, right: 1.5cm),
  )
  set text(
    font: "Times New Roman",
    lang: "ru",
    size: 14pt,
  )
  set par(
    justify: true,
    leading: 1em,
    first-line-indent: (amount: 1.25em, all: true),
  )
  set heading(
    numbering: "1.",
  )

  // Доп. отступ под заголовками
  show heading: set block(below: 0.9em)
  show heading: it => {
    if it.body == [Введение] or it.body == [Заключение] {
      upper(it)
    } else {
      it
    }
  }

  // Особенности шаблона
  // Сохранение в заголовках 14pt
  show heading: set text(size: 14pt)

  // 12pt шрифт в подписях рисунков и таблиц
  show figure.caption: set text(size: 12pt)

  // 12pt шрифт в таблицах
  show table: set align(left)
  show table: set text(size: 12pt)

  // Отключение отступа красной строки в таблицах
  show table.cell: set par(first-line-indent: 0pt)

  // Подписи таблиц сверху
  show figure.where(kind: table): set figure.caption(position: top)

  // "Рис." -> "Рисунок"
  show figure.where(kind: image): set figure(supplement: "Рисунок")

  // Формат подписи рисунков
  show figure.caption.where(kind: image): it => [
    #it.supplement
    #context it.counter.display(it.numbering)
    ---
    #it.body
    #v(1em)
  ]

  // Формат подписи таблиц
  show figure.caption.where(kind: table): set par(first-line-indent: 0pt)
  show figure.caption.where(kind: table): it => align(left)[
    #it.supplement
    #context it.counter.display(it.numbering)
    ---
    #it.body
  ]

  // Подсветка ссылок
  show link: set text(blue)
  show link: it => underline(it)

  // Центрирование "Содержания"
  show outline: it => align(center)[#it]

  doc
}

// Операторы в math-окружении
#let sign = math.op("sign")
#let sigmoid = math.op("sigmoid")
#let argmax = math.op("argmax", limits: true)

#let gost_heading = it => align(center)[#heading(numbering: none)[#it]]
