# Гран-Канария — путеводитель (RU)

Исходники коммерческого путеводителя по острову Гран-Канария на русском
языке в стиле классического Baedeker. Из одного и того же Markdown-набора
собирается EPUB (для электронных магазинов) и PDF (для прямой продажи).

## Требования

- `pandoc` ≥ 3.0
- `xelatex` (пакеты `texlive-xetex`, `texlive-lang-cyrillic`,
  `texlive-fonts-recommended`)
- Шрифт `DejaVu Serif` (пакет `fonts-dejavu`)

На Ubuntu/Debian:

```
sudo apt-get install -y --no-install-recommends \
    pandoc texlive-xetex texlive-fonts-recommended \
    texlive-lang-cyrillic fonts-dejavu lmodern
```

## Сборка

```
make pdf    # build/guide.pdf
make epub   # build/guide.epub
make all    # и то и другое
make clean  # удалить build/
```

## Структура

```
book/
  metadata.yaml          # заголовок, автор, язык, шрифты, геометрия
  00-frontmatter.md      # титул, импринт, предисловие
  01-geografiya.md       # географический очерк
  02-istoriya.md         # исторический очерк
  03-kultura.md          # культура, кухня, язык
  04-praktika.md         # транспорт, деньги, связь, здоровье
  05-las-palmas.md       # Лас-Пальмас-де-Гран-Канария (**)
  06-sever.md            # Север: Arucas, Teror*, Firgas, Gáldar*, Agaete
  07-centr-gory.md       # Центр и горы: Tejeda**, Roque Nublo**
  08-yug.md              # Юг: Maspalomas**, Puerto de Mogán*
  09-vostok.md           # Восток: Agüimes, Guayadeque*
  10-marshruty.md        # десять сводных маршрутов
  11-prilozheniya.md     # разговорник, календарь, индекс
  assets/
    cover.png            # обложка (плейсхолдер, заменить перед продажей)
    map-placeholder.png  # карта-схема (плейсхолдер)
```

## Перед публикацией

1. Заполнить в `book/metadata.yaml` поля `<АВТОР>`, `<ГОД>`,
   `<ИЗДАТЕЛЬСТВО>`, `<ISBN>`.
2. То же в титульном листе `book/00-frontmatter.md`.
3. Заменить `book/assets/cover.png` на настоящую обложку
   (рекомендованный размер 1600 × 2560 px, sRGB, JPEG/PNG).
4. Перепроверить актуальность цен, расписаний и часов работы музеев:
   в тексте приведены ориентировочные сведения с оговорками.
