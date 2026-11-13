# Fast&Force – TVC and HT-1080Z games and demos (sources)

[🇭🇺 Magyar változat](README.md)

This repository contains the **buildable source code** of my games and demos for the **Videoton TV Computer (TVC)** and the **HT-1080Z** school computer, organised by year.

Next to every project you will find its assets (ZX7-compressed graphics, music, tables) and, in most cases, the ready-to-run `.cas` file that can be loaded straight into an emulator.

- **GitHub:** <https://github.com/belaszalontai/fast-and-force>
- **Clone:** `git clone https://github.com/belaszalontai/fast-and-force.git`
- **License:** [The Unlicense](LICENSE) – the code is public domain, music rights stay with the composers

---

## Directory layout

```
github_release/
├── TVC/                     # Videoton TV Computer projects
│   ├── 2023/                # 3ch_player, orgona3
│   ├── 2024/                # 1tracker-player, 3ch-for-basic, jukebox,
│   │                        # sid-player, trse-jarreplasma
│   ├── 2025/                # lovebyte, toad2025, xbasic-basicinvaders,
│   │                        # xbasic-dimensionloop
│   └── 2026/                # arok-demo-2026, buek-demo, plasmoid-arcade,
│                            # stmf-player
└── HT1080Z/                 # HT-1080Z projects
    ├── 2024/                # ht-1080zaj-demo, jukebox, plasma-demo,
    │                        # pt3-player, sid-player-hw, sid-player-sw
    └── 2026/                # commando
```

---

# TVC – Videoton TV Computer

## 2023

- **`TVC/2023/3ch_player/`** – 3-channel, interrupt-driven music player (v1.1, 2023-12-26)
  - Source: `3ch_player.tvcasm`
  - Build: `3ch_player.cas`
  - Specs: IRQ ~13950 Hz, 183 cycles (worst case 340), ~82% CPU

- **`TVC/2023/orgona3/`** – ORGONA3: 3-channel organ program played from the keyboard
  - Source: `orgona3.tvcasm` (built on the 3ch_player engine)
  - Build: `orgona3.cas`
  - Extra: `orgona3_működése.pdf` – detailed technical description (Hungarian)

## 2024

- **`TVC/2024/1tracker-player/`** – plays 1tracker (ZX 1-bit Squat Engine) music on the TVC with 4-bit mixing
  - Source: `1tracker-player-tvc.dt80asm`
  - Example: `1tracker-player-tvc_geostorm.dt80asm`
  - Build: `1tracker-player-tvc.cas`
  - Notes: `olvassel.txt` (how to paste your own music)

- **`TVC/2024/3ch-for-basic/`** – 3-channel music player routine callable from BASIC
  - Source: `3chForBasic.dt80asm`
  - Music data: `music.txt`
  - Build: `3chForBasic.cas`

- **`TVC/2024/jukebox/`** – TVC music jukebox with 10 tunes
  - Source: `jukebox.dt80asm`
  - Tunes: `1.zx7` … `10.zx7` (ZX7-compressed)
  - Intro picture: `jukebox.zx7`
  - Build: `jukebox.cas`
  - IRQ ~8491 Hz, 280 cycles, ~77% CPU

- **`TVC/2024/sid-player/`** – experimental SID-to-TVC player variants (4 separate sources)
  - `3ch-crtc.dt80asm` – 3 channels, ~5008 Hz IRQ, 268 cycles (~43% CPU)
  - `3ch_adsr.dt80asm` – 3 channels with ADSR, ~8491 Hz IRQ, 280 cycles (~77% CPU)
  - `3ch_wavetable.dt80asm` – 3 channels with wavetable, ~8491 Hz IRQ, 258 cycles (~71% CPU)
  - `2ch-fx-crtc.dt80asm` – 2 channels + effects, ~4340 Hz IRQ, max. 204 cycles (~29% CPU)
  - Tunes: `Asteroid_War.sid.txt`, `Final_Fantasy-Victory_Fanfare.sid.txt`, `music_simple.txt`, `music_2ch_crtc.txt`

- **`TVC/2024/trse-jarreplasma/`** – Jarre plasma demo written in TRSE (Turbo Rascal Syntax Error)
  - Source: `main.ras` + `music.tru`
  - Resources: `resources/` (`main_pic.zx7`, `jarreplasma_pic.zx7`, `Drax_Music.sid.bin.zx7`, `smooth_data.bin`)
  - Build: `fafdem.cas`

## 2025

- **`TVC/2025/lovebyte/`** – ROBODATE 2025: 1k intro (Lovebyte "Blind Date!", Oldschool Platforms category)
  - Source: `intro.dt80asm`
  - Asset: `out24.bin.zx7`
  - Build: `robodate.cas` – exactly 1024 bytes
  - Notes: `FILE_ID.DIZ`

- **`TVC/2025/toad2025/`** – "LINES AND MORE" demo for the 40-year-old TVC (TOAD 2025)
  - Source: `doomdemo.dt80asm` (100% Z80 assembly)
  - Music: `Classical.sid.bin.zx7`, `Happy_Birthday.sid.bin.zx7`, `Outro.sid.bin.zx7`
  - Pictures: `pic_title`, `pic_toad`, `pic_no_ai`, `pic_tvc40_faf`, `pic_end`
  - Table: `smooth_data.bin`
  - Build: `linesandmore.cas` – 25762 bytes
  - Notes: `FILE_ID.DIZ`

- **`TVC/2025/xbasic-basicinvaders/`** – BASIC game (X-BASIC)
  - Source: `basicinvaders.xbas`, `basicinvaders.bas`
  - Build: `basicinvaders.cas`
  - Extras: hardware scrolling, 2-channel converted SID music, `FILE_ID.DIZ`

- **`TVC/2025/xbasic-dimensionloop/`** – BASIC game (X-BASIC)
  - Source: `dimensionloop.xbas`, `dimensionloop.bas`
  - Build: `dimensionloop.cas`
  - Extras: hardware scrolling, 2-channel converted SID music, `FILE_ID.DIZ`

## 2026

- **`TVC/2026/arok-demo-2026/`** – AROK 2026 jukebox demo (15 scenes)
  - Source: `jukebox_demo.dt80asm`
  - Effects: CRTC horizontal effect, plasma, rotozoom, tunnel, greetings, "music by text"
  - Music (6 tunes, ZX7): Lyra III, Orava II, Beat to the pulp, Arcane Zone Part 2, Celebrate, High Color
  - Graphics: `pic-main.zx7`, `greetings_4c.bin.zx7`, `charset.bin.zx7`, `texture8k.bin.zx7`, `pic_tvc40_faf.bin.zx7`
  - Tables: `tunnel_tex.bin`, `tunnel_tex2.bin`, `tunnel_angle.bin`, `tunnel_dist.bin`, `smooth_data_gfx16.bin`
  - Build: `jukebox_demo.cas`
  - Extra: `how to run in emulator.docx`

- **`TVC/2026/buek-demo/`** – BUEK DEMO: split screen (2 CRTC splits) + scrolling
  - Source: `SplitScreen.dt80asm`
  - Music: `Crome_vs_Turrican_2002.sid.txt`
  - Asset: `out24.bin.zx7`
  - Build: `BUEK-DEMO.cas`

- **`TVC/2026/plasmoid-arcade/`** – PLASMOID: complete arcade game (the largest project)
  - Source: `plasmoid.dt80asm` (155 KB)
  - Graphics: `plasmoid_mainTVC.bin.zx7`, `title.bin.zx7`, `ship_main.bin.zx7`, `gameoverTVC.bin.zx7`, `rewardTVC.bin.zx7`, `logo_picture.zx7`, `explosion.bin.zx7`
  - Music: `Plasma_Intro.sid.bin.zx7`, `Crack_It_Up.sid.bin.zx7`, `Outro.sid.bin.zx7`
  - Digi effects (8 kHz): `8kHz_*.bin.zx7`
  - Table: `smooth_data.bin`

- **`TVC/2026/stmf-player/`** – SAA1099 STMF music player (Vass Sanyi Multichip Soundcard, slot 1)
  - Source: `TVC_SAA_STMF_PLAYER.dt80asm` – near-complete STMF player
  - Source: `SAMCoupe_SAA_STMF_MINIMAL.dt80asm` – minimal feature set, lower CPU load
  - Build: `TVC_SAA_STMF_PLAYER.cas`
  - Tunes: `Popcorn.stmf.bin`, `04 - Arcane-Zone-Part-2-ZX-AAA-Demo-Compo-2013-2-.bin`
  - Notes: `olvassel.txt` (tracker: https://saa1099tracker.borik.net/)

---

# HT-1080Z

## 2024

- **`HT1080Z/2024/ht-1080zaj-demo/`** – "HT-1080ZAJ" demo
  - Source: `fafdem.dt80asm`
  - Music: `2FAST.pt3`
  - Graphics: `faflogo`, `whitenoise`, `whitenoisewithlogo`, `wn-*` (zoom + scroll), `anim1` … `anim10` (all `.htpic.zx7`)
  - Build: `FAFDEM.CAS`
  - How to run: `readme.txt` (emulator, SYSTEM mode, 17129)

- **`HT1080Z/2024/jukebox/`** – PT3 music jukebox, in two versions
  - `jukebox.dt80asm` – version with 49 tunes → `jukebox.cas`
  - `jukebox25.dt80asm` – version with 31 tunes and a reworked memory layout → `jukebox25.cas`, `jukebox25.bin`
  - Music library: 50 `.pt3.zx7` files (ZX/Atari PT3 tunes)
  - Intro picture: `jukebox-title.htpic.zx7`

- **`HT1080Z/2024/plasma-demo/`** – Plasma demo
  - Source: `Plasma.dt80asm`
  - Music: `Vortex_faf.pt3`
  - Graphics: `faflogo.htpic.zx7`
  - Build: `PLASMA.CAS`

- **`HT1080Z/2024/pt3-player/`** – PT2/PT3 music player
  - Source: `pt3-player.dt80asm` (P3X player, HT-1080Z port)
  - Music: `Future.pt3`
  - Build: `PT3-PL.CAS`

- **`HT1080Z/2024/sid-player-hw/`** – playing SID music on the AY-3-8910 sound chip (hardware path)
  - Source: `SIDplayer.dt80asm`
  - Music: `Comic_Bakery.sid.bin.zx7`
  - Graphics: `title_pic2.htpic.zx7`

- **`HT1080Z/2024/sid-player-sw/`** – 3-channel software SID player
  - Source: `3chPlayer.dt80asm`
  - Music: `Turrican_III_Remix.sid.txt`
  - Graphics: `title_pic.htpic`

## 2026

- **`HT1080Z/2026/commando/`** – COMMANDO: C64 game ported to the HT-1080Z
  - Source: `commando.dt80asm` (99 KB)
  - Music: `commando.pt3.zx7`
  - Graphics: `main.htpic.zx7`, `map_level_01_128x768.htpic.zx7`
  - Build: `COMMAN.CAS`
  - How to run: `readme.txt` (emulator, SYSTEM mode, 17129)

---

## File types

| Extension | Meaning |
|---|---|
| `.dt80asm`, `.tvcasm` | Z80 assembly source (TVC Developer Tool) |
| `.cas` | ready-to-load CAS file |
| `.bin` | uncompressed binary asset (table, picture, music) |
| `.zx7` | ZX7-compressed binary asset |
| `.htpic`, `.htpic.zx7` | HT-1080Z screen picture (1024-byte character map) |
| `.pt3`, `.pt3.zx7` | ProTracker 3 music |
| `.stmf.bin` | SAA1099 tracker (STMF) music |
| `.sid.txt`, `.sid.bin.zx7` | music data converted from SID |
| `.bas`, `.xbas` | BASIC / X-BASIC source |
| `.ras`, `.tru` | TRSE project source (code / music) |
| `FILE_ID.DIZ`, `readme.txt`, `olvassel.txt` | descriptions, run instructions |

> All music files (`.pt3`, `.stmf.bin`, `.sid.txt`, `.sid.bin.zx7` and any other music)
> **remain the copyright of the composers**, not of the code author.

---

## Build and run

- **TVC projects (`.dt80asm`, `.tvcasm`)**: TVC Developer Tool. Programs are built at `org 6639` (`$1A03`) with a BASIC header; the build output is a `.cas` file.
- **HT-1080Z projects**: the same tool, but `org 17129` + `genbinary` (no BASIC header); the `.cas` must be loaded in the emulator's SYSTEM mode.
- **X-BASIC games (`.xbas`)**: X-BASIC editor/compiler.
- **TRSE project (`main.ras`)**: TRSE (Turbo Rascal Syntax Error).
- **HT-1080Z emulator**: http://gaia.atilia.eu/download/ht1080z1.7.0.zip – `ALT+T` to attach a CAS, `MEMORY SIZE? 49152`, `>SYSTEM`, `*? <NAME>`, `*? /17129`.

---

## License

The source code is **public domain** under [The Unlicense](LICENSE). Anyone is free to copy,
modify, publish, use, compile, sell and distribute it – as source or as a binary, for any
purpose (including commercial), by any means. Attribution is not required.

> **Music – copyright notice:** the **STMF, PT3 and SID** files, and the music data converted
> from them (`.sid.txt`, `.sid.bin.zx7`, `.pt3.zx7`, `.stmf.bin`), **remain the copyright of
> the composers**, not of the code author. The public domain dedication does not cover these
> music assets; reusing them requires permission from the original composer. The same applies
> to third-party graphics.

---

Author: Fast&Force – Béla Szalontai
