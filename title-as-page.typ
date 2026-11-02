// i18n date names
#import "@preview/icu-datetime:0.2.2": fmt

#let academic-group = [РИ-340917]
#let topic = [YOUR TOPIC]
#let author = [YOUR NAME AND SURNAME]

#let title(doc) = {
  set document(title: topic)
  let today = datetime.today()

  v(20pt)

  align(center)[
    Федеральное государственное автономное образовательное учреждение \ высшего образования "Уральский федеральный университет имени первого Президента России Б.Н. Ельцина"

    Институт радиоэлектроники и информационных технологий -- РТФ

    Учебно-научный центр "Искусственный интеллект"
  ]

  v(1fr)

  align(center)[
    *ОТЧЁТ ПО ЛАБОРАТОРНОЙ РАБОТЕ*

    по дисциплине "Компьютерное зрение"

    #topic
  ]

  v(1.4fr)

  align(right)[
    Выполнил(а): студент(ка) группы #academic-group

    #author (подпись) И. О. Фамилия
  ]

  align(right)[
    Проверил: #box(width: 7.5cm, stroke: (bottom: 0.5pt))

    #box(width: 3.5cm, stroke: (bottom: 0.5pt)) Решетников К.И.
  ]

  v(1fr)

  align(center)[
    Екатеринбург, #today.year()
  ]
  pagebreak()

  // Нумерация со второй страницы
  set page(numbering: "1")
  outline(
    title: "СОДЕРЖАНИЕ",
    indent: 0pt,
  )
  pagebreak()

  doc
}
