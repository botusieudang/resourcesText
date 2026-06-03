# Fontly Template SVG Export

## Cấu trúc thư mục

```
svg_export/
├── template_18.svg       ← file SVG của từng template
├── template_19.svg
├── ...
├── template_149.svg
├── fonts/                ← 65 font file (PHẢI giữ cùng chỗ với SVG)
│   ├── 115_AlistairSignature.otf
│   ├── 124_Damask.otf
│   └── ...
└── README.md             ← file này
```

---

## Cách mở SVG

| Tool | Cách mở |
|------|---------|
| **Inkscape** | File > Open → chọn file `.svg` |
| **Figma** | Import → chọn `.svg` |
| **Adobe Illustrator** | File > Open → `.svg` |
| **Trình duyệt** | Kéo thả file `.svg` vào Chrome/Edge/Firefox |

> ⚠️ Folder `fonts/` phải nằm **cùng thư mục** với file SVG mới hiển thị đúng font.

---

## Danh sách 118 Templates

| ID | Tên | Category |
|----|-----|----------|
| 18 | Good morning! | Morning |
| 19 | DON'T GIVE UP | Motivation |
| 20 | Mystery of Love | Love |
| 21 | Fall in Love | Autumn |
| 23 | And then we love | Love |
| 25 | Be strong | Motivation |
| 26 | Be yourself | Motivation |
| 27 | Never give up | Motivation |
| 28 | No excuses | Motivation |
| 29 | Hello, my friends | Morning |
| 30 | Motivation | Motivation |
| 31 | — | — |
| 33 | — | — |
| 34 | — | — |
| 35 | — | — |
| 36 | — | — |
| 37 | — | — |
| 38 | — | — |
| 39 | — | — |
| 40 | — | — |
| 41 | — | — |
| 42 | — | — |
| 44 | — | — |
| 46 | — | — |
| 47 | — | — |
| 48 | — | — |
| 49 | — | — |
| 50 | — | — |
| 51 | — | — |
| 52 | — | — |
| 53 | — | — |
| 54 | — | — |
| 58 | — | — |
| 59 | — | — |
| 60 | — | — |
| 61 | — | — |
| 62 | — | — |
| 63 | — | — |
| 64 | — | — |
| 65 | — | — |
| 66 | — | — |
| 67 | — | — |
| 68 | — | — |
| 69 | — | — |
| 70 | — | — |
| 71 | — | — |
| 72 | — | — |
| 73 | — | — |
| 74 | — | — |
| 75 | — | — |
| 76 | — | — |
| 77 | — | — |
| 78 | — | — |
| 79 | — | — |
| 80 | — | — |
| 81 | — | — |
| 82 | — | — |
| 83 | — | — |
| 84 | — | — |
| 85 | — | — |
| 86 | — | — |
| 87 | — | — |
| 88 | — | — |
| 89 | — | — |
| 90 | — | — |
| 91 | — | — |
| 92 | — | — |
| 93 | Christmas | — |
| 94 | — | — |
| 95 | — | — |
| 96 | — | — |
| 97 | — | — |
| 98 | — | — |
| 99 | — | — |
| 101 | — | — |
| 102 | — | — |
| 103 | — | — |
| 104 | — | — |
| 105 | — | — |
| 106 | — | — |
| 107 | — | — |
| 108 | — | — |
| 109 | — | — |
| 110 | — | — |
| 111 | — | — |
| 112 | — | — |
| 113 | — | — |
| 114 | — | — |
| 115 | — | — |
| 116 | — | — |
| 117 | — | — |
| 118 | — | — |
| 119 | — | — |
| 120 | — | — |
| 121 | — | — |
| 122 | — | — |
| 123 | — | — |
| 124 | — | — |
| 125 | — | — |
| 126 | — | — |
| 127 | — | — |
| 128 | — | — |
| 129 | — | — |
| 130 | — | — |
| 132 | — | — |
| 134 | — | — |
| 135 | — | — |
| 136 | — | — |
| 138 | — | — |
| 139 | — | — |
| 140 | — | — |
| 141 | — | — |
| 142 | — | — |
| 143 | — | — |
| 144 | — | — |
| 145 | — | — |
| 147 | — | — |
| 149 | — | — |

---

## Cấu trúc SVG mỗi template

```xml
<svg viewBox="0 0 1080 1920" width="540" height="960">
  <defs>
    <!-- @font-face cho các font -->
    <!-- feDropShadow filter cho shadow -->
  </defs>

  <!-- Mỗi element là 1 <g> với matrix transform -->
  <g transform="matrix(scaleX, skewY, skewX, scaleY, translateX, translateY)">

    <!-- Background rect (nếu có) -->
    <rect x="0" y="0" width="..." height="..." fill="..." />

    <!-- Text chỉnh sửa được -->
    <text x="..." y="..." text-anchor="middle" style="font-size:...px; font-family:'f115'; fill:#fff">
      Nội dung text
    </text>

  </g>

  <!-- stageSticker: placeholder dashed box -->
  <g transform="matrix(...)">
    <rect stroke-dasharray="10 5" ... />
    <text>sticker #2215</text>
  </g>
</svg>
```

### Giải thích matrix transform

```
matrix(a, b, c, d, e, f)
  a = scale X
  b = skew Y  (≠0 khi có rotation)
  c = skew X  (≠0 khi có rotation)
  d = scale Y
  e = translate X  ← vị trí ngang trên canvas 1080px
  f = translate Y  ← vị trí dọc trên canvas 1920px
```

Canvas gốc: **1080 × 1920 px** (portrait 9:16).  
SVG hiển thị ở **540 × 960 px** (scale 50%).

---

## Fonts sử dụng

| Font ID | Tên font | File |
|---------|----------|------|
| 5 | Guerrilla | 5_Guerrilla.otf |
| 8 | ZingRust | 8_ZingRust.otf |
| 23 | Nexa | 23_Nexa.ttf |
| 29 | Raleway | 29_Raleway.ttf |
| 31 | Panton | 31_Panton.otf |
| 32 | ZingScriptRust | 32_ZingScriptRust.otf |
| 33 | MarckScript | 33_MarckScript.ttf |
| 37 | BernierShade | 37_BernierShade.otf |
| 77 | Arsenal | 77_Arsenal.ttf |
| 79 | Comfortaa | 79_Comfortaa.ttf |
| 80 | Cormorant | 80_Cormorant.ttf |
| 83 | Jura | 83_Jura.ttf |
| 84 | Gabriela | 84_Gabriela.ttf |
| 85 | Neu | 85_Neu.ttf |
| 87 | Oswald | 87_Oswald.ttf |
| 90 | Montserrat | 90_Montserrat.ttf |
| 99 | Fire | 99_Fire.otf |
| 115 | AlistairSignature | 115_AlistairSignature.otf |
| 118 | Christofher | 118_Christofher.otf |
| 119 | Hamiltone | 119_Hamiltone.ttf |
| 122 | Sverdlovsk | 122_Sverdlovsk.ttf |
| 124 | Damask | 124_Damask.otf |
| 127 | Anjhay | 127_Anjhay.otf |
| 128 | Antarctic | 128_Antarctic.ttf |
| 131 | Atziluth Script | 131_Atziluth_Script.otf |
| 132 | Autumn Feel | 132_Autumn_Feel.otf |
| 138 | Betmo | 138_Betmo.otf |
| 141 | Bitter | 141_Bitter.ttf |
| 154 | New York | 154_New_York.ttf |
| 156 | Inter | 156_Inter.ttf |
| 157 | Georgia | 157_Georgia.ttf |
| 158 | Montserrat | 158_Montserrat.ttf |
| 161 | DIN | 161_DIN.ttf |
| 163 | Playfair | 163_Playfair.ttf |
| 167 | Lora | 167_Lora.ttf |
| 173 | HelloScript | 173_HelloScript.otf |
| 174 | TheArtist | 174_TheArtist.otf |
| 175 | Cormorant | 175_Cormorant.ttf |
| 177 | Genplan | 177_Genplan.otf |
| 178 | Rondolux | 178_Rondolux.otf |
| 180 | Neutral Face | 180_Neutral_Face.otf |
| 184 | Garden Club | 184_Garden_Club.otf |
| 185 | Hamiltone | 185_Hamiltone.otf |
| 186 | Custodia Deco | 186_Custodia_Deco.otf |
| 190 | Karakuli | 190_Karakuli.otf |
| 195 | Maybug | 195_Maybug.otf |
| 196 | Dewi | 196_Dewi.otf |
| 197 | Display | 197_Display.ttf |
| 203 | Bodoni | 203_Bodoni.ttf |
| 204 | Aesthetic | 204_Aesthetic.otf |
| 205 | Century | 205_Century.ttf |
| 210 | Outline | 210_Outline.otf |
| 214 | Hoefler | 214_Hoefler.ttf |
| 224 | Yeseva | 224_Yeseva.ttf |
| 226 | Sriracha | 226_Sriracha.ttf |
| 229 | Engry | 229_Engry.otf |
| 235 | Dollie Barbie | 235_Dollie_Barbie.otf |
| 243 | R Bold | 243_R_Bold.ttf |
| 248 | Neucha | 248_Neucha.ttf |
| 252 | Noto | 252_Noto.ttf |
| 261 | ZenAnti | 261_ZenAnti.otf |
| 270 | Merriweather | 270_Merriweather.ttf |
| 271 | Times | 271_Times.ttf |
| 276 | Great Vibes | 276_Great_Vibes.ttf |
| 280 | Relief | 280_Relief.ttf |
