\version "2.26.0"
\language "nederlands"

% LANTERNS AT MIDNIGHT - an original piano waltz.
% A homage to Johann Strauss II, with entirely new musical material.
% 104 written measures; 152 measures with the three repeats; about 3 minutes.
% Pitches are absolute: c' is middle C. Both hands are fully written out.
% Form: introduction 1-8; Waltz I 9-24 (repeat); Waltz II 25-40 (repeat);
% trio 41-72 (41-56 repeated); return 73-88; coda 89-104.
% Rehearsal/bar numbers refer to the printed, not the unfolded, score.
% Pedal is discretionary: catch each bass lightly and clear on harmony changes.
% Avoid sustaining the accompanying chords through the next bass attack.
% The MIDI unfolds every repeat and follows the written tempo changes.
% Compile from this directory:
% lilypond -dno-point-and-click -o output/pdf/lanterns-at-midnight lanterns-at-midnight.ly

\header {
  title = "Lanterns at Midnight"
  subtitle = "A Viennese waltz for piano"
  subsubtitle = "Homage to Johann Strauss II"
  composer = "Original composition"
  tagline = ##f
}

#(set-global-staff-size 17)
\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 16\mm
  right-margin = 14\mm
  indent = 0\mm
  short-indent = 0\mm
  ragged-last-bottom = ##f
  print-page-number = ##t
  system-system-spacing.basic-distance = #17
  system-system-spacing.minimum-distance = #12
  system-system-spacing.padding = #2.5
  markup-system-spacing.basic-distance = #11
  oddHeaderMarkup = \markup \unless \on-first-page
    \fill-line { \small "Lanterns at Midnight" \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \unless \on-first-page
    \fill-line { \fromproperty #'page:page-number-string \small "Lanterns at Midnight" }
}

introRH = {
  \key d \major
  \tempo "Andantino, quasi un sogno" 4 = 96
  \mark \markup \box "Introduction"
  % 1-4: the rising third that will become the dance's upbeat.
  r4\p a'8( cis'' d'' fis'') |
  e''4.( d''8 cis''4) |
  b'8( d'' g''4. fis''8) |
  e''2\> cis''4\! | \break
  % 5-8: diminished colour, a dominant suspension, then an invitation.
  d''8\mp( fis'' a''4 g''8 fis'') |
  eis''8\<( gis'' b''4 a''8 gis'') |
  <d'' fis''>4( <cis'' e''>2)\! |
  \tempo "Poco rit." 4 = 80
  <g' cis'' e''>2\fermata\> a'8\!\p( cis'') | \break
}

introLH = {
  \key d \major
  d,4\p <fis a d'>2\arpeggio |
  a,4 <g cis' e'>2\arpeggio |
  g,4 <g b d'>2\arpeggio |
  a,4 <g a cis'>2\arpeggio |
  fis,4\mp <a d' fis'>2\arpeggio |
  gis,4 <gis b d'>2\arpeggio |
  a,4 <a d' fis'>4( <a cis' e'>4) |
  a,2\fermata r4 |
}

waltzOneRH = {
  \tempo "Tempo di valse, con grazia" 2. = 56
  \mark \markup \box "Waltz I"
  % 9-12: antecedent; the melody should float over the accompaniment.
  fis''4.\mp( e''8 d''4) |
  a'2( b'8 cis'') |
  d''4.( e''8 b'4) |
  cis''2 a'8( cis'') | \break
  % 13-16: an expansive answer ending on the dominant.
  fis''2\<( e''8 d'') |
  b'4.( gis'8 e'4)\! |
  cis''4( b'8 a' gis' a') |
  e''2\> a'8\!( cis'') | \break
  % 17-20: the same gesture turns briefly toward B minor.
  e''4.\mf( dis''8 cis''4) |
  d''2( cis''8 b') |
  g'4( b' d'') |
  fis''2\>( e''8 d'') | \break
  % 21-24: a complete tonic cadence, with a light pickup to the repeat.
  g''4\!\mp( fis''8 e'' b'4) |
  cis''4\<( e'' g'') |
  fis''4\!( e''8 fis'' d''4) |
  d''2\> r8 a'8\! | \break
}

waltzOneLH = {
  % 9-16: D, D/F#, G, A7; D, E7, A, A7.
  d,4\p <a d' fis'>-. <a d' fis'>-. |
  fis,4 <a d' fis'>-. <a d' fis'>-. |
  g,4 <g b d'>-. <g b d'>-. |
  a,4 <g cis' e'>-. <g cis' e'>-. |
  d,4 <a d' fis'>-. <a d' fis'>-. |
  e,4 <gis b d'>-. <gis b d'>-. |
  a,4 <a cis' e'>-. <a cis' e'>-. |
  e,4 <g a cis'>-. <g a cis'>-. |
  % 17-24: F#7, Bm, G, D/F#; Em, A7, D, D.
  fis,4\mp <ais cis' e'>-. <ais cis' e'>-. |
  b,4 <fis b d'>-. <fis b d'>-. |
  g,4 <g b d'>-. <g b d'>-. |
  fis,4 <a d' fis'>-. <a d' fis'>-. |
  e,4\p <g b e'>-. <g b e'>-. |
  a,4 <g cis' e'>-. <g cis' e'>-. |
  d,4 <a d' fis'>-. <a d' fis'>-. |
  d,4 <a d' fis'>-. r4 |
}

waltzTwoRH = {
  % B minor retains the preceding two-sharp signature.
  \tempo "Poco piu vivo, scherzando" 2. = 60
  \mark \markup \box "Waltz II"
  % 25-28: dotted rhythm and short answers replace the broad first tune.
  d''8.\p( cis''16 b'4) fis''-. |
  e''8.( d''16 cis''4) ais'-. |
  b'8( cis'' d'' e'') fis''4-. |
  e''4( cis'') ais'-. | \break
  % 29-32: an upward sequence, then a half cadence.
  g''4.\<( fis''8 e''4) |
  fis''8( e'' d'' cis'') b'4-. |
  cis''4\!( eis'' gis'') |
  fis''2\> r4\! | \break
  % 33-36: parallel thirds soften the reprise of this tune.
  <b' d''>8.\mp( <ais' cis''>16 <fis' b'>4) <d'' fis''>-. |
  <cis'' e''>8.( <b' d''>16 <ais' cis''>4) fis'-. |
  <g' b'>4( <b' d''> <d'' g''>) |
  <b' d''>4( <a' cis''> <g' b'>) | \break
  % 37-40: a diminished seventh tightens into the B-minor cadence.
  e''8\<( g'' ais'' g'' e'' cis'') |
  <cis'' e''>4\!( <b' d''> <ais' cis''>) |
  <b' d''>4( <cis'' e''> <d'' fis''>) |
  <fis' b' d''>2\> r4\! | \break
}

waltzTwoLH = {
  % B minor retains the preceding two-sharp signature.
  % 25-32: Bm, F#7, Bm, F#7; Em, Bm/D, C#7, F#.
  b,4\pp <fis b d'>-. <fis b d'>-. |
  fis,4 <ais cis' e'>-. <ais cis' e'>-. |
  b,4 <fis b d'>-. <fis b d'>-. |
  fis,4 <ais cis' e'>-. <ais cis' e'>-. |
  e,4\p <g b e'>-. <g b e'>-. |
  d,4 <fis b d'>-. <fis b d'>-. |
  cis,4 <gis b eis'>-. <gis b eis'>-. |
  fis,4 <ais cis' fis'>-. r4 |
  % 33-40: Bm, F#7, G, Em; A#dim7, F#7, Bm, Bm.
  b,4\p <fis b d'>-. <fis b d'>-. |
  fis,4 <ais cis' e'>-. <ais cis' e'>-. |
  g,4 <g b d'>-. <g b d'>-. |
  e,4 <g b e'>-. <g b e'>-. |
  ais,4 <g cis' e'>-. <g cis' e'>-. |
  fis,4 <ais cis' e'>-. <ais cis' e'>-. |
  b,4 <fis b d'>-. <fis b d'>-. |
  b,4 <fis b d'>-. r4 |
}

trioOneRH = {
  \key g \major
  \tempo "Trio - dolce e cantabile" 2. = 52
  \mark \markup \box "Trio"
  % 41-48: a long-breathed song, with the melody carried on top.
  <g' b'>2\p( <b' d''>4) |
  <b' d''>4( <a' c''> <g' b'>) |
  <e' g'>2( <g' c''>4) |
  <fis' a'>2 r8 d''8( | \break
  <g' b'>4.\< c''8 d''4) |
  <b' e''>2( <a' c''>4)\! |
  <g' b'>4( a'8 g' fis' e') |
  <fis' a'>2\> r4\! | \break
  % 49-56: sequential expansion and a quiet perfect cadence.
  <b' d''>2\mp( <d'' g''>4) |
  <c'' e''>2( <b' d''>4) |
  <a' c''>2( <c'' fis''>4) |
  <b' d''>2\>( <g' b'>4) | \break
  <g' c''>4\!\p( <g' b'> <g' a'>) |
  <fis' a'>4( <a' c''> <c'' e''>) |
  <b' d''>4( <a' c''> <g' b'>) |
  <d' g' b'>2 r4 | \break
}

trioOneLH = {
  \key g \major
  % 41-48: G, G/B, C, D7; G, C, Em, D7.
  g,4\pp <g b d'>-. <g b d'>-. |
  b,4 <g b d'>-. <g b d'>-. |
  c4 <e g c'>-. <e g c'>-. |
  d4 <fis a c'>-. <fis a c'>-. |
  g,4 <g b d'>-. <g b d'>-. |
  c4 <e g c'>-. <e g c'>-. |
  e,4 <g b e'>-. <g b e'>-. |
  d4 <fis a c'>-. <fis a c'>-. |
  % 49-56: G, C, D7, G/B; Am7, D7, G, G.
  g,4\p <g b d'>-. <g b d'>-. |
  c4 <e g c'>-. <e g c'>-. |
  d4 <fis a c'>-. <fis a c'>-. |
  b,4 <g b d'>-. <g b d'>-. |
  a,4\pp <g c' e'>-. <g c' e'>-. |
  d4 <fis a c'>-. <fis a c'>-. |
  g,4 <g b d'>-. <g b d'>-. |
  g,4 <g b d'>-. r4 |
}

trioTwoRH = {
  % 57-64: the trio's rising thirds darken briefly to the tonic minor.
  \key g \minor
  \mark \markup \italic "un poco velato"
  bes'2\pp( d''4) |
  ees''2( d''4) |
  c''4.( d''8 ees''4) |
  d''2( c''4) | \break
  bes'4\<( d'' g'') |
  fis''4( e''8 d'' c''4) |
  bes'4\!( a'8 g' fis' g') |
  a'2\> r4\! | \bar "||" \break
  % 65-68: restore G major, then circle through E7 toward D major.
  \key g \major
  \mark \markup \italic "poco a poco animando"
  \tempo 2. = 54
  b'8\mp( d'' g''4 fis''8 e'') |
  d''8( fis'' a''4 g''8 fis'') |
  e''8\<( g'' b''4 a''8 g'') |
  gis''4( fis''8 e'' d''4)\! | \break
  % 69-72: four measures over A prepare the return.
  \key d \major
  \tempo 2. = 56
  fis''2\mf( e''8 d'') |
  e''4( cis'' a') |
  <b' d''>2\>( <a' cis''>4) |
  \tempo "Poco rit." 2. = 48
  <g' cis'' e''>2 a'8\!\p( cis'') | \bar "||" \break
}

trioTwoLH = {
  \key g \minor
  % 57-64: Gm, Cm, A half-diminished, D7; Gm, D7, Gm, D7.
  g,4\pp <g bes d'>-. <g bes d'>-. |
  c4 <ees g c'>-. <ees g c'>-. |
  a,4 <g c' ees'>-. <g c' ees'>-. |
  d4 <fis a c'>-. <fis a c'>-. |
  g,4 <g bes d'>-. <g bes d'>-. |
  d4 <fis a c'>-. <fis a c'>-. |
  g,4 <g bes d'>-. <g bes d'>-. |
  d4 <fis a c'>-. <fis a c'>-. |
  \key g \major
  % 65-68: G, D/F#, Em, E7.
  g,4\p <g b d'>-. <g b d'>-. |
  fis,4 <a d' fis'>-. <a d' fis'>-. |
  e,4 <g b e'>-. <g b e'>-. |
  e,4 <gis b d'>-. <gis b d'>-. |
  \key d \major
  % 69-72: cadential 6/4, A7, 9-8 and 4-3 suspensions, A7.
  a,4\mp <a d' fis'>-. <a d' fis'>-. |
  a,4 <g cis' e'>-. <g cis' e'>-. |
  a,4 <g b d'>4( <g a cis'>4) |
  a,4\p <g cis' e'>-. r4 |
}

returnRH = {
  \tempo "Tempo I, con slancio" 2. = 56
  \mark \markup \box "Waltz I - return"
  % 73-80: the first tune returns dressed in thirds and sixths.
  <a' fis''>4.\mf( <g' e''>8 <fis' d''>4) |
  <fis' a'>2( <g' b'>8 <a' cis''>) |
  <b' d''>4.( <c'' e''>8 <g' b'>4) |
  <g' cis''>2 a'8( cis'') | \break
  <a' fis''>2\<( <g' e''>8 <fis' d''>) |
  <gis' b'>4.( <e' gis'>8 e'4)\! |
  <a' cis''>4( b'8 a' gis' a') |
  <g' e''>2\> a'8\!( cis'') | \break
  % 81-88: the peak is held back until the coda.
  <ais' e''>4.\mf( dis''8 <ais' cis''>4) |
  <fis' d''>2( cis''8 b') |
  <b' g''>4( fis''8 e'' d'' b') |
  <a' fis''>2\>( e''8 d'') | \break
  <b' g''>4\!\mp( fis''8 e'' <g' b'>4) |
  <g' cis''>4\<( <cis'' e''> <e'' g''>) |
  <d'' fis''>4\!( e''8 fis'' <a' d''>4) |
  <fis' a' d''>2 r4 | \bar "||" \break
}

codaRH = {
  \mark \markup \box "Coda"
  \tempo "Dolce, come un ricordo" 2. = 52
  % 89-92: a last, distant recollection of the opening.
  r4\pp a'8( cis'' d'' fis'') |
  e''4.( d''8 cis''4) |
  g''4( fis''8 e'' d'' b') |
  <g' cis'' e''>2 r4 | \break
  % 93-96: the little upbeat grows into a rising sequence.
  \tempo "Animando" 2. = 58
  fis''8\p\<( a'' d'''4 cis'''8 b'') |
  ais''8( cis''' fis'''4 e'''8 cis''') |
  d'''8( cis''' b'' a'' g'' fis'') |
  e''8( fis'' g'' a'' b'' cis''')\! | \break
  % 97-100: full octaves arrive only at the climax.
  \tempo "Brillante" 2. = 64
  <d'' d'''>4\f-> <cis'' cis'''>8( <b' b''>) <a' a''>4-. |
  <g' g''>4-> <b' b''>8( <d'' d'''>) <e'' e'''>4-. |
  <fis'' fis'''>4-> <e'' e'''>8( <d'' d'''>) <cis'' cis'''>4-. |
  <b' b''>4( <a' a''> <g' g''>) | \break
  % 101-104: cadential flourish, a theatrical breath, and the final bow.
  <fis' fis''>4\ff-> <a' a''>-> <d'' d'''>-> |
  <cis'' e'' g''>4-> r4\fermata a''8( cis''') |
  \tempo "Stringendo" 2. = 68
  d'''8( cis''' b'' a'' g'' e'') |
  <fis' a' d''>4-> r4 <fis' a' d'' fis''>4->\fermata | \bar "|."
}

codaLH = {
  % 89-96: D, A7, G, A7; D, F#7, Bm, A7.
  d,4\pp <a d' fis'>-. <a d' fis'>-. |
  a,4 <g cis' e'>-. <g cis' e'>-. |
  g,4 <g b d'>-. <g b d'>-. |
  a,4 <g cis' e'>-. r4 |
  d,4\p <a d' fis'>-. <a d' fis'>-. |
  fis,4\mp <ais cis' e'>-. <ais cis' e'>-. |
  b,4 <fis b d'>-. <fis b d'>-. |
  a,4\mf <g cis' e'>-. <g cis' e'>-. |
  % 97-104: D, G, D/F#, A7; D/A, A7, A7, D.
  <d, d>4\f-> <a d' fis'>-. <a d' fis'>-. |
  <g, g>4-> <g b d'>-. <g b d'>-. |
  <fis, fis>4-> <a d' fis'>-. <a d' fis'>-. |
  <a, a>4-> <g cis' e'>-. <g cis' e'>-. |
  <a, a>4\ff-> <a d' fis'>-> <a d' fis'>-> |
  <a, a>4-> r4\fermata <g cis' e'>4-. |
  <a, a>4-> <g cis' e'>-. <g cis' e'>-. |
  <d, d>4-> r4 <d, d>4->\fermata |
}

rightHand = {
  \clef treble \time 3/4
  \introRH
  \repeat volta 2 { \waltzOneRH }
  \repeat volta 2 { \waltzTwoRH }
  \repeat volta 2 { \trioOneRH }
  \trioTwoRH
  \returnRH
  \codaRH
}

leftHand = {
  \clef bass \time 3/4
  \introLH
  \repeat volta 2 { \waltzOneLH }
  \repeat volta 2 { \waltzTwoLH }
  \repeat volta 2 { \trioOneLH }
  \trioTwoLH
  \waltzOneLH
  \codaLH
}

\markup \small \italic \column {
  "Sing the melody; keep the bass buoyant and the two chord beats airy. Feel the waltz in one."
  "Use light, changing pedal. Let phrase endings breathe; keep the dance moving."
}

\score {
  \new PianoStaff \with {
    connectArpeggios = ##t
  } <<
    \new Staff = "right" \rightHand
    \new Staff = "left" \leftHand
  >>
  \layout {
    \context {
      \Score
      \override BarNumber.break-visibility = ##(#f #f #t)
      \override RehearsalMark.self-alignment-X = #LEFT
    }
    \context {
      \PianoStaff
      \override StaffGrouper.staff-staff-spacing.basic-distance = #12
      \override StaffGrouper.staff-staff-spacing.minimum-distance = #10
    }
  }
}

\score {
  \unfoldRepeats
  \new PianoStaff <<
    \new Staff \with {
      midiInstrument = "acoustic grand"
      midiMinimumVolume = #0.35
      midiMaximumVolume = #0.95
    } \rightHand
    \new Staff \with {
      midiInstrument = "acoustic grand"
      midiMinimumVolume = #0.25
      midiMaximumVolume = #0.75
    } \leftHand
  >>
  \midi { }
}
