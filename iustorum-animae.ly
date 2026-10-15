\version "2.24.0"
\language "nederlands"

% IUSTORUM ANIMAE -- motet for four voices (Cantus, Altus, Tenor, Bassus)
% Original composition in the style of Giovanni Pierluigi da Palestrina.
% No soggetto is taken from Palestrina.
%
% Text: the Offertory for the Feast of All Saints (Wisdom 3:1-3).
% 48 bars, about 2 1/2 minutes.
% Mode 8 (Hypomixolydian on G, no signature). F-sharp, G-sharp at cadences are
% musica ficta, printed above the note.
% Original note values: the semibreve is the tactus, with a breve to the bar.
% All pitches are absolute (c' = middle C).
% Written without double angle brackets: \simultaneous { } is used instead.
%
% PLAN: one point (or texture) for each clause of the text.
%  1-8    "Iustorum animae". Soggetto g-c'(tied)-b-a in the tenor, answered at
%         the octave by the cantus, then altus (on D) and bassus (on G).
%         4-3 suspensions; clausula on G at bar 8 (cantizans in the altus).
%  8-13   "in manu Dei sunt". A rising soggetto g-c'-d'-e'-d'-c' with the peak
%         on "De-i": tenor, bassus, altus (on D), cantus. Cadence on C at bar 13
%         with a 4-3 in the tenor under the cantus's e''-d''-c''.
%  13-15  "et non tanget illos". Four-voice homophony, a firm declamation of
%         "non"; half close on E major.
%  16-22  "tormentum malitiae". Each voice leaps up to a syncopated note on
%         "MEN" and "LI", so the point is a chain of 7-6 and 9-8 suspensions
%         over a stepwise bass. Tenor, altus, cantus (climbing to e'');
%         clausula on A at bar 22 (4-3 in the altus, G-sharp ficta).
%  22-29  "visi sunt oculis insipientium". Paired imitation: cantus and altus
%         in thirds with a 7-6 clausula on C (bar 26); tenor and bassus repeat
%         the duo an octave lower, the bass entering on F under the cadence;
%         all four join for "insipientium", cadence on C (bar 29).
%  30-31  "mori". Homophony in long notes: a 7-6 suspension over F, then a
%         Phrygian cadence (bass F-E, altus D-E) on an E major chord.
%  32-38  "illi autem sunt in pace". An arch soggetto g-a-b-c'-d'-c'-b-a:
%         tenor, altus a fifth higher (moving in sixths with it), cantus; the
%         bass is free. Cadence on G at bar 38 (4-3 in the tenor).
%  38-48  The same text again in a new order: bassus and tenor (in sixths),
%         then cantus and altus (in thirds), while the cantus first sings
%         "sunt in pace" in its low register. Final clausula on G with a 4-3
%         in the cantus (bar 46), then a plagal close (C to G) over a held G.
%
% The counterpoint was checked by script: dissonance treatment (suspension,
% passing note, neighbour, cambiata), parallels, melodic intervals, ranges and
% text underlay. The compiled MIDI was then checked again independently.
%
% Compile: lilypond -o output/pdf/iustorum-animae iustorum-animae.ly
% This writes the PDF and the MIDI file.

\header {
  title = "Iustorum animae"
  subtitle = "Motet for four voices"
  subsubtitle = "Offertory for the Feast of All Saints"
  composer = "Original composition"
  poet = "In the style of Giovanni Pierluigi da Palestrina"
  tagline = ##f
}

#(set-global-staff-size 17)

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 13\mm
  indent = 18\mm
  short-indent = 7\mm
  ragged-last-bottom = ##f
  system-system-spacing.basic-distance = #16
  system-system-spacing.minimum-distance = #13
  system-system-spacing.padding = #2.5
  score-markup-spacing.basic-distance = #12
  markup-system-spacing.basic-distance = #10
  print-page-number = ##t
  system-separator-markup = \slashSeparator
}

\layout {
  \context {
    \Score
    \override BarNumber.break-visibility = ##(#f #f #t)
  }
  \context {
    \Voice
    \consists "Ambitus_engraver"
    \override Ambitus.X-offset = #-1
  }
  \context {
    \Lyrics
    \override LyricText.font-size = #-0.5
    \override LyricHyphen.minimum-distance = #0.8
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #0.6
  }
}

% Musica ficta: the accidental is printed above the note, as editors do.
ficta = { \once \set suggestAccidentals = ##t }

% Alla breve with a breve to the bar, shown with the cut-C sign.
cutTime = {
  \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \once \override Staff.TimeSignature.text = \markup \musicglyph "timesig.C22"
  \time 4/2
}

global = {
  \key c \major
  \cutTime
  \set Score.tempoHideNote = ##t
}

% Metre: alla breve throughout (4/2, a breve to the bar), 48 bars.
structure = {
  s\breve*48 \bar "|."
}

% MIDI only: a slight broadening on "mori" (bars 30-31) and at the close.
midiTempi = {
  \tempo 2 = 84
  s\breve*29
  \tempo 2 = 72
  s\breve*2
  \tempo 2 = 84
  s\breve*14
  \tempo 2 = 76
  s\breve
  \tempo 2 = 66
  s\breve
  \tempo 2 = 56
  s\breve
}

cantus = {
  R\breve | % 1
  g'1 c''1~ | % 2
  c''2 b'2 a'1 | % 3
  g'2 d''1 c''2 | % 4
  b'1 a'1~ | % 5
  a'2 g'2 r1 | % 6
  d''1 d''1 | % 7
  b'1 r1 | % 8
  R\breve | % 9
  R\breve | % 10
  r1 r2 g'2 | % 11
  c''2. d''4 e''2 d''2 | % 12
  c''1 r2 g'2 | % 13
  c''1 b'2 a'2 | % 14
  b'1 \ficta gis'1 | % 15
  R\breve | % 16
  R\breve | % 17
  R\breve | % 18
  r1 a'2 d''2~ | % 19
  d''2 c''2 b'2 e''2~ | % 20
  e''2 d''2 e''1 | % 21
  c''1 a'1 | % 22
  b'2 c''2 d''1 | % 23
  c''2 b'2 a'2 g'2 | % 24
  a'2 c''1 b'2 | % 25
  c''1 r1 | % 26
  R\breve | % 27
  c''2 b'2 a'2 e''2 | % 28
  d''1 c''1 | % 29
  a'\breve | % 30
  \ficta gis'\breve | % 31
  R\breve | % 32
  R\breve | % 33
  R\breve | % 34
  g'2. a'4 b'2 c''2 | % 35
  d''1 c''1 | % 36
  b'1 a'1 | % 37
  g'1 r1 | % 38
  d'1 a'1 | % 39
  e'1 g'1 | % 40
  r1 g'2. a'4 | % 41
  b'2 c''2 d''1 | % 42
  c''1 b'1 | % 43
  a'1 g'1 | % 44
  g'1~ g'4 \ficta fis'8 e'8 \ficta fis'!2 | % 45
  g'\breve~ | % 46
  g'\breve~ | % 47
  g'\breve\fermata | % 48
}

cantusText = \lyricmode {
  Iu -- sto -- rum a -- _ _ _ ni -- mae, __ _ a -- ni -- mae, in ma --
  nu De -- i sunt. et non tan -- get il -- los tor -- men -- tum ma --
  li -- ti -- ae, __ _ vi -- si sunt o -- cu -- lis in -- si -- pi --
  en -- ti -- um, in -- si -- pi -- en -- ti -- um mo -- ri. Il -- li
  au -- tem sunt in pa -- ce, __ _ sunt in pa -- ce, Il -- li au -- tem
  sunt in pa -- ce, __ _ pa -- _ _ _ ce.
}

altus = {
  R\breve | % 1
  R\breve | % 2
  R\breve | % 3
  d'1 g'1~ | % 4
  g'2 f'2 e'1 | % 5
  c'2 d'2 e'1 | % 6
  g'1~ g'4 \ficta fis'8 e'8 \ficta fis'!2 | % 7
  g'1 r1 | % 8
  R\breve | % 9
  r1 r2 d'2 | % 10
  g'2. a'4 b'1 | % 11
  a'1 g'1 | % 12
  e'1 r2 e'2 | % 13
  e'1 g'2 e'2 | % 14
  f'1 e'1 | % 15
  R\breve | % 16
  r1 c'2 f'2~ | % 17
  f'2 e'2 f'2 a'2~ | % 18
  a'2 g'2 f'1 | % 19
  g'\breve | % 20
  a'1. \ficta gis'2 | % 21
  a'1 f'1 | % 22
  g'2 e'2 f'1 | % 23
  e'2 d'2 c'2 e'2 | % 24
  f'2 e'2 d'1 | % 25
  c'1 r1 | % 26
  R\breve | % 27
  e'2 g'2 f'2 g'2 | % 28
  g'1 e'1~ | % 29
  e'2 d'1. | % 30
  e'\breve | % 31
  r1 d'2. e'4 | % 32
  f'2 g'2 a'1 | % 33
  g'1 f'1 | % 34
  e'1 d'1 | % 35
  f'1 g'1~ | % 36
  g'1 d'1 | % 37
  b1 r1 | % 38
  R\breve | % 39
  R\breve | % 40
  R\breve | % 41
  d'2. e'4 f'2 g'2 | % 42
  a'1 g'1 | % 43
  f'1 e'1~ | % 44
  e'1 d'1 | % 45
  b1 c'1 | % 46
  b\breve~ | % 47
  b\breve\fermata | % 48
}

altusText = \lyricmode {
  Iu -- sto -- rum a -- ni -- mae, a -- ni -- _ _ _ mae, in ma -- nu De
  -- i __ _ sunt. et non tan -- get il -- los tor -- men -- tum ma --
  li -- ti -- ae, ma -- li -- ti -- ae, vi -- si sunt o -- cu -- lis in
  -- si -- pi -- en -- ti -- um, in -- si -- pi -- en -- ti -- um mo --
  ri. Il -- li au -- tem sunt in pa -- ce, sunt in pa -- _ ce, Il -- li
  au -- tem sunt in pa -- ce, pa -- ce, pa -- ce.
}

tenor = {
  g1 c'1~ | % 1
  c'2 b2 a1 | % 2
  g2 d'1 c'2 | % 3
  b2. a4 g1 | % 4
  R\breve | % 5
  r1 c'1~ | % 6
  c'2 b2 a1 | % 7
  g1 r2 g2 | % 8
  c'2. d'4 e'2 d'2 | % 9
  c'1 b1 | % 10
  R\breve | % 11
  c'1. b2 | % 12
  c'1 r2 c'2 | % 13
  c'1 d'2 c'2 | % 14
  d'1 b1 | % 15
  a2 d'1 c'2 | % 16
  b2 e'1 d'2 | % 17
  c'1 r1 | % 18
  c'1~ c'2 b2 | % 19
  g1 d'2 b2 | % 20
  a1 b1 | % 21
  a\breve | % 22
  R\breve | % 23
  R\breve | % 24
  R\breve | % 25
  a1 b2 c'2 | % 26
  d'1 c'2 b2 | % 27
  a2 g2 a2 c'2~ | % 28
  c'2 b2 c'1~ | % 29
  c'2 a1. | % 30
  b\breve | % 31
  g2. a4 b2 c'2 | % 32
  d'1 c'1 | % 33
  b1 a1 | % 34
  c'1 b1 | % 35
  a1 c'1 | % 36
  g1~ g4 \ficta fis8 e8 \ficta fis!2 | % 37
  g1 r1 | % 38
  d2. e4 f2 g2 | % 39
  a1 g1 | % 40
  f1 e1 | % 41
  b1 a1~ | % 42
  a1 b1 | % 43
  d'1 g1 | % 44
  c'1 a1 | % 45
  g1 e1 | % 46
  d\breve~ | % 47
  d\breve\fermata | % 48
}

tenorText = \lyricmode {
  Iu -- sto -- rum a -- ni -- mae, __ _ _ _ _ a -- ni -- mae, __ _ in
  ma -- nu De -- i sunt, __ _ De -- i sunt. et non tan -- get il -- los
  tor -- men -- tum ma -- li -- ti -- ae, tor -- _ men -- tum ma -- li
  -- ti -- ae, vi -- si sunt o -- cu -- lis in -- si -- pi -- en -- ti
  -- um mo -- ri. Il -- li au -- tem sunt in pa -- ce, sunt in pa --
  ce, pa -- _ _ _ ce, Il -- li au -- tem sunt in pa -- ce, sunt in pa
  -- _ ce, pa -- _ ce, pa -- ce.
}

bassus = {
  R\breve | % 1
  R\breve | % 2
  R\breve | % 3
  R\breve | % 4
  g,1 c1~ | % 5
  c2 b,2 a,1 | % 6
  g,1 d1 | % 7
  g,1 r1 | % 8
  r1 r2 g,2 | % 9
  c2. d4 e2 d2 | % 10
  c1 g1 | % 11
  f1 g1 | % 12
  c1 r2 c2 | % 13
  a,1 g,2 a,2 | % 14
  d1 e1 | % 15
  f1 e1 | % 16
  g1 f1 | % 17
  e1 d1 | % 18
  a,1 d1 | % 19
  e1 g1 | % 20
  f1 e1 | % 21
  a,\breve | % 22
  R\breve | % 23
  R\breve | % 24
  R\breve | % 25
  f1 g2 e2 | % 26
  f1 e2 d2 | % 27
  c2 e2 f2 e2 | % 28
  g1 c1 | % 29
  f\breve | % 30
  e\breve | % 31
  R\breve | % 32
  r1 f1 | % 33
  g1 d1 | % 34
  e1 g1 | % 35
  f1 e1 | % 36
  b,1 d1 | % 37
  g,1 g,2. a,4 | % 38
  b,2 c2 d1 | % 39
  c1 b,1 | % 40
  a,1 g,1 | % 41
  g,1 d1 | % 42
  a,1 e1 | % 43
  f1 c1 | % 44
  c1 d1 | % 45
  g,1 c1 | % 46
  g,\breve~ | % 47
  g,\breve\fermata | % 48
}

bassusText = \lyricmode {
  Iu -- sto -- rum a -- ni -- mae, __ _ in ma -- nu De -- i sunt, De --
  i __ _ sunt. et non tan -- get il -- los tor -- men -- tum ma -- li
  -- ti -- ae, ma -- li -- _ _ ti -- ae, vi -- si sunt o -- cu -- lis
  in -- si -- pi -- en -- ti -- um mo -- ri. Il -- li au -- tem sunt in
  pa -- ce, pa -- ce, Il -- li au -- tem sunt in pa -- ce, __ _ sunt in
  pa -- _ _ ce, pa -- _ ce, pa -- ce.
}

\score {
  \new ChoirStaff \simultaneous {
    \new Staff \with { instrumentName = "Cantus" shortInstrumentName = "C." }
      \new Voice = "cantusV" \simultaneous { \clef "treble" \global \structure \cantus }
    \new Lyrics \lyricsto "cantusV" \cantusText
    \new Staff \with { instrumentName = "Altus" shortInstrumentName = "A." }
      \new Voice = "altusV" \simultaneous { \clef "treble" \global \structure \altus }
    \new Lyrics \lyricsto "altusV" \altusText
    \new Staff \with { instrumentName = "Tenor" shortInstrumentName = "T." }
      \new Voice = "tenorV" \simultaneous { \clef "treble_8" \global \structure \tenor }
    \new Lyrics \lyricsto "tenorV" \tenorText
    \new Staff \with { instrumentName = "Bassus" shortInstrumentName = "B." }
      \new Voice = "bassusV" \simultaneous { \clef "bass" \global \structure \bassus }
    \new Lyrics \lyricsto "bassusV" \bassusText
  }
  \layout { }
}

% MIDI: four voices on separate channels, with the tempo plan in midiTempi.
\score {
  \new ChoirStaff \simultaneous {
    \new Staff \with { midiInstrument = "choir aahs" midiMinimumVolume = #0.55 midiMaximumVolume = #0.85 }
      \new Voice \simultaneous { \global \structure \midiTempi \cantus }
    \new Staff \with { midiInstrument = "choir aahs" midiMinimumVolume = #0.5 midiMaximumVolume = #0.8 }
      \new Voice \simultaneous { \global \structure \altus }
    \new Staff \with { midiInstrument = "choir aahs" midiMinimumVolume = #0.5 midiMaximumVolume = #0.8 }
      \new Voice \simultaneous { \global \structure \tenor }
    \new Staff \with { midiInstrument = "choir aahs" midiMinimumVolume = #0.55 midiMaximumVolume = #0.85 }
      \new Voice \simultaneous { \global \structure \bassus }
  }
  \midi { }
}

\markup {
  \fill-line {
    \null
    \column {
      \line { \italic "Iustorum animae in manu Dei sunt," }
      \line { \italic "et non tanget illos tormentum malitiae:" }
      \line { \italic "visi sunt oculis insipientium mori:" }
      \line { \italic "illi autem sunt in pace." }
    }
    \hspace #4
    \column {
      \line { "The souls of the just are in the hand of God," }
      \line { "and the torment of malice shall not touch them." }
      \line { "In the sight of the unwise they seemed to die," }
      \line { "but they are in peace." }
    }
    \null
  }
}
