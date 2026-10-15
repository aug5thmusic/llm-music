\version "2.24.3"
\language "nederlands"

% DA PACEM, DOMINE -- original SATB motet in the style of Palestrina.
% This is new music, not an arrangement of a historical motet or chant.
% Absolute pitches throughout: c' = middle C.
% Compile: lilypond -o output/pdf/da-pacem-domine da-pacem-domine.ly
%
% Text: Da pacem, Domine, in diebus nostris: quia non est alius
% qui pugnet pro nobis, nisi tu, Deus noster.
% Traditional Latin antiphon, Cantus Index 002090:
% https://cantusindex.org/id/002090
% Translation: Give peace, Lord, in our days, for there is no other
% who fights for us except you, our God.
%
% Dorian on D with local B-flats and cadential ficta; 44 bars in 4/2.
% Modern score with a breve to the bar; the cut-C sign suggests a flowing
% semibreve tactus. Sing in broad phrases, without accenting each barline.
% The metronome indication is a practical playback suggestion, not historical.
% Approximate duration: 2 minutes 20 seconds, allowing for the final fermata.
%
%  1-16: Da pacem / in diebus nostris. Entries T, C, A, B, then fuller
%        counterpoint with prepared suspensions; cadence on D.
% 17-28: Quia non est alius / qui pugnet pro nobis. Syllabic declaration,
%        then new overlapping entries; cadence on A.
% 29-44: Nisi tu, Deus noster. Two answering duos widen into four voices.
%        Return of Da pacem; soprano peak at F5; 9-8 and 4-3 suspensions
%        before the D-major final. Each voice carries the complete text.
%
% Cadential sharps printed above the staff are editorial musica ficta.
% B-flat is printed normally. Modern vocal clefs and barlines are used.

\header {
  title = "Da pacem, Domine"
  subtitle = "Motet for four unaccompanied voices"
  subsubtitle = "In the style of Giovanni Pierluigi da Palestrina"
  composer = "Original composition"
  poet = "Traditional Latin antiphon"
  tagline = ##f
}

#(set-global-staff-size 16.5)

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
  system-system-spacing.padding = #3
  score-markup-spacing.basic-distance = #12
  print-page-number = ##t
  system-separator-markup = \slashSeparator
}

ficta = { \once \set suggestAccidentals = ##t }

global = {
  \key c \major
  \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \once \override Staff.TimeSignature.text = \markup \musicglyph "timesig.C22"
  \time 4/2
  \set Score.tempoHideNote = ##t
}

% Three systems per page; changes of texture begin at system starts.
structure = {
  s\breve*4 \break
  s\breve*4 \break
  s\breve*4 \pageBreak
  s\breve*4 \break
  s\breve*4 \break
  s\breve*4 \pageBreak
  s\breve*4 \break
  s\breve*3 \break
  s\breve*3 \pageBreak
  s\breve*4 \break
  s\breve*3 \break
  s\breve*3 \bar "|."
}

midiTempi = {
  \tempo 2 = 76
  s\breve*42
  \tempo 2 = 72
  s\breve
  \tempo 2 = 64
  s\breve
}

cantus = {
  R\breve | % 1
  R\breve | % 2
  d'1 f'2 e'2 | % 3
  d'1 e'2 d'2 | % 4
  f'1 a'2 g'2 | % 5
  f'1 e'2 d'2 | % 6
  a'1 f'2 g'2 | % 7
  a'1 g'2 f'2 | % 8
  f'2 g'2 a'1 | % 9
  g'1 e'1 | % 10
  d'1 f'1 | % 11
  e'1 d'1 | % 12
  f'1 e'2. d'4 | % 13
  c'1 d'1~ | % 14
  d'2 \ficta cis'2 e'1 | % 15
  d'1. r2 | % 16
  f'1 e'1 | % 17
  f'1 g'1 | % 18
  a'1 g'1 | % 19
  f'1 e'1 | % 20
  R\breve | % 21
  a'2 b'2 c''1 | % 22
  b'2 a'1.~ | % 23
  a'2 g'1 a'2 | % 24
  bes'1 a'2 g'2 | % 25
  f'2 e'2 f'2 g'2~ | % 26
  g'1. f'2 | % 27
  e'1. r2 | % 28
  R\breve | % 29
  R\breve | % 30
  R\breve | % 31
  g'2 b'2 a'1 | % 32
  g'1 g'1 | % 33
  f'1 e'1 | % 34
  f'1 a'1 | % 35
  b'2 a'4 g'4~ g'1 | % 36
  a'1 g'1 | % 37
  a'1 f''1 | % 38
  d''1 e''1 | % 39
  c''1 d''1 | % 40
  c''1 e''1~ | % 41
  e''2 d''2~ d''1~ | % 42
  d''2 \ficta cis''2~ \ficta cis''1 | % 43
  d''\breve\fermata | % 44
}

cantusText = \lyricmode {
  Da pa -- cem, Do -- mi -- ne, da pa -- cem, Do -- mi -- ne, in di -- e -- bus nos -- tris, in di -- _ e -- bus nos -- tris, in di -- e -- bus __ _ _ nos -- _ _ tris. qui -- a non est a -- li -- us _ qui pug -- net pro no -- _ bis qui pug -- net pro no -- _ _ _ bis ni -- si tu, De -- us nos -- ter. Da __ _ pa -- _ _ cem, Do -- mi -- ne in di -- e -- bus nos -- _ _ _ tris.
}

altus = {
  R\breve | % 1
  R\breve | % 2
  R\breve | % 3
  R\breve | % 4
  a1 c'2 b2 | % 5
  a1 b2 a2 | % 6
  f'1 d'2 e'2 | % 7
  f'1 e'2 f'2 | % 8
  d'1 c'1~ | % 9
  c'2 bes2 a1 | % 10
  a1 d'1~ | % 11
  d'2 c'2 b1 | % 12
  a2 b2 c'1 | % 13
  a1~ a2 g4 f4 | % 14
  a1 a1 | % 15
  a1. r2 | % 16
  d'1 e'1 | % 17
  d'1 e'1 | % 18
  c'\breve | % 19
  d'1 c'1 | % 20
  d'2 e'2 f'1~ | % 21
  f'1 e'1 | % 22
  d'2 c'1.~ | % 23
  c'2 d'2 c'1 | % 24
  d'1 c'1~ | % 25
  c'1. d'2 | % 26
  e'1. d'2 | % 27
  \ficta cis'1. r2 | % 28
  a2 c'2 b1 | % 29
  a1 a1 | % 30
  g1 a1 | % 31
  R\breve | % 32
  R\breve | % 33
  r1 c'1 | % 34
  d'1 f'1 | % 35
  d'1 e'1~ | % 36
  e'2 f'2 e'1 | % 37
  c'1 f'1 | % 38
  g'1 g'1 | % 39
  e'1 f'1 | % 40
  g'1 e'1 | % 41
  f'1 g'1 | % 42
  e'\breve | % 43
  \ficta fis'\breve\fermata | % 44
}

altusText = \lyricmode {
  Da pa -- cem, Do -- mi -- ne, in di -- e -- bus nos -- tris, in di -- _ e -- bus nos -- _ tris, in di -- e -- bus __ _ _ _ nos -- tris. qui -- a non est a -- li -- us qui pug -- net pro no -- _ bis qui pug -- net pro no -- _ bis ni -- si tu, De -- us nos -- ter. Da pa -- cem, Do -- mi -- ne __ _ Da pa -- cem, Do -- mi -- ne in di -- e -- bus nos -- tris.
}

tenor = {
  d1 f2 e2 | % 1
  d1 e2 d2 | % 2
  f1 a2 g2 | % 3
  b1 c'2 b2 | % 4
  R\breve | % 5
  f1 g2 f2 | % 6
  a1 a2 g2 | % 7
  f1 g2 a2 | % 8
  a1 f1 | % 9
  d1 a1 | % 10
  f1 f1 | % 11
  g1 g1 | % 12
  a1 g1 | % 13
  a1 f1 | % 14
  e1 a1 | % 15
  f1. r2 | % 16
  a1 a1 | % 17
  f1 e1 | % 18
  f1 g1 | % 19
  a\breve | % 20
  r2 g2 c'1~ | % 21
  c'2 b2 r1 | % 22
  d2 e2 f1 | % 23
  e2 d2 e1 | % 24
  d1 e1 | % 25
  f2 a1 g2~ | % 26
  g1 a1 | % 27
  a1. r2 | % 28
  R\breve | % 29
  d1 f1 | % 30
  e1 d1 | % 31
  R\breve | % 32
  R\breve | % 33
  r1 g1 | % 34
  a1 c'1~ | % 35
  c'2 b2~ b1 | % 36
  c'1 c'1 | % 37
  a1 a1 | % 38
  b1 c'1~ | % 39
  c'1 a1 | % 40
  g1 a1~ | % 41
  a1 g1 | % 42
  a\breve | % 43
  a\breve\fermata | % 44
}

tenorText = \lyricmode {
  Da pa -- cem, Do -- mi -- ne, in di -- e -- bus nos -- tris, da pa -- cem, Do -- mi -- ne, in di -- e -- bus nos -- tris, in di -- e -- bus nos -- tris, in di -- e -- bus nos -- tris. qui -- a non est a -- li -- us qui pug -- net qui pug -- net pro no -- _ _ bis pro no -- _ _ bis ni -- si tu __ _ De -- us nos -- _ ter. Da pa -- cem, Do -- mi -- _ ne. Da pa -- _ cem.
}

bassus = {
  R\breve | % 1
  R\breve | % 2
  R\breve | % 3
  R\breve | % 4
  R\breve | % 5
  R\breve | % 6
  d1 f2 e2 | % 7
  d1 e2 d2 | % 8
  d1 f1 | % 9
  bes,1 c1 | % 10
  d1 d1 | % 11
  c1 g,1 | % 12
  d1 e1 | % 13
  f1 d1 | % 14
  a,\breve | % 15
  d1. r2 | % 16
  d1 c1 | % 17
  d1 c1 | % 18
  f1 e1 | % 19
  d1 a,1 | % 20
  g,1 a,1~ | % 21
  a,2 g,2 a,1 | % 22
  b,2 c2 r1 | % 23
  a,2 b,2 c1 | % 24
  bes,1 c1 | % 25
  a,1. b,2 | % 26
  c1 a,1 | % 27
  a,1. r2 | % 28
  R\breve | % 29
  R\breve | % 30
  R\breve | % 31
  R\breve | % 32
  c1 e1 | % 33
  d1 c1 | % 34
  f1 f1 | % 35
  g1 e1 | % 36
  a1 e1 | % 37
  f1 d1 | % 38
  g1 e1 | % 39
  a2 g2 f1 | % 40
  e1 c1 | % 41
  d1 b,1 | % 42
  a,\breve | % 43
  d\breve\fermata | % 44
}

bassusText = \lyricmode {
  Da pa -- cem, Do -- mi -- ne, in di -- e -- bus nos -- tris, in di -- e -- bus nos -- _ _ tris. qui -- a non est a -- li -- us _ qui pug -- net pro no -- bis qui pug -- net pro no -- _ _ _ _ bis ni -- si tu, De -- us nos -- ter. Da pa -- cem, Do -- mi -- ne. Da pa -- _ cem, Do -- mi -- ne. Da pa -- cem.
}


\score {
  \new ChoirStaff \simultaneous {
    \new Staff \with { instrumentName = "Cantus" shortInstrumentName = "C." }
      \new Voice = "cantusV" \simultaneous { \clef treble \global \structure \cantus }
    \new Lyrics \lyricsto "cantusV" \cantusText
    \new Staff \with { instrumentName = "Altus" shortInstrumentName = "A." }
      \new Voice = "altusV" \simultaneous { \clef treble \global \structure \altus }
    \new Lyrics \lyricsto "altusV" \altusText
    \new Staff \with { instrumentName = "Tenor" shortInstrumentName = "T." }
      \new Voice = "tenorV" \simultaneous { \clef "treble_8" \global \structure \tenor }
    \new Lyrics \lyricsto "tenorV" \tenorText
    \new Staff \with { instrumentName = "Bassus" shortInstrumentName = "B." }
      \new Voice = "bassusV" \simultaneous { \clef bass \global \structure \bassus }
    \new Lyrics \lyricsto "bassusV" \bassusText
  }
  \layout {
    \context {
      \Score
      \override BarNumber.break-visibility = ##(#f #f #t)
    }
    \context {
      \Lyrics
      \override LyricText.font-size = #-0.3
      \override LyricHyphen.minimum-distance = #0.7
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #0.7
    }
  }
}

% Four distinct MIDI tracks; synthesized choir voices are a rehearsal aid.
\score {
  \new ChoirStaff \simultaneous {
    \new Staff \with { midiInstrument = "choir aahs" }
      \new Voice \simultaneous { \global \midiTempi \cantus }
    \new Staff \with { midiInstrument = "choir aahs" }
      \new Voice \simultaneous { \global \altus }
    \new Staff \with { midiInstrument = "choir aahs" }
      \new Voice \simultaneous { \global \tenor }
    \new Staff \with { midiInstrument = "choir aahs" }
      \new Voice \simultaneous { \global \bassus }
  }
  \midi { }
}
