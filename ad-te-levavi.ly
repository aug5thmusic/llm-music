\version "2.24.3"
\language "nederlands"

% AD TE LEVAVI -- original motet in the style of Palestrina.
% SATB, unaccompanied; D Dorian with local B-flat and cadential ficta.
% Text: Psalm 122:1,3 (Vulgate; Psalm 123 in modern numbering), excerpt.
% 44 bars of 4/2, approximately 2 minutes 20 seconds at minim = 76.
% All pitches are absolute; c' is middle C. Tenor sounds as written.
% Modern barlines and clefs; suggested cadential sharps printed above notes.
% The imitation subjects are newly composed, not quotations.
% Compile: lilypond -o output/pdf/ad-te-levavi ad-te-levavi.ly

\header {
  title = "Ad te levavi"
  subtitle = "Motet for four voices, a cappella"
  subsubtitle = "In the style of Giovanni Pierluigi da Palestrina"
  composer = "Original composition"
  poet = "Psalm 122:1,3 (Vulgate), excerpt"
  tagline = ##f
}

#(set-global-staff-size 16.5)
\paper {
  #(set-paper-size "a4")
  top-margin = 13\mm
  bottom-margin = 13\mm
  left-margin = 15\mm
  right-margin = 14\mm
  indent = 18\mm
  short-indent = 7\mm
  ragged-last-bottom = ##f
  system-system-spacing.basic-distance = #17
  system-system-spacing.minimum-distance = #13
  system-system-spacing.padding = #3
  markup-system-spacing.basic-distance = #10
  score-markup-spacing.basic-distance = #10
  print-page-number = ##t
  system-separator-markup = \slashSeparator
}

\layout {
  \context {
    \Score
    \override BarNumber.break-visibility = ##(#f #f #t)
    \override RehearsalMark.self-alignment-X = #LEFT
    \override RehearsalMark.font-size = #-1
  }
  \context {
    \Lyrics
    \override LyricText.font-size = #-0.3
    \override LyricHyphen.minimum-distance = #0.8
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #0.8
  }
}

ficta = { \once \set suggestAccidentals = ##t }
global = {
  \key d \dorian
  \time 4/2
}

% A semibreve tactus; the metronome indication is a rehearsal aid.
structure = {
  \tempo "Alla breve, sostenuto" 2 = 76
  s\breve*4 \break
  s\breve*4 \break
  s\breve*4 \break
  \mark \markup \italic "Qui habitas in caelis"
  s\breve*5 \break
  s\breve*5 \break
  \mark \markup \italic "Miserere nostri, Domine"
  s\breve*5 \break
  s\breve*5 \break
  \mark \markup \italic "Miserere nostri"
  s\breve*4 \break
  s\breve*4 \break
  s\breve*4
}

cantus = {
  R\breve | % 1
  d'1 f'2 e'2 | % 2
  d'1 a'1 | % 3
  g'1 f'1 | % 4
  f'2 g'2 a'1 | % 5
  d''2 r2 \ficta cis''1 | % 6
  d''1 c''2 bes'2 | % 7
  a'1 g'1 | % 8
  f'1 e'1 | % 9
  g'1 a'1 | % 10
  d''1~ d''2 \ficta cis''2 | % 11
  d''\breve | % 12
  R\breve | % 13
  R\breve | % 14
  a'1 b'2 c''2 | % 15
  b'1 a'1 | % 16
  g'2 e'2 f'1~ | % 17
  f'2 e'2 f'1 | % 18
  e'2. d'4 e'2 d'2 | % 19
  c'1 d'1 | % 20
  e'1 g'1 | % 21
  a'1 r1 | % 22
  d''1 c''2 b'2 | % 23
  a'1 e'2 f'4 g'4 | % 24
  f'1 e'2 d'2 | % 25
  g'1 e'1~ | % 26
  e'1 f'1 | % 27
  g'1 g'2 f'2 | % 28
  e'1 g'1 | % 29
  e'1 a'1 | % 30
  f'1 g'1 | % 31
  a'1 r1 | % 32
  R\breve | % 33
  R\breve | % 34
  R\breve | % 35
  d''1 f''2 e''2 | % 36
  d''1 b'2 c''2 | % 37
  d''2 c''2 bes'2 a'2 | % 38
  g'2 a'2 bes'2 a'2 | % 39
  g'2 a'2 b'2 c''2 | % 40
  d''1 e''1 | % 41
  f''2 e''2 d''2. c''4 | % 42
  d''1~ d''2 \ficta cis''2 | % 43
  d''\breve\fermata | % 44
  \bar "|."
}

cantusText = \lyricmode {
  Ad te le -- va -- vi o -- cu -- los __ _ me -- os, ad te le -- _ va -- vi o -- cu
  -- los me -- _ _ os. qui ha -- bi -- tas in cae -- _ _ _ lis, qui __ _ _ ha -- bi
  -- tas in cae -- lis. Mi -- se -- re -- re nos -- _ _ _ tri, Do -- mi -- ne. Mi --
  se -- re -- re nos -- tri, Do -- _ _ mi -- ne. Mi -- se -- _ re -- re nos -- tri,
  Mi -- se -- re -- re __ _ nos -- _ tri, Mi -- se -- re -- re __ _ _ _ nos -- _ _ _
  tri.
}

altus = {
  R\breve | % 1
  R\breve | % 2
  r1 a2 c'2 | % 3
  b2 c'2 d'1 | % 4
  d'2 r2 c'1 | % 5
  a\breve | % 6
  f'1 e'1 | % 7
  f'1 d'1 | % 8
  d'1 e'1 | % 9
  e'1~ e'2 d'2 | % 10
  f'1 e'1 | % 11
  f'\breve | % 12
  R\breve | % 13
  e'1 f'2 g'2 | % 14
  a'1 g'1 | % 15
  e'1 f'1 | % 16
  e'1 d'1~ | % 17
  d'2 c'2 f'1 | % 18
  c'1 b1 | % 19
  a1 b1 | % 20
  c'1 e'1 | % 21
  f'1 r1 | % 22
  R\breve | % 23
  R\breve | % 24
  R\breve | % 25
  c'1 b2 a2 | % 26
  g1 d'1~ | % 27
  d'2 c'2 b1 | % 28
  c'1 b2 a2 | % 29
  g1 a1 | % 30
  d'1 d'1 | % 31
  \ficta cis'1 r1 | % 32
  r1. a2~ | % 33
  a2 c'2 b2 a2~ | % 34
  a2 d'2 c'1 | % 35
  a\breve | % 36
  d'1. c'2 | % 37
  f'1 d'1 | % 38
  e'1 d'1 | % 39
  e'1 d'2 c'2 | % 40
  a1 c'1 | % 41
  a1 b1 | % 42
  d'1 e'1 | % 43
  \ficta fis'\breve\fermata | % 44
  \bar "|."
}

altusText = \lyricmode {
  Ad te le -- _ va -- vi o -- cu -- los me -- os, o -- cu -- los me -- os, me -- _
  os. qui ha -- bi -- tas in cae -- lis, qui ha -- _ bi -- tas in cae -- lis, in cae
  -- lis. Mi -- se -- re -- re nos -- _ tri, __ _ _ _ _ Do -- _ mi -- ne. Mi -- se
  -- re -- re nos -- _ tri, Mi -- se -- re -- re nos -- tri, Mi -- se -- re -- re __
  _ _ _ nos -- _ tri.
}

tenor = {
  d1 f2 e2 | % 1
  d1 a1 | % 2
  f1 f2 a2 | % 3
  e1 f1 | % 4
  a2 r2 a1 | % 5
  f1 a1 | % 6
  a1 c'1 | % 7
  c'1 bes1 | % 8
  f1 g1 | % 9
  c'1 f1 | % 10
  a\breve~ | % 11
  a\breve | % 12
  a1 b2 c'2 | % 13
  b1 a1 | % 14
  f1 g2. f4 | % 15
  g1 f1 | % 16
  g1 a1~ | % 17
  a\breve | % 18
  e1 g1 | % 19
  e1 g1 | % 20
  g1 c'1 | % 21
  c'1 r1 | % 22
  R\breve | % 23
  d'1 c'2 bes2 | % 24
  a1 g2 f2 | % 25
  e\breve~ | % 26
  e1 d2 r2 | % 27
  g\breve | % 28
  c'1 g1~ | % 29
  g1 f2. g4 | % 30
  a1 g1 | % 31
  e1 r1 | % 32
  d1 f2 e2 | % 33
  d2 a2 g2 a2 | % 34
  f1 a2 g2 | % 35
  f1 a1 | % 36
  f2. e4 d2 a2 | % 37
  f2 a2 g1 | % 38
  e2. f4 g1 | % 39
  e2 f2 g1 | % 40
  f1 g1 | % 41
  f1 g1 | % 42
  a\breve | % 43
  a\breve\fermata | % 44
  \bar "|."
}

tenorText = \lyricmode {
  Ad te le -- va -- vi o -- cu -- _ los me -- os, ad te le -- va -- vi o -- cu --
  los me -- _ _ os. qui ha -- bi -- tas in cae -- _ _ _ lis, qui ha -- bi -- tas in
  __ _ cae -- _ lis. Mi -- se -- re -- re __ _ _ nos -- tri, Do -- _ mi -- _ _ _ _
  ne. Mi -- se -- _ re -- re nos -- _ tri, Mi -- se -- re -- re nos -- _ _ _ tri, Mi
  -- se -- re -- _ _ re __ _ _ _ _ _ _ nos -- tri.
}

bassus = {
  R\breve | % 1
  R\breve | % 2
  R\breve | % 3
  R\breve | % 4
  d1 f2 e2 | % 5
  d1 a,2 r2 | % 6
  d1 a1 | % 7
  f1 g1 | % 8
  d1 c1 | % 9
  e1 d1 | % 10
  d1 a,1 | % 11
  d\breve | % 12
  R\breve | % 13
  g1 d1 | % 14
  f1 e2 c2 | % 15
  e1 a,1 | % 16
  c1 f,1 | % 17
  c1 a,1 | % 18
  c1 g,1 | % 19
  a,1 g,1 | % 20
  c1 c1 | % 21
  f1 r1 | % 22
  R\breve | % 23
  R\breve | % 24
  R\breve | % 25
  R\breve | % 26
  c1 bes,2 a,2 | % 27
  g,1 e,2 g,2 | % 28
  a,1 e1 | % 29
  c1 f2 e2 | % 30
  d1 bes,1 | % 31
  a,1 r1 | % 32
  R\breve | % 33
  R\breve | % 34
  d1 f2 e2 | % 35
  d\breve~ | % 36
  d1 g,2 a,2 | % 37
  d1 g,1 | % 38
  c1 g,2 bes,2 | % 39
  c1 g2 e2 | % 40
  d1 c1 | % 41
  d1 g1 | % 42
  f1 a1 | % 43
  d\breve\fermata | % 44
  \bar "|."
}

bassusText = \lyricmode {
  Ad te le -- va -- vi o -- cu -- los me -- os, o -- cu -- los me -- _ os. qui ha --
  bi -- tas __ _ in cae -- lis, qui ha -- bi -- tas in cae -- lis, in cae -- lis. Mi
  -- se -- re -- re nos -- _ tri, __ _ Do -- _ _ _ mi -- ne. Mi -- se -- _ re -- re
  nos -- tri, Mi -- se -- re -- re nos -- _ tri, Mi -- se -- re -- re __ _ nos --
  tri.
}


\score {
  \new ChoirStaff \simultaneous {
    \new Staff \with {
      instrumentName = "Cantus"
      shortInstrumentName = "C."
      midiInstrument = "choir aahs"
    } \new Voice = "cantusV" \simultaneous {
      \clef treble \global \structure \cantus
    }
    \new Lyrics \lyricsto "cantusV" \cantusText
    \new Staff \with {
      instrumentName = "Altus"
      shortInstrumentName = "A."
      midiInstrument = "choir aahs"
    } \new Voice = "altusV" \simultaneous {
      \clef treble \global \altus
    }
    \new Lyrics \lyricsto "altusV" \altusText
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
    } \new Voice = "tenorV" \simultaneous {
      \clef "treble_8" \global \tenor
    }
    \new Lyrics \lyricsto "tenorV" \tenorText
    \new Staff \with {
      instrumentName = "Bassus"
      shortInstrumentName = "B."
      midiInstrument = "choir aahs"
    } \new Voice = "bassusV" \simultaneous {
      \clef bass \global \bassus
    }
    \new Lyrics \lyricsto "bassusV" \bassusText
  }
  \layout { }
  \midi { }
}

\markup {
  \fill-line {
    \column {
      \line { \italic "Ad te levavi oculos meos," }
      \line { \italic "qui habitas in caelis." }
      \line { \italic "Miserere nostri, Domine," }
      \line { \italic "miserere nostri." }
    }
    \column {
      \line { "To you I lift up my eyes," }
      \line { "you who dwell in heaven." }
      \line { "Have mercy on us, O Lord," }
      \line { "have mercy on us." }
    }
  }
}
