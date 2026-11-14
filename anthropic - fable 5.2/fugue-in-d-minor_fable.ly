\version "2.24.0"

% Fugue in D minor for organ, four voices (soprano, alto, tenor on the
% manuals; bass in the pedal), written in the style of J. S. Bach.
%
% All pitches are absolute (no \relative), one bar per line, with a bar
% check at the end of every bar.
% Simultaneous music is written with \simultaneous { ... } instead of
% double angle brackets, and there are no chords, so the file contains
% no angle brackets at all.

% slightly smaller staves so the piece fills two pages
#(set-global-staff-size 18)

\header {
  title = "Fugue in D minor"
  subtitle = "for organ, in the style of J. S. Bach"
  tagline = ##f
}

\paper {
  indent = 14\mm
  short-indent = 0\mm
}

global = {
  \key d \minor
  \time 4/4
  % beam eighths and sixteenths beat by beat
  \set Timing.beamExceptions = #'()
}

soprano = {
  \global
  % --- Subject (soprano)
  d''4 cis''4 bes''4~ bes''16 a''16 g''16 f''16 |  % 1
  e''8 f''16 g''16 f''8 e''16 d''16 e''8 cis''8 d''4 |  % 2
  % --- Answer (alto), countersubject 1 (soprano)
  c''8 d''8 e''8 fis''16 gis''16 a''16 gis''16 a''8~ a''4 |  % 3
  gis''8 e''8 a''8 f''8 d''8 e''16 d''16 c''4 |  % 4
  % --- Codetta
  r8 a''8 g''8 f''16 e''16 f''8 e''16 d''16 e''8 cis''8 |  % 5
  % --- Subject (tenor)
  d''4 g''4 f''2 |  % 6
  g''4~ g''8 f''8 e''4 f''4 |  % 7
  % --- Answer (pedal)
  e''4 b''4 a''2 |  % 8
  f''8 e''4 f''8~ f''4 e''4 |  % 9
  % --- Episode 1
  e''8 f''16 g''16 f''8 e''16 d''16 d''4 e''4 |  % 10
  c''8 d''16 ees''16 d''8 c''16 bes'16 bes'4 g'4 |  % 11
  % --- Subject in F major (alto)
  a'8 bes'8 c''8 d''16 e''16 f''16 e''16 f''8~ f''4 |  % 12
  e''8 c''8 f''8 d''8 bes'8 c''16 bes'16 a'4 |  % 13
  % --- Answer in C major (pedal)
  c''4 f''4 e''2 |  % 14
  f''4~ f''8 e''8 d''4 e''4 |  % 15
  % --- Episode 2
  c''4 bes'4 a'4 r4 |  % 16
  R1 |  % 17
  % --- Subject in B flat major (soprano)
  bes'4 a'4 g''4~ g''16 f''16 ees''16 d''16 |  % 18
  c''8 d''16 ees''16 d''8 c''16 bes'16 c''8 a'8 bes'4 |  % 19
  % --- Subject in G minor (pedal)
  bes'8 c''8 d''8 e''16 fis''16 g''16 fis''16 g''8~ g''4 |  % 20
  fis''8 d''8 g''8 ees''8 c''8 d''16 c''16 bes'4 |  % 21
  % --- Episode 3
  f''4. g''16 f''16 e''2~ |  % 22
  e''4. f''16 e''16 d''2~ |  % 23
  % --- Dominant pedal
  d''4. e''16 d''16 cis''2 |  % 24
  % --- Stretto: soprano, then alto two beats later
  d''4 cis''4 bes''4~ bes''16 a''16 g''16 f''16 |  % 25
  e''8 f''16 g''16 f''8 e''16 d''16 e''8 cis''8 d''4 |  % 26
  r8 a''8 g''8 f''16 e''16 f''8 e''16 d''16 e''8 cis''8 |  % 27
  % --- Stretto: pedal, then soprano two beats later
  d''8 r8 r4 d''4 cis''4 |  % 28
  bes''4~ bes''16 a''16 g''16 f''16 e''8 f''16 g''16 f''8 e''16 d''16 |  % 29
  % --- Last entry (alto) over the tonic pedal
  e''8 cis''8 d''4 d''4 g''4 |  % 30
  f''2 g''4~ g''8 f''8 |  % 31
  e''4 f''4 g''2 |  % 32
  % --- Tierce de Picardie
  fis''1\fermata \bar "|."  % 33
}

alto = {
  \global
  % --- Subject (soprano)
  R1 |  % 1
  R1 |  % 2
  % --- Answer (alto), countersubject 1 (soprano)
  a'4 gis'4 f''4~ f''16 e''16 d''16 c''16 |  % 3
  b'8 c''16 d''16 c''8 b'16 a'16 b'8 gis'8 a'4 |  % 4
  % --- Codetta
  a'8 c''8 bes'8 g'8 a'8 f'8 g'4 |  % 5
  % --- Subject (tenor)
  f'8 g'8 a'8 b'16 cis''16 d''16 cis''16 d''8~ d''4 |  % 6
  cis''8 a'8 d''8 bes'8 g'8 a'16 g'16 f'4 |  % 7
  % --- Answer (pedal)
  a'4 d''4 c''2 |  % 8
  d''4~ d''8 c''8 b'4 c''4 |  % 9
  % --- Episode 1
  a'4. g'8 f'8 g'16 a'16 g'8 f'16 e'16 |  % 10
  f'2. e'4 |  % 11
  % --- Subject in F major (alto)
  f'4 e'4 d''4~ d''16 c''16 bes'16 a'16 |  % 12
  g'8 a'16 bes'16 a'8 g'16 f'16 g'8 e'8 f'4 |  % 13
  % --- Answer in C major (pedal)
  e'8 f'8 g'8 a'16 b'16 c''16 b'16 c''8~ c''4 |  % 14
  b'8 g'8 c''8 a'8 f'8 g'16 f'16 e'4~ |  % 15
  % --- Episode 2
  e'4 g'8 e'8 f'8 g'8 a'8 bes'16 c''16 |  % 16
  d''8 c''8 bes'8 a'8 g'8 f'8 ees'8 c'8 |  % 17
  % --- Subject in B flat major (soprano)
  bes4 ees'4 d'2 |  % 18
  ees'4~ ees'8 d'8 c'4 d'4 |  % 19
  % --- Subject in G minor (pedal)
  d'2 ees'8 g'8 bes'8 d''8 |  % 20
  a'4 g'4 ees'8 d'8~ d'4 |  % 21
  % --- Episode 3
  bes'2.~ bes'8 c''16 bes'16 |  % 22
  a'2.~ a'8 bes'16 a'16 |  % 23
  % --- Dominant pedal
  g'2.~ g'8 a'16 g'16 |  % 24
  % --- Stretto: soprano, then alto two beats later
  f'4 r4 d'4 cis'4 |  % 25
  bes'4~ bes'16 a'16 g'16 f'16 e'8 f'16 g'16 f'8 e'16 d'16 |  % 26
  e'8 cis'8 d'4 a'8 f'8 g'4 |  % 27
  % --- Stretto: pedal, then soprano two beats later
  f'4 e'4 f'4 g'4 |  % 28
  g'4~ g'8 f'8 a'2 |  % 29
  % --- Last entry (alto) over the tonic pedal
  g'4 f'4 d'4 cis'4 |  % 30
  bes'4~ bes'16 a'16 g'16 f'16 e'8 f'16 g'16 f'8 e'16 d'16 |  % 31
  e'8 cis'8 d'4 d'4 cis'4 |  % 32
  % --- Tierce de Picardie
  d'1\fermata \bar "|."  % 33
}

tenor = {
  \global
  % --- Subject (soprano)
  \clef bass R1 |  % 1
  R1 |  % 2
  % --- Answer (alto), countersubject 1 (soprano)
  R1 |  % 3
  R1 |  % 4
  % --- Codetta
  R1 |  % 5
  % --- Subject (tenor)
  \clef treble d'4 cis'4 bes'4~ bes'16 a'16 g'16 f'16 |  % 6
  e'8 f'16 g'16 f'8 e'16 d'16 e'8 cis'8 d'4 |  % 7
  % --- Answer (pedal)
  c'8 d'8 e'8 fis'16 gis'16 a'16 gis'16 a'8~ a'4 |  % 8
  gis'8 e'8 a'8 f'8 d'8 e'16 d'16 c'4 |  % 9
  % --- Episode 1
  \clef bass cis'4 d'4 b4 c'4 |  % 10
  a4 bes4 bes8 c'16 d'16 c'4 |  % 11
  % --- Subject in F major (alto)
  f4 c'4 bes8 d'8 a8 f8 |  % 12
  c'8 g8 a8 d'8 c'8 c8 f4 |  % 13
  % --- Answer in C major (pedal)
  g4 d'4 e'8 c'8 g'4 |  % 14
  g4 g8 c'8 a8 d'8 c'4 |  % 15
  % --- Episode 2
  c8 d8 e8 f16 g16 a8 g8 f8 ees8 |  % 16
  d4 ees8 g8 f8 a8 f8 ees8 |  % 17
  % --- Subject in B flat major (soprano)
  d8 ees8 f8 g16 a16 bes16 a16 bes8~ bes4 |  % 18
  a8 f8 bes8 g8 ees8 f16 ees16 d4 |  % 19
  % --- Subject in G minor (pedal)
  g4 c'4 bes2 |  % 20
  c'4~ c'8 bes8 a4 bes4 |  % 21
  % --- Episode 3
  g16 a16 bes16 a16 g16 f16 e16 d16 c16 d16 e16 g16 c'16 bes16 a16 g16 |  % 22
  f16 g16 a16 g16 f16 e16 d16 c16 bes,16 c16 d16 f16 bes16 a16 g16 a16 |  % 23
  % --- Dominant pedal
  bes16 a16 g16 a16 bes16 d'16 c'16 bes16 a8 g8 f8 e8 |  % 24
  % --- Stretto: soprano, then alto two beats later
  d4 e4 g8 bes8 g8 e8 |  % 25
  cis'4 d'4 a2 |  % 26
  g4 f2 a4 |  % 27
  % --- Stretto: pedal, then soprano two beats later
  f8 g8 a8 b16 cis'16 d'16 cis'16 d'8 e'4 |  % 28
  cis'4 d'4 a2 |  % 29
  % --- Last entry (alto) over the tonic pedal
  a2 f4 e4 |  % 30
  f4 a4 bes4 a4 |  % 31
  g4 f4 bes2 |  % 32
  % --- Tierce de Picardie
  a1\fermata \bar "|."  % 33
}

pedal = {
  \global
  % --- Subject (soprano)
  R1 |  % 1
  R1 |  % 2
  % --- Answer (alto), countersubject 1 (soprano)
  R1 |  % 3
  R1 |  % 4
  % --- Codetta
  R1 |  % 5
  % --- Subject (tenor)
  R1 |  % 6
  R1 |  % 7
  % --- Answer (pedal)
  a,4 gis,4 f4~ f16 e16 d16 c16 |  % 8
  b,8 c16 d16 c8 b,16 a,16 b,8 gis,8 a,4 |  % 9
  % --- Episode 1
  a,4 d4 g,4 c4 |  % 10
  f4 bes,4 g,4 c4 |  % 11
  % --- Subject in F major (alto)
  R1 |  % 12
  R1 |  % 13
  % --- Answer in C major (pedal)
  c4 b,4 a4~ a16 g16 f16 e16 |  % 14
  d8 e16 f16 e8 d16 c16 d8 b,8 c4 |  % 15
  % --- Episode 2
  R1 |  % 16
  R1 |  % 17
  % --- Subject in B flat major (soprano)
  R1 |  % 18
  R1 |  % 19
  % --- Subject in G minor (pedal)
  g,4 fis,4 ees4~ ees16 d16 c16 bes,16 |  % 20
  a,8 bes,16 c16 bes,8 a,16 g,16 a,8 fis,8 g,4 |  % 21
  % --- Episode 3
  R1 |  % 22
  R1 |  % 23
  % --- Dominant pedal
  r2 a,2~ |  % 24
  % --- Stretto: soprano, then alto two beats later
  a,1~ |  % 25
  a,1~ |  % 26
  a,1 |  % 27
  % --- Stretto: pedal, then soprano two beats later
  d4 cis4 bes4~ bes16 a16 g16 f16 |  % 28
  e8 f16 g16 f8 e16 d16 e8 cis8 d4 |  % 29
  % --- Last entry (alto) over the tonic pedal
  a,4 d2.~ |  % 30
  d1~ |  % 31
  d1~ |  % 32
  % --- Tierce de Picardie
  d1\fermata \bar "|."  % 33
}

\score {
  \simultaneous {
    \new PianoStaff \with {
      instrumentName = "Man."
    } \simultaneous {
      \new Staff = "upper" \with {
        midiInstrument = "church organ"
      } \simultaneous {
        \new Voice = "soprano" { \clef treble \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      }
      \new Staff = "lower" \with {
        midiInstrument = "church organ"
      } {
        \new Voice = "tenor" { \tenor }
      }
    }
    \new Staff = "pedal" \with {
      instrumentName = "Ped."
      midiInstrument = "church organ"
    } {
      \new Voice = "bass" { \clef bass \pedal }
    }
  }
  \layout { }
  \midi {
    \tempo 4 = 69
  }
}
