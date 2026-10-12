# Laudate Dominum, version 3: what changed

Version 3 is Claude's revision of its own Choir II. GPT-6 Astra's Choir I is exactly as in version 2: `v3/choir1.ly` is a byte-for-byte copy of `laudate-dominum/choir1.ly`. Version 2 itself is unchanged (`laudate-dominum.ly`, `output/pdf/laudate-dominum.pdf`).

Files: `laudate-dominum-v3.ly` (master), `laudate-dominum/v3/choir1.ly`, `laudate-dominum/v3/choir2.ly`, `compile-laudate-dominum-v3.bat`, and `output/pdf/laudate-dominum-v3.pdf` / `.mid`. The tools are in `scripts/laudate-dominum/v3/`.

## Choir II: musical changes

1. **§2, bars 11–20, "laudate eum, omnes populi": now a real point of imitation.**
   - Version 2: Cantus II and Altus II sang the soggetto together in parallel thirds. 58% of the attack points were block chords.
   - Version 3: the voices enter one at a time, a bar and a half apart, so the soggetto's rhythms interlock instead of coinciding:
     - Cantus II at 11:3 on f′;
     - Bassus II at 13:1 on G, in the minor-third form;
     - Altus II at 14:3 on c′;
     - Tenor II at 16:1 on f, the soggetto's own voice and pitch, as in Astra's opening.
   - Each voice follows its entry with a second point on "omnes populi" in one fixed rhythm: minim, minim, dotted minim, crotchet, semibreve. The entries are Cantus 13:3, Bassus 15:1 (in inversion), Altus 16:3 and Tenor 18:1.
   - Cantus II rests for a bar, then re-enters high on d″ at 16:3 with a 9–8 suspension over the tenor. The section ends on C with a 4–3 suspension and the leading note in the cantus.
   - Block chords: 35%.
2. **§10, bars 85–93, "Sicut erat in principio": entries from the bass upward, a bar and a half apart.**
   - Bassus II at 85:1 on F, Tenor II at 86:3 on c, Altus II at 88:1 on c′ and Cantus II at 89:3 on g′. Each new voice moves while the others hold.
   - IV–V–i cadence on G minor, with F♯ in the altus.
   - Block chords: 39% (version 2: 56%).
3. **Bar 47 (§6).** In version 2, Cantus II attacked a′ a major seventh above Tenor II's held b♭, which was the lowest voice at that moment. Tenor II now moves to a, and the only dissonance in the bar is an ordinary suspension at 47:3.
4. **Doubling between the choirs.** Tenor II no longer moves in octaves with a Choir I voice for three notes in a row at bars 29–30 (§4) or 77–80 (§9). It takes another note of the chord instead.
5. **§12.**
   - Tenor II ties its c′ across bars 108–109 instead of repeating it in mid-melisma.
   - Altus II's bar 107 is in even minims, which removes octaves with Bassus II on successive beats.

## Engraving and playback

- Rehearsal letters at the section starts: A 11, B 20, C 24, D 31, E 44, F 54, G 65, H 75, J 85, K 93, L 98, M 110, N 116.
- In the MIDI, Choir I is panned left and Choir II right, so the antiphony can be heard.
- "Version 3" appears in the title block. The page layout is otherwise as in version 2 (9 pages).

## Checks (the same tools as version 2)

- **Counterpoint (`v2.py check`):** 0 errors in Choir I alone, Choir II alone and both choirs together, and at all 18 joins. Choir II has 10 warnings (version 2: 14).
- **Doubling (`shadow.py 3`):** no voice of one choir moves in octaves or unison with a voice of the other for more than two notes. The one exception is the two basses at the bar-64 cadence, both written by Claude.
- **Independent MIDI check (`midicheck8.py`):**
  - 0 differences from the source;
  - no parallel fifths or octaves inside a choir;
  - 26 dissonances on semibreve beats, all prepared suspensions. Version 2 had 24, plus the attacked dissonance at 47:1.
- **Block chords (`texture.py`):**
  - Choir II §2: 35% (version 2: 58%). Choir II §10: 39% (version 2: 56%).
  - Whole piece, all eight voices: 40% (version 2: 42%), at 3.8 attack points per bar.
- **Length:** unchanged at 130 bars, about six minutes (5:57 in the MIDI).
