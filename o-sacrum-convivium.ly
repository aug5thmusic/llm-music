\version "2.24.0"
\language "nederlands"

% O SACRUM CONVIVIUM -- motet for four voices (Cantus, Altus, Tenor, Bassus)
% Original composition in the style of Giovanni Pierluigi da Palestrina.
% No soggetto is taken from Palestrina.
%
% Text: the Magnificat antiphon at Second Vespers of Corpus Christi.
% 54 bars, about 2 1/2 minutes.
% Mode 1 (Dorian on D, no signature); B-flat is written where it is sung.
% Original note values: the semibreve is the tactus, with a breve to the bar.
% Musica ficta (the cadential sharps) is printed above the note.
% All pitches are absolute (c' = middle C).
% Written without double angle brackets: \simultaneous { } is used instead.
%
% PLAN: one point of imitation for each clause of the text.
%  1-8    "O sacrum convivium". Soggetto d-a-f-g-bes in the tenor, answered at
%         the twelfth by the cantus (a'-d''-c''-bes'), then altus and bassus.
%         The bass runs B-flat C A D G A D under a 4-3 clausula on D (bar 9).
%  9-13   "in quo Christus sumitur". A short head in dotted rhythm (CHRI-stus),
%         f-f-c'-bes-a answered by c-c-f-e-d. Tenor alone, then bassus, altus,
%         cantus. 2-3 suspension in the tenor; cadence on F (bar 14).
%  14-18  "recolitur memoria". Close stretto at the octave: the bassus alone on
%         low F, the tenor two minims later, then altus and cantus. Cadence on
%         D (bar 19).
%  19-22  "passionis eius". A falling soggetto d'-c'-bes-a-g. Tenor alone, then
%         altus, bassus, cantus. Phrygian half close on A (bass B-flat to A,
%         7-6 in the cantus) at bar 23.
%  23-28  "mens impletur gratia". Paired imitation: cantus and altus rise in
%         thirds (f'-g'-a'-bes'-c''); tenor and bassus repeat the duo while the
%         upper pair go on. 7-6 in the altus over the tenor; cadence on F (bar 29).
%  29-37  "et futurae gloriae nobis pignus datur". Dotted soggetto a-c'-d'-e'-f'
%         answered by d-f-g-a-bes. Tenor and bassus first, then cantus and altus
%         an octave higher; the cantus reaches f'' on "glo-", the high point of
%         the piece. "nobis pignus datur" moves in semibreves beneath them.
%         Full cadence on D (bar 37).
%  38-46  "Alleluia" in tripla (three semibreves in the time of two): upper
%         trio, lower trio, then tutti, with a hemiola cadence on F.
%  47-54  "Alleluia" in duple. Melismatic soggetto a-d'-f'-e'-d' (tenor,
%         bassus, altus, cantus). Clausula on D with an ornamented 4-3 in the
%         cantus, then a plagal close (G minor to D major) over the final.
%
% The counterpoint was checked by script: dissonance treatment (suspension,
% passing note, neighbour, cambiata), parallels, melodic intervals, ranges and
% text underlay. The compiled MIDI was then checked again independently.
%
% Compile: lilypond -o output/pdf/o-sacrum-convivium o-sacrum-convivium.ly
% This writes the PDF and the MIDI file.

\header {
  title = "O sacrum convivium"
  subtitle = "Motet for four voices"
  subsubtitle = "Antiphon at Second Vespers of Corpus Christi"
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
    \override MetronomeMark.font-size = #-0.5
    \override RehearsalMark.font-size = #-0.5
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

% Metre plan: bars 1-37 alla breve (4/2), 38-46 tripla (3/1, three
% semibreves in the time of two), 47-54 alla breve again.
structure = {
  s\breve*37 \bar "||"
  \time 3/1 s\breve.*9 \bar "||"
  \cutTime s\breve*8
}

marks = {
  s\breve*37
  \tempo \markup \concat { \smaller \rhythm { \breve } " = " \smaller \rhythm { \breve. } }
  s\breve.*9
  \tempo \markup \concat { \smaller \rhythm { \breve. } " = " \smaller \rhythm { \breve } }
  s\breve*8
}

midiTempi = {
  \tempo 2 = 88
  s\breve*37
  \tempo 1 = 66
  s\breve.*9
  \tempo 2 = 88
  s\breve*6
  \tempo 2 = 80
  s\breve
  \tempo 2 = 70
  s\breve
}

cantus = {
  R\breve | % 1
  a'1 d''1~ | % 2
  d''2 c''2 bes'1 | % 3
  d''1 c''2 bes'2 | % 4
  a'1 f'2 r2 | % 5
  R\breve | % 6
  c''1 d''1 | % 7
  bes'2 d''2~ d''4 \ficta cis''8 b'8 cis''2 | % 8
  d''1 r1 | % 9
  R\breve | % 10
  r1 f'2 f'2 | % 11
  c''2. bes'4 a'1 | % 12
  bes'1 g'1 | % 13
  f'1 r1 | % 14
  R\breve | % 15
  r1 r2 f'2 | % 16
  bes'2. a'4 g'1 | % 17
  bes'2 a'1 g'2 | % 18
  f'1 r1 | % 19
  R\breve | % 20
  d''2 c''2 bes'1~ | % 21
  bes'2 a'1 g'2 | % 22
  a'1 f'2 g'2 | % 23
  a'1 bes'1 | % 24
  c''1. bes'2 | % 25
  a'1 c''1 | % 26
  bes'1 a'1 | % 27
  a'2 bes'2 c''1 | % 28
  a'1 r1 | % 29
  R\breve | % 30
  R\breve | % 31
  r1 a'2 c''2 | % 32
  d''2. e''4 f''2. e''4 | % 33
  d''1 d''1 | % 34
  c''1 a'1 | % 35
  bes'2 d''1 \ficta cis''2 | % 36
  d''\breve | % 37
  a'\breve bes'1 | % 38
  c''\breve a'1 | % 39
  R\breve. | % 40
  R\breve. | % 41
  d''\breve c''1 | % 42
  bes'\breve a'1 | % 43
  g'\breve a'1~ | % 44
  a'1 c''\breve | % 45
  a'\breve. | % 46
  R\breve | % 47
  R\breve | % 48
  R\breve | % 49
  r1 a'2 d''2 | % 50
  f''2. e''4 d''1~ | % 51
  d''1~ d''4 \ficta cis''8 b'8 cis''2 | % 52
  d''\breve~ | % 53
  d''\breve\fermata | % 54
  \bar "|."
}

cantusText = \lyricmode {
  O sa -- crum con -- vi __ _ _ vi -- um, con -- vi -- vi __ _ _ _ _
  um. in quo Chri -- stus su __ _ mi -- tur. re -- co -- li -- tur me
  -- mo -- ri -- a. pas -- si -- o -- nis e -- ius. mens im -- ple --
  tur gra -- ti -- a, gra -- ti -- a, gra __ _ ti -- a. et fu -- tu --
  rae glo -- ri -- ae, no -- bis pi -- gnus da __ _ tur. Al -- le -- lu
  -- ia. Al -- le -- lu -- ia. Al -- le -- lu -- ia. Al -- le -- lu --
  ia __ _ _ _ _ _
}

altus = {
  R\breve | % 1
  R\breve | % 2
  R\breve | % 3
  d'1 a'1~ | % 4
  a'2 f'1 g'2 | % 5
  bes'2. a'4 g'4 f'4 g'2 | % 6
  a'1 f'1 | % 7
  g'1 e'2 e'2 | % 8
  f'1 r1 | % 9
  r1 c'2 c'2 | % 10
  f'2. e'4 d'1 | % 11
  f'2 e'2 f'1 | % 12
  d'1 c'1 | % 13
  a1 r1 | % 14
  R\breve | % 15
  r2 c'2 f'2. e'4 | % 16
  d'1 e'1 | % 17
  f'2 d'2~ d'4 \ficta cis'8 b8 cis'2 | % 18
  d'1 r1 | % 19
  f'2 e'2 d'1~ | % 20
  d'2 e'2 f'1 | % 21
  f'1 d'1 | % 22
  \ficta cis'1 d'2 e'2 | % 23
  f'1 g'1 | % 24
  a'2 g'4 f'4 e'2 g'2 | % 25
  f'1 f'1 | % 26
  d'1 f'1 | % 27
  d'2 f'1 e'2 | % 28
  f'1. r2 | % 29
  R\breve | % 30
  R\breve | % 31
  R\breve | % 32
  r1 d'2 f'2 | % 33
  g'2. a'4 bes'2. a'4 | % 34
  g'1 f'1 | % 35
  g'1 e'1 | % 36
  f'\breve | % 37
  c'\breve f'1 | % 38
  e'\breve f'1 | % 39
  f'\breve g'1 | % 40
  a'\breve f'1 | % 41
  f'\breve f'1 | % 42
  g'\breve f'1 | % 43
  d'\breve f'1~ | % 44
  f'1 g'\breve | % 45
  f'\breve. | % 46
  R\breve | % 47
  R\breve | % 48
  d'2 g'2 bes'2. a'4 | % 49
  g'1 f'1 | % 50
  r1 f'1 | % 51
  g'1 e'1 | % 52
  f'1 g'1 | % 53
  \ficta fis'\breve\fermata | % 54
  \bar "|."
}

altusText = \lyricmode {
  O sa -- crum con -- vi __ _ _ _ _ vi -- um, con -- vi -- vi -- um. in
  quo Chri -- stus su -- mi __ _ tur, su -- mi -- tur. re -- co -- li
  -- tur me -- mo -- ri __ _ _ _ a. pas -- si -- o -- nis e -- ius, e
  -- ius. mens im -- ple -- tur gra __ _ _ _ ti -- a, gra -- ti -- a,
  gra -- ti __ _ a. et fu -- tu -- rae glo -- ri -- ae, pi -- gnus da
  -- tur. Al -- le -- lu -- ia. Al -- le -- lu -- ia. Al -- le -- lu --
  ia. Al -- le -- lu -- ia. Al -- le -- lu -- ia __ _ _ Al -- le -- lu
  __ _ _ ia.
}

tenor = {
  d1 a1~ | % 1
  a2 f1 g2 | % 2
  bes2. a4 g4 f4 g2 | % 3
  f\breve | % 4
  f1 r1 | % 5
  d1 e1 | % 6
  f1 a1 | % 7
  bes1 a1 | % 8
  a2 r2 f2 f2 | % 9
  c'2. bes4 a1 | % 10
  d'1 d'1 | % 11
  a1 f1 | % 12
  g2 f2~ f4 e8 d8 e2 | % 13
  f1 r1 | % 14
  r2 f2 bes2. a4 | % 15
  g1 f1 | % 16
  f1 e1 | % 17
  d2 f2 e1 | % 18
  d1 d'2 c'2 | % 19
  bes1. a2 | % 20
  g1 f1 | % 21
  d\breve | % 22
  e1 r1 | % 23
  R\breve | % 24
  R\breve | % 25
  f2 g2 a1 | % 26
  bes1 c'1~ | % 27
  c'2 bes2 g1 | % 28
  f1 a2 c'2 | % 29
  d'2. e'4 f'2. e'4 | % 30
  d'1 d'1 | % 31
  bes1 a1 | % 32
  bes1 a1 | % 33
  bes1 f'1 | % 34
  e'1 c'1 | % 35
  d'1 a1~ | % 36
  a\breve | % 37
  f\breve d1 | % 38
  c\breve f1 | % 39
  a\breve d'1 | % 40
  \ficta cis'\breve d'1 | % 41
  d'\breve a1 | % 42
  d'\breve d'1 | % 43
  bes\breve a1~ | % 44
  a1 e\breve | % 45
  f\breve. | % 46
  a2 d'2 f'2. e'4 | % 47
  d'\breve | % 48
  bes1 d'1 | % 49
  e'1 d'1 | % 50
  d'1 a1 | % 51
  d'1 a1~ | % 52
  a1 bes1 | % 53
  a\breve\fermata | % 54
  \bar "|."
}

tenorText = \lyricmode {
  O sa -- crum con -- vi __ _ _ _ _ vi -- um, o sa -- crum con -- vi --
  vi -- um. in quo Chri -- stus su -- mi -- tur, su -- mi __ _ _ _ _ _
  tur. re -- co -- li -- tur me -- mo -- ri __ _ _ _ a. pas -- si -- o
  -- nis e -- ius, e -- ius. mens im -- ple -- tur gra __ _ ti -- a. et
  fu -- tu -- rae glo -- ri -- ae, glo -- ri -- ae, no -- bis pi --
  gnus da -- tur, da -- tur. Al -- le -- lu -- ia. Al -- le -- lu --
  ia. Al -- le -- lu -- ia. Al -- le -- lu -- ia. Al -- le -- lu -- ia
  __ _ Al -- le -- lu -- ia. Al -- le -- lu __ _ _ ia.
}

bassus = {
  R\breve | % 1
  R\breve | % 2
  R\breve | % 3
  r1 a,1 | % 4
  d1. c2 | % 5
  bes,1 c1 | % 6
  a,1 d1 | % 7
  g,1 a,2 a,2 | % 8
  d1 r1 | % 9
  c2 c2 f2. e4 | % 10
  d1 bes,1 | % 11
  a,1 d1 | % 12
  bes,1 c1 | % 13
  f1. f,2 | % 14
  bes,2. a,4 g,1 | % 15
  c1 d1 | % 16
  bes,1 c1 | % 17
  bes,2 d2 a,1 | % 18
  d1 r1 | % 19
  r1 d2 c2 | % 20
  bes,1. d2 | % 21
  d1 bes,1 | % 22
  a,1 r1 | % 23
  R\breve | % 24
  R\breve | % 25
  d2 e2 f1 | % 26
  g1 a1 | % 27
  d1 c1 | % 28
  f1 r1 | % 29
  r1 d2 f2 | % 30
  g2. a4 bes2. a4 | % 31
  g1 f1 | % 32
  bes,1 d1 | % 33
  g,1 d1 | % 34
  e1 f1 | % 35
  bes,1 a,1 | % 36
  d\breve | % 37
  R\breve. | % 38
  R\breve. | % 39
  d\breve bes,1 | % 40
  a,\breve d1 | % 41
  bes,\breve f1 | % 42
  bes,\breve d1 | % 43
  g,\breve d1~ | % 44
  d1 c\breve | % 45
  f\breve. | % 46
  R\breve | % 47
  d2 g2 bes2. a4 | % 48
  g\breve | % 49
  c1 d1 | % 50
  bes,1 d1 | % 51
  bes,1 a,1 | % 52
  d1 g,1 | % 53
  d\breve\fermata | % 54
  \bar "|."
}

bassusText = \lyricmode {
  O sa -- crum con -- vi -- vi -- um, con -- vi -- vi -- um. in quo
  Chri -- stus su -- mi -- tur, su __ _ mi -- tur. re -- co -- li --
  tur me -- mo -- ri -- a, me -- mo -- ri -- a. pas -- si -- o -- nis e
  -- ius __ _ mens im -- ple -- tur gra __ _ ti -- a. et fu -- tu --
  rae glo -- ri -- ae, no -- bis pi -- gnus __ _ da -- tur, da __ _
  tur. Al -- le -- lu -- ia. Al -- le -- lu -- ia. Al -- le -- lu --
  ia. Al -- le -- lu -- ia __ _ Al -- le -- lu -- ia. Al -- le -- lu __
  _ ia.
}

\score {
  \new ChoirStaff \simultaneous {
    \new Staff \with { instrumentName = "Cantus" shortInstrumentName = "C." }
      \new Voice = "cantusV" \simultaneous { \clef "treble" \global \structure \marks \cantus }
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
      \line { \italic "O sacrum convivium, in quo Christus sumitur:" }
      \line { \italic "recolitur memoria passionis eius:" }
      \line { \italic "mens impletur gratia:" }
      \line { \italic "et futurae gloriae nobis pignus datur." }
      \line { \italic "Alleluia." }
    }
    \hspace #4
    \column {
      \line { "O sacred banquet, in which Christ is received:" }
      \line { "the memory of his passion is renewed," }
      \line { "the mind is filled with grace," }
      \line { "and a pledge of future glory is given to us." }
      \line { "Alleluia." }
    }
    \null
  }
}
