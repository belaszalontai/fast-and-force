# Fast&Force – TVC és HT-1080Z játékok és demók (forráskódok)

Ez a gyűjtemény a **Videoton TV Computer (TVC)** és a **HT-1080Z** iskolaszámítógépre írt játékaim és demóim **buildelhető forráskódjait** tartalmazza, évek szerint rendezve.

Minden projekt mellett megtalálhatók a hozzá tartozó asset-ek (ZX7-tel tömörített grafika, zene, táblázatok), és a legtöbb esetben a kész, emulátorban azonnal betölthető `.cas` fájl is.

- **GitHub:** <https://github.com/belaszalontai/fast-and-force>
- **Klónozás:** `git clone https://github.com/belaszalontai/fast-and-force.git`
- **Licenc:** [The Unlicense](LICENSE) – a kód közkincs, a zenei anyagok jogai a zeneszerzőknél maradnak

---

## Mappaszerkezet

```
github_release/
├── TVC/                     # Videoton TV Computer projektek
│   ├── 2023/                # 3ch_player, orgona3
│   ├── 2024/                # 1tracker-player, 3ch-for-basic, jukebox,
│   │                        # sid-player, trse-jarreplasma
│   ├── 2025/                # lovebyte, toad2025, xbasic-basicinvaders,
│   │                        # xbasic-dimensionloop
│   └── 2026/                # arok-demo-2026, buek-demo, plasmoid-arcade,
│                            # stmf-player
└── HT1080Z/                 # HT-1080Z projektek
    ├── 2024/                # ht-1080zaj-demo, jukebox, plasma-demo,
    │                        # pt3-player, sid-player-hw, sid-player-sw
    └── 2026/                # commando
```

---

# TVC – Videoton TV Computer

## 2023

- **`TVC/2023/3ch_player/`** – 3 csatornás, megszakítás-vezérelt zenélejátszó (v1.1, 2023.12.26)
  - Forrás: `3ch_player.tvcasm`
  - Kész: `3ch_player.cas`
  - Jellemzők: IRQ ~13950 Hz, 183 ciklus (worst case 340), ~82% CPU

- **`TVC/2023/orgona3/`** – ORGONA3: billentyűzetről játszható, 3 csatornás orgona program
  - Forrás: `orgona3.tvcasm` (a 3ch_player motorra épül)
  - Kész: `orgona3.cas`
  - Extra: `orgona3_működése.pdf` – részletes működési leírás

## 2024

- **`TVC/2024/1tracker-player/`** – 1tracker (ZX 1-bit Squat Engine) zenék lejátszása TVC-n, 4 bites keveréssel
  - Forrás: `1tracker-player-tvc.dt80asm`
  - Példa: `1tracker-player-tvc_geostorm.dt80asm`
  - Kész: `1tracker-player-tvc.cas`
  - Leírás: `olvassel.txt` (a zene beillesztésének menete)

- **`TVC/2024/3ch-for-basic/`** – BASIC-ból hívható 3 csatornás zenélejátszó rutin
  - Forrás: `3chForBasic.dt80asm`
  - Zenedata: `music.txt`
  - Kész: `3chForBasic.cas`

- **`TVC/2024/jukebox/`** – TVC zenejukebox, 10 dallal
  - Forrás: `jukebox.dt80asm`
  - Zenék: `1.zx7` … `10.zx7` (ZX7-tömörített)
  - Intro kép: `jukebox.zx7`
  - Kész: `jukebox.cas`
  - IRQ ~8491 Hz, 280 ciklus, ~77% CPU

- **`TVC/2024/sid-player/`** – SID zenék TVC-s lejátszóinak kísérleti változatai (4 külön forrás)
  - `3ch-crtc.dt80asm` – 3 csatorna, ~5008 Hz IRQ, 268 ciklus (~43% CPU)
  - `3ch_adsr.dt80asm` – 3 csatorna ADSR-rel, ~8491 Hz IRQ, 280 ciklus (~77% CPU)
  - `3ch_wavetable.dt80asm` – 3 csatorna wavetable-lel, ~8491 Hz IRQ, 258 ciklus (~71% CPU)
  - `2ch-fx-crtc.dt80asm` – 2 csatorna + effektek, ~4340 Hz IRQ, max. 204 ciklus (~29% CPU)
  - Zenék: `Asteroid_War.sid.txt`, `Final_Fantasy-Victory_Fanfare.sid.txt`, `music_simple.txt`, `music_2ch_crtc.txt`

- **`TVC/2024/trse-jarreplasma/`** – TRSE-ben (Turbo Rascal Syntax Error) készült Jarre-plasma demó
  - Forrás: `main.ras` + `music.tru`
  - Erőforrások: `resources/` (`main_pic.zx7`, `jarreplasma_pic.zx7`, `Drax_Music.sid.bin.zx7`, `smooth_data.bin`)
  - Kész: `fafdem.cas`

## 2025

- **`TVC/2025/lovebyte/`** – ROBODATE 2025: 1k intro (Lovebyte „Blind Date!", Oldschool Platforms kategória)
  - Forrás: `intro.dt80asm`
  - Asset: `out24.bin.zx7`
  - Kész: `robodate.cas` – pontosan 1024 byte
  - Leírás: `FILE_ID.DIZ`

- **`TVC/2025/toad2025/`** – „LINES AND MORE" demó a 40 éves TVC-re (TOAD 2025)
  - Forrás: `doomdemo.dt80asm` (100% Z80 assembly)
  - Zenék: `Classical.sid.bin.zx7`, `Happy_Birthday.sid.bin.zx7`, `Outro.sid.bin.zx7`
  - Képek: `pic_title`, `pic_toad`, `pic_no_ai`, `pic_tvc40_faf`, `pic_end`
  - Táblázat: `smooth_data.bin`
  - Kész: `linesandmore.cas` – 25762 byte
  - Leírás: `FILE_ID.DIZ`

- **`TVC/2025/xbasic-basicinvaders/`** – BASIC játék (X-BASIC)
  - Forrás: `basicinvaders.xbas`, `basicinvaders.bas`
  - Kész: `basicinvaders.cas`
  - Extra: hardveres scroll, 2 csatornás konvertált SID zene, `FILE_ID.DIZ`

- **`TVC/2025/xbasic-dimensionloop/`** – BASIC játék (X-BASIC)
  - Forrás: `dimensionloop.xbas`, `dimensionloop.bas`
  - Kész: `dimensionloop.cas`
  - Extra: hardveres scroll, 2 csatornás konvertált SID zene, `FILE_ID.DIZ`

## 2026

- **`TVC/2026/arok-demo-2026/`** – AROK 2026 jukebox demo (15 jelenet)
  - Forrás: `jukebox_demo.dt80asm`
  - Effektek: CRTC vízszintes effekt, plasma, rotozoom, tunnel, greetings, „music by text"
  - Zenék (6 db, ZX7): Lyra III, Orava II, Beat to the pulp, Arcane Zone Part 2, Celebrate, High Color
  - Grafika: `pic-main.zx7`, `greetings_4c.bin.zx7`, `charset.bin.zx7`, `texture8k.bin.zx7`, `pic_tvc40_faf.bin.zx7`
  - Táblák: `tunnel_tex.bin`, `tunnel_tex2.bin`, `tunnel_angle.bin`, `tunnel_dist.bin`, `smooth_data_gfx16.bin`
  - Kész: `jukebox_demo.cas`
  - Extra: `how to run in emulator.docx`

- **`TVC/2026/buek-demo/`** – BUEK DEMO: split-screen (2 CRTC split) + scroll
  - Forrás: `SplitScreen.dt80asm`
  - Zene: `Crome_vs_Turrican_2002.sid.txt`
  - Asset: `out24.bin.zx7`
  - Kész: `BUEK-DEMO.cas`

- **`TVC/2026/plasmoid-arcade/`** – PLASMOID: teljes arcade játék (a legnagyobb projekt)
  - Forrás: `plasmoid.dt80asm` (155 KB)
  - Grafika: `plasmoid_mainTVC.bin.zx7`, `title.bin.zx7`, `ship_main.bin.zx7`, `gameoverTVC.bin.zx7`, `rewardTVC.bin.zx7`, `logo_picture.zx7`, `explosion.bin.zx7`
  - Zene: `Plasma_Intro.sid.bin.zx7`, `Crack_It_Up.sid.bin.zx7`, `Outro.sid.bin.zx7`
  - Digi effektek (8 kHz): `8kHz_*.bin.zx7`
  - Táblázat: `smooth_data.bin`

- **`TVC/2026/stmf-player/`** – SAA1099 (Vass Sanyi Multichip Soundcard, 1-es slot) STMF zenélejátszó
  - Forrás: `TVC_SAA_STMF_PLAYER.dt80asm` – majdnem teljes STMF lejátszó
  - Forrás: `SAMCoupe_SAA_STMF_MINIMAL.dt80asm` – minimális feature-készlet, kisebb CPU-terhelés
  - Kész: `TVC_SAA_STMF_PLAYER.cas`
  - Zenék: `Popcorn.stmf.bin`, `04 - Arcane-Zone-Part-2-ZX-AAA-Demo-Compo-2013-2-.bin`
  - Leírás: `olvassel.txt` (tracker: https://saa1099tracker.borik.net/)

---

# HT-1080Z

## 2024

- **`HT1080Z/2024/ht-1080zaj-demo/`** – „HT-1080ZAJ" demo
  - Forrás: `fafdem.dt80asm`
  - Zene: `2FAST.pt3`
  - Grafika: `faflogo`, `whitenoise`, `whitenoisewithlogo`, `wn-*` (zoom + scroll), `anim1` … `anim10` (mind `.htpic.zx7`)
  - Kész: `FAFDEM.CAS`
  - Futtatás: `readme.txt` (emulátor, SYSTEM mód, 17129)

- **`HT1080Z/2024/jukebox/`** – PT3 zenejukebox, két verzióban
  - `jukebox.dt80asm` – 49 dalt tartalmazó verzió → `jukebox.cas`
  - `jukebox25.dt80asm` – 31 dalt tartalmazó, átalakított memórialayoutú verzió → `jukebox25.cas`, `jukebox25.bin`
  - Zenetár: 50 db `.pt3.zx7` (ZX/Atari PT3 zenék)
  - Intro kép: `jukebox-title.htpic.zx7`

- **`HT1080Z/2024/plasma-demo/`** – Plasma demó
  - Forrás: `Plasma.dt80asm`
  - Zene: `Vortex_faf.pt3`
  - Grafika: `faflogo.htpic.zx7`
  - Kész: `PLASMA.CAS`

- **`HT1080Z/2024/pt3-player/`** – PT2/PT3 zenélejátszó
  - Forrás: `pt3-player.dt80asm` (P3X player, HT-1080Z port)
  - Zene: `Future.pt3`
  - Kész: `PT3-PL.CAS`

- **`HT1080Z/2024/sid-player-hw/`** – SID zene lejátszása AY-3-8910 hangchipen (hardveres út)
  - Forrás: `SIDplayer.dt80asm`
  - Zene: `Comic_Bakery.sid.bin.zx7`
  - Grafika: `title_pic2.htpic.zx7`

- **`HT1080Z/2024/sid-player-sw/`** – 3 csatornás, szoftveres SID-lejátszó
  - Forrás: `3chPlayer.dt80asm`
  - Zene: `Turrican_III_Remix.sid.txt`
  - Grafika: `title_pic.htpic`

## 2026

- **`HT1080Z/2026/commando/`** – COMMANDO: C64-es játék portja HT-1080Z-re
  - Forrás: `commando.dt80asm` (99 KB)
  - Zene: `commando.pt3.zx7`
  - Grafika: `main.htpic.zx7`, `map_level_01_128x768.htpic.zx7`
  - Kész: `COMMAN.CAS`
  - Futtatás: `readme.txt` (emulátor, SYSTEM mód, 17129)

---

## Fájltípusok

| Kiterjesztés | Jelentés |
|---|---|
| `.dt80asm`, `.tvcasm` | Z80 assembly forrás (TVC Developer Tool) |
| `.cas` | kész, betölthető CAS fájl |
| `.bin` | tömörítetlen bináris asset (tábla, kép, zene) |
| `.zx7` | ZX7-tel tömörített bináris asset |
| `.htpic`, `.htpic.zx7` | HT-1080Z képernyőkép (1024 byteos karaktertérkép) |
| `.pt3`, `.pt3.zx7` | ProTracker 3 zene |
| `.stmf.bin` | SAA1099 tracker (STMF) zene |
| `.sid.txt`, `.sid.bin.zx7` | SID zenéből konvertált zenei adat |
| `.bas`, `.xbas` | BASIC / X-BASIC forrás |
| `.ras`, `.tru` | TRSE projekt forrás (kód / zene) |
| `FILE_ID.DIZ`, `readme.txt`, `olvassel.txt` | leírások, futtatási útmutatók |

> A `.pt3`, `.stmf.bin`, `.sid.txt`, `.sid.bin.zx7` (és minden egyéb zenei) fájl
> **szerzői jogai a zenék szerzőit illetik**, nem a kód szerzőjét.

---

## Build és futtatás

- **TVC projektek (`.dt80asm`, `.tvcasm`)**: TVC Developer Tool. A programok `org 6639` (`$1A03`) + BASIC header felépítésűek, a build eredménye `.cas`.
- **HT-1080Z projektek**: ugyanez az eszköz, de `org 17129` + `genbinary` (nincs BASIC header), a `.cas`-t az emulátor SYSTEM módjában kell betölteni.
- **X-BASIC játékok (`.xbas`)**: X-BASIC editor/fordító.
- **TRSE projekt (`main.ras`)**: TRSE (Turbo Rascal Syntax Error).
- **HT-1080Z emulátor**: http://gaia.atilia.eu/download/ht1080z1.7.0.zip – `ALT+T` CAS betöltés, `MEMORY SIZE? 49152`, `>SYSTEM`, `*? <NÉV>`, `*? /17129`.

---

## Licenc

A forráskód **közkincs (public domain)**, [The Unlicense](LICENSE) szerint. Bárki szabadon
másolhatja, módosíthatja, publikálhatja, felhasználhatja, fordíthatja, eladhatja és
terjesztheti – forrásként vagy binárisként, bármilyen célra (kereskedelmi célra is),
bármilyen módon. Az eredeti szerző feltüntetése nem kötelező.

> **Zenei anyagok – szerzői jogok:** az **STMF, PT3 és SID** fájlok, valamint a belőlük
> konvertált zenei adatok (`.sid.txt`, `.sid.bin.zx7`, `.pt3.zx7`, `.stmf.bin`)
> **szerzői jogai a zenék szerzőit illetik**, nem a kód szerzőjét. A kód közkincs
> felajánlása ezekre a zenei anyagokra nem terjed ki, felhasználásukhoz az eredeti
> zeneszerző engedélye szükséges. Ugyanez érvényes a harmadik féltől származó grafikákra is.

---

Szerző: Fast&Force – Szalontai Béla
