# Laudate Dominum — double-choir motet: plan

A collaboration between ChatGPT-6 Astra (Choir I) and Claude Opus 5.5 (Choir II). Both choirs sing the closing Amen. The two composers alternate clauses, and the piece ends with an eight-voice Amen.

## The piece

- **Text:** Psalm 116 (*Laudate Dominum omnes gentes*) with the Gloria Patri.
- **Forces:** two four-voice choirs (Cantus, Altus, Tenor, Bassus), unaccompanied. Each choir must be harmonically complete on its own.
- **Mode:** F with one flat (Mode 5/6 with B-flat; final F). Key signature: one flat.
- **Metre:** cut C, 4/2, a breve to the bar, with the semibreve as the beat. 53 bars, no tripla. About 2½ minutes.
- **Ranges (both choirs):** Cantus c′–f″, Altus f–b♭′, Tenor c–f′, Bassus F–d′.
- **Style:** Palestrina's double-choir manner. The clauses are mostly declamatory, with light imitation and suspensions at the cadences. The Amen becomes antiphonal, then a full eight-voice close.

## Bar map

| Bars | Choir | Text | Starts on | Ends on (beat 1 of last bar) |
|---|---|---|---|---|
| 1–6 | I | Laudate Dominum omnes gentes | free | F major |
| 6–10 | II | laudate eum omnes populi | F | C major |
| 10–17 | I | Quoniam confirmata est super nos misericordia eius | C | D minor |
| 17–23 | II | et veritas Domini manet in aeternum | D minor | F major |
| 23–27 | I | Gloria Patri, et Filio | F | B♭ major |
| 27–31 | II | et Spiritui Sancto | B♭ | F major |
| 31–37 | I | Sicut erat in principio, et nunc, et semper | F | A major (C♯) |
| 37–42 | II | et in saecula saeculorum | A major | C major |
| 42–44 | I | Amen (A1) | C | F |
| 44–46 | II | Amen (A2) | F | B♭ |
| 46–47 | I | Amen (A3) | B♭ | F |
| 47–48 | II | Amen (A4) | F | B♭ |
| 48–53 | both | Amen (tutti) | B♭ | F (final) |

## Hand-over rule

1. **Outgoing choir:** it arrives on the listed chord exactly on beat 1 of the hand-over bar and holds it for one semibreve, then rests. The one exception is bar 48, where Choir II continues into the tutti.
2. **Incoming choir:** anything it sings in beats 1–2 of the hand-over bar must be notes of that chord. From beat 3 it is free, and it may also begin later.

Because of this rule, the two choirs never move against each other at a join. That lets each composer write their clauses without waiting for the other.

## The tutti (bars 48–53)

Claude drafted the framework.

- **Harmony per half bar:**

  | Bar | First half | Second half |
  |---|---|---|
  | 48 | B♭ | G minor |
  | 49 | D minor | A minor |
  | 50 | B♭ | F |
  | 51 | B♭ (bass D) | C, with a 4–3 in Altus II (F held over the bass C, resolving to E on beat 4) |
  | 52 | F | B♭ |
  | 53 | F | — |

- **Bassus I (given):** `bes,1 g,1 | d1 a,1 | bes,1 f1 | d1 c1 | f,1 bes,1 | f,\breve`. It doubles Bassus II, then drops an octave below it for the last two bars.
- **Astra's part:** Astra writes Cantus I, Altus I and Tenor I against Choir II and Bassus I.
- **The bar-51 suspension:** no E may sound on beat 3, against the suspended F.
- **Feasibility:** a search over the framework confirms that a Choir I realisation without parallel fifths exists. That search is only a check; the actual Choir I part is Astra's.

## Rules both composers follow (checked by script)

- **Melody:**
  - Mostly steps.
  - Leaps of a 3rd, 4th, 5th or octave, and a minor 6th upward only. No 7ths and no augmented or diminished leaps.
  - After a leap of a 4th or more, the line turns back by step.
- **Dissonance:**
  - Allowed only as passing notes or neighbours on weak beats, suspensions (prepared, dissonant on beat 1 or 3, resolving down by step), cambiata or anticipation.
  - No 6/4 chords except as suspensions or passing.
- **Parallels:**
  - No parallel or contrary fifths or octaves inside a choir.
  - In the tutti, no parallel fifths with any voice.
  - Octave doubling between the two choirs is tolerated.
- **Note values:** breve down to crotchet. Quavers only in pairs on weak positions.
- **Underlay:**
  - Syllables go on minims or longer.
  - A crotchet takes a syllable only right after a dotted minim.
  - No syllable on a quaver, or on the note right after a run of crotchets.
- **Musica ficta:** B♮ at cadences on C, F♯ on G, C♯ on D, G♯ on A, each written with `\ficta` before the note.
- **Notation:**
  - Absolute pitches with nederlands note names.
  - No `\relative` and no double angle brackets.
  - One bar per line, ending `| % <bar>`.
  - Variables: `cIcantus` … `cIbassusText` and `cIIcantus` … `cIIbassusText`.

## Files

| File | Contents |
|---|---|
| `laudate-dominum.ly` (Composition folder) | Master file; includes both choir files |
| `laudate-dominum/choir1.ly` | Choir I (Astra) |
| `laudate-dominum/choir2.ly` | Choir II (Claude) |
| `laudate-dominum/prompts/` | Every prompt sent to Astra |
| `laudate-dominum/replies/` | Astra's replies, as pasted |
| `scripts/laudate-dominum/` | Clause sketches and the checkers (`combine.py` checks each choir alone, both together, and the hand-over rule) |
| `compile-laudate-dominum.bat` | Writes the PDF and MIDI to `output\pdf` |

## Stages

1. **Done.** Claude wrote the plan, all of Choir II and the tutti framework. Prompt 1 asks Astra to write Choir I.
2. **Done.** Claude assembles and checks the result: each choir alone, both together, and the hand-over rule. Prompt 2 then asks Astra to fix any problems found, or, if there are none, to review the whole piece.
3. **Done.** Claude applies the agreed changes, runs the final checks and engraves the score. A design note goes into the project.

The person relaying only copies prompts to Astra and pastes Astra's replies back. They don't need to make any decisions.

## Log

- **Round 1** (Prompt 1 → `replies/reply-1-from-astra.txt`):
  - Results:
    - Choir I alone: 0 errors, 2 warnings.
    - Both choirs together: 0 errors. The only warnings are octaves doubled between the choirs.
    - Hand-over rule: 0 problems. The score compiles.
  - `stress.py` found three places where the text accent is off: bars 14–16 (*misericordia eius*), bars 31–33 (*erat in principio*) and bars 23–25 (*Gloria Patri*).
  - `t1_search.py` showed that, given Astra's Cantus I and Altus I, Astra's Tenor I in the tutti already has the fewest doublings possible, so the tutti stays.
  - Prompt 2 asks Astra to fix the text accent, with an optional change to Altus I in bar 36.
- **Round 2** (Prompt 2 → `replies/reply-2-from-astra.txt`): Astra re-set the three passages.
  - *Misericordia:* "cor" now has a semibreve and the cantus's high D. "E-" of *eius* now spans bar 16.
  - *Erat in principio:* "Si" is lengthened. "E-" and "-ci-" now take the cantus peaks, with "-ci-" syncopated across bars 33–34.
  - *Gloria Patri:* "Glo" and "Pa" now fall on long downbeats.
  - Astra adopted the bar-36 Altus change and asked for no changes to Choir II.
  - Results:
    - Choir I: 0 errors, 1 warning.
    - Both choirs together: 0 errors. Hand-over rule: 0 problems.
    - Independent MIDI check: 0 mismatches with the source and 0 parallel fifths. All 13 dissonances that fall on the beat are prepared suspensions.
- **Finished.** Stage 3 done: the header credits both composers, and the score is engraved to `output\pdf`.
