# Praterlichter: design notes

**Viennese waltz chain in the style of Johann Strauss II, for piano and in an orchestral version · 3/4 · D major, with waltzes in G and B♭ · 179 bars printed, 271 with repeats · Tempo di Valse ♩. = 63 · about 4:50**

Files in `D:\AI\Music\Composition`:
- Piano: `praterlichter.ly`, `compile-praterlichter.bat` (writes `output/pdf/praterlichter.pdf` and `.mid`), `scripts/praterlichter/check.py` (MIDI checker: bar count, pedal, hand collisions, melody against left-hand harmony on beats, parallel outer-voice octaves and fifths on downbeats).
- Orchestra: `praterlichter-orchestra.ly` (generated), `compile-praterlichter-orchestra.bat` (writes `output/pdf/praterlichter-orchestra.pdf` and `.mid`), `scripts/praterlichter/compose.py` + `music.py` (generator and musical data), `check_orch.py` (ranges, length, semitone clashes between parts); see `scripts/praterlichter/README.md`.

## 1. Form

| Bars | Section | Key | Notes |
|---|---|---|---|
| 1–21 | Introduction, Andantino | D → A7 | Waltz-1 head in the middle voice over broken-chord pedal figures; B♭ and C♯°7 colour; crescendo and accelerando over a tremolo on A; ff A7 fermata, falling cadenza, pp fermata |
| 22–23 | Vamp | D | Tempo di Valse, oom-pah-pah, pickup |
| 24–40 | Walzer 1 A ‖: :‖ | D | p dolce |
| 41–57 | Walzer 1 B ‖: :‖ | Bm → D | f energico, hemiola in bars 13–14 of the strain |
| 58–74 | Walzer 2 A ‖: :‖ | G | p grazioso |
| 75–90 | Walzer 2 B ‖: :‖ | G | p scherzando, staccato and grace notes |
| 91–92 | Vamp | F7 | Slip from G to F7, crescendo |
| 93–109 | Walzer 3 A ‖: :‖ | B♭ | ff con slancio |
| 110–125 | Walzer 3 B ‖: :‖ | B♭ | p leggiero, running eighths |
| 126–133 | Coda: transition | B♭ → A7 | Waltz-1 head over B♭ and Gm/B♭, augmented second onto A7, rising arpeggio |
| 134–149 | Coda: Walzer 1 A | D | In octaves, f; ends on D7 |
| 150–157 | Coda: Meno mosso | G → A7 | Memory of Walzer 2 A, turned through E7 to an A7 fermata, rit. pp |
| 158–179 | Coda: Più mosso | D | Walzer 1 B enters deceptively on B minor, hemiola, drum-roll tremolo fp<, fff chords I–V–I–I |

## 2. Themes (absolute pitch)

```lilypond
% Walzer 1 A (pickup a'), over D | D | A7 | A7
fis''2( eis''4 | fis''4 a'' d''') | d'''2( cis'''4 | b''4 a'' g'') |
% Walzer 1 B, over Bm | Bm | Em | Em (right hand in octaves, full chord on the accented half)
d''4 b''2-> | ais''4( b'' fis'') | g''4 e'''2-> | dis'''4( e''' b'') |
% Walzer 2 A (pickup d''), over G | G | Am | Am
<d'' b''>2.~ | <d'' b''>4 a''8( g'' fis'' g'') | <e'' c'''>2.~ | <e'' c'''>4 b''8( a'' gis'' a'') |
% Walzer 2 B, over D7 | D7 | G | G
r8 a''-.( b''-. c'''-. d'''4-.) | \acciaccatura b''8 c'''4-. a''-. fis''-. | r8 b''-.( c'''-. cis'''-. d'''4-.) | b''4-. g''-. d''-. |
% Walzer 3 A (pickup f'), over Bb | Bb | Cm7 | F7
<d' bes'>4.( <es' c''>8 <f' d''>4 | <bes' d'' f'' bes''>2.) | <es' c''>4.( <f' d''>8 <g' es''>4 | <c'' es'' a'' c'''>2.) |
% Walzer 3 B, over Bb | Bb | F7 | F7
f''8( g'' f'' e'' f'' bes'') | d'''8( c''' bes'' a'' bes'' f'') | es''8( f'' es'' d'' es'' a'') | c'''8( bes'' a'' g'' a'' es'') |
```

- **One cell, five uses.** The Walzer 1 A head (long note, chromatic lower neighbour, return, leap up the chord) opens the introduction, recurs over B♭ in bars 9–10, builds the climb in bars 15–16, and opens the coda over B♭ and G minor.
- **Each strain has its own rhythm:** half + quarter neighbour (1A), quarter + accented half (1B), tied long note + eighth-note turn (2A), rest + staccato eighths (2B), dotted rise + chord (3A), continuous eighths (3B).
- **Harmony.** Walzer 1 A tonicises G through D7/F♯, then uses Eø7 (the minor-iv colour) before I6/4 – V7 – I. Walzer 2 A uses A7 as V/V. Walzer 2 B has a sudden C minor 6 under a high E♭. Walzer 3 A and B share a rising bass, B♭ – D (B♭7/D) – E♭ – E (C7/E) – F (B♭/F) – F7 – B♭.
- **Keys.** Home key D. Waltz 2 is in the subdominant. Waltz 3 is on the flat submediant, B♭, reached by slipping from G to F7. The coda returns through Gm/B♭ → A7, so the bass moves B♭ → A.

## 3. Piano writing

- Left hand: bass on 1, chord on 2 and 3. Single basses in the quiet strains, octave basses in the loud ones. Bass alternates root and fifth over a held harmony, or walks up the chord (Walzer 1 A bars 3–6: A – C♯ – E – A).
- Right hand: single line for p dolce. Sixths under held notes in Walzer 2 A. Octaves with a full chord on the accent in Walzer 1 B and the stretta. Sixths under the dotted rise in Walzer 3 A.
- Introduction: broken-chord left hand in eighths, measured 32nd tremolo on A in bars 15–18. Coda: 16th chord tremolo (right hand) over a 32nd octave tremolo (left hand) for the drum roll.

## 4. Orchestral version

**Orchestra (Strauss concert orchestra):** flauto piccolo, 2 flauti, 2 oboi, 2 clarinetti in B♭, 2 fagotti; 4 corni in F, 2 trombe in B♭, 3 tromboni; timpani (A, D / F, B♭); triangolo, tamburo piccolo, gran cassa e piatti; arpa; archi.

| Bars | Section | Scoring |
|---|---|---|
| 1–8 | Introduction | Cellos (tenor clef, dolce cantabile) carry the tune an octave down; harp plays the piano's broken chords; pizzicato basses; high pad in second violins and violas |
| 9–14 | | Violins I + flute 1 take the tune; clarinet and horn guide tones; sustained arco basses |
| 15–21 | | String tremolo and timpani roll on A, winds in thirds, horns/trumpets on the dominant, poco a poco accel.; tutti fermata with cymbal and harp; flute + violins fall, solo clarinet joins the last notes |
| 22–40 | Walzer 1 A | Violins I; afterbeats in violins II + violas (double stops); clarinet guide-tone pad; flute 1, horns I–II afterbeats and bassoon join the second phrase |
| 41–57 | Walzer 1 B | Tune in octaves (violins I + II, flutes a 2); oboes and clarinets stab the accented second beats; 4 horns on afterbeats; timpani on A/D; trumpets at the hemiola |
| 58–74 | Walzer 2 A | Violins in sixths (II reshaped onto chord tones in the turns); pizzicato violas, cellos, basses + harp afterbeats; oboe 1, then flute 1 + clarinet 1 doubling; horn pedal |
| 75–90 | Walzer 2 B | Flute 1 + violins I staccato, clarinet 8vb; pizzicato strings; triangle on the high notes; piccolo bars 83–88; wind/horn stab on C → C minor 6 |
| 91–109 | Walzer 3 | Timpani roll on F; tutti con slancio: piccolo 8va, flutes, oboes in two parts, clarinets + violins II in sixths below; trumpets on the arrival chords; trombones bass + afterbeats; bass drum every bar, cymbals on the arrivals |
| 110–125 | Walzer 3 B | Violins I running eighths, clarinet 8vb then flute; staccato afterbeats; pizzicato basses; horn pedal |
| 126–133 | Coda | Solo oboe over B♭ pedal; violins + flute on A7 over string tremolo and timpani roll; rising arpeggio to tutti downbeat |
| 134–149 | | Walzer 1 A in octaves (violins, flutes, oboes, clarinets), f |
| 150–157 | Meno mosso | Solo violin + clarinet 1 in sixths over harp and pizzicato strings; horn pedal; fermata on A7 |
| 158–179 | Più mosso | Walzer 1 B tutti with piccolo, trumpets on every accent, trombones, bass drum and cymbals; snare + timpani roll with string tremolo fp<; four fff chords with cymbals and harp |

**Generator.** `music.py` holds the harmony per beat and the cello bass for every printed bar, the first-violin line, the second line for Walzer 2 A / 3 A, and all hand-written bars (`instrument bar[who]: music`). `compose.py` voices afterbeats, pads, trombone oom-pah, harp and timpani from the harmony with a voice-leading search (3rd and 7th required, no doubled 3rd/7th, minimal motion, register windows per group: strings F♯3–B4, horns F3–C5, trumpets D4–E5 …). It assigns roles per section, adds ties between identical pads, *a 2* / *1.* marks, pizz./arco with MIDI patch switches, dynamics restated after rests, and hairpins with guaranteed termination. It writes the score at sounding pitch; the print score transposes piccolo (8vb), clarinets/trumpets (B♭), horns (F) and basses (8va), and the MIDI score uses the sounding variables. Tremolos print as abbreviations and play as repeated notes (tags `'print` / `'midi`).

**Score.** A4, staff size 13.7, 15 pages, empty staves hidden after the first system, harp kept together; section labels and tempo marks in the piccolo staff only. MIDI uses `midiChannelMapping = #'instrument` (14 patches + drums), with volumes balanced per staff.

**Checks.** Compiled with LilyPond 2.26.0 with no warnings; every bar of every part is validated at 3/4 by the generator. All instruments are within their ranges. The clash check found only intended semitones (chromatic neighbours and appoggiaturas doubled in octaves, the ♭9 in bar 17). Three real clashes were fixed: harp arpeggio against the cellos' G♯ in bars 1–3, and the sixths line hitting a passing note against the afterbeat chord in Walzer 2 A (bars 59, 61, 67) and the Meno mosso clarinet (151, 153, 155).

## 5. Production notes (piano)

- `\version "2.26.0"`, `\language "nederlands"`, absolute pitches, no double angle brackets (`\simultaneous { … }` throughout, no `\\`).
- Four variables (`upper`, `lower`, `dyn`, `midiPedal`). The first three share the same `\repeat volta` / `\alternative` skeleton. The Dynamics context sits between the staves.
- Expression words share the dynamic (p dolce, f energico, ff con slancio …) via `make-dynamic-script`, left-aligned and tagged `'print`. Plain dynamics for the MIDI are tagged `'midi`. Accelerando, fermatas and ritardandos are hidden `\tempo` changes tagged `'midi`.
- MIDI: repeats unfolded (271 bars), about 4:50. Acoustic grand on both staves. A separate pedal voice in the left hand changes the sustain pedal on every downbeat.
- Layout: staff size 19, A4, five pages, a line break before every section; `base-shortest-duration` 1/16 gives about six bars per line.
- Compiled with LilyPond 2.26.0 with no warnings. The MIDI check found no hand collisions. Every right-hand on-beat note outside the left-hand chord is an intended appoggiatura, neighbour or passing tone, or sits over a left-hand voicing that omits a chord tone the right hand supplies. Parallel outer-voice octaves at 1A bars 12–13 (B♭→A) and 3A/3B bars 10–11 (A♭→G) were removed by re-bassing. The one remaining flag (final V–I) is a false positive: the real top voice is C♯ → D.
