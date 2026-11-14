\version "2.26.0"
\language "nederlands"

% VALKYRIES FUGUE -- a new fugue on a theme by Richard Wagner.
% Self-contained LilyPond source. Absolute pitches: c' = middle C.
% 80 bars in 9/8 plus an eighth-note anacrusis; approximately 3 min 25 sec.
% Four contrapuntal voices: soprano, alto, tenor, and independent pedal.
% The subject preserves the opening three bars of the Ride's principal theme;
% bar 4 is a new cadential continuation. Answers are real, at the fifth.
% Reference for the melodic incipit:
% https://www.flutetunes.com/tunes/wagner-ride-of-the-valkyries.pdf
%
% FORM: 1-16 exposition A-S-T-P; 17-24 sequential episode;
% 25-32 D-major and E-minor entries; 33-40 sequential episode;
% 41-48 F-sharp-minor and B-minor entries; 49-56 lighter manual exchanges;
% 57-64 stretto A-S-T at two-bar distances (alto cadence displaced down an octave);
% 65-72 dominant preparation;
% 73-76 augmented subject head in the pedal; 77-80 coda with Picardy third.
%
% BUILD: lilypond -o output/pdf/valkyries-fugue/valkyries-fugue valkyries-fugue.ly
% Compilation produces both PDF and MIDI. No external includes are required.

\header {
  title = "Valkyries Fugue"
  subtitle = "Fugue in B minor for organ, a 4 voci"
  subsubtitle = "On the principal theme from Ride of the Valkyries"
  composer = "Theme: Richard Wagner (1813-1883)"
  arranger = "New fugue: Codex"
  tagline = ##f
}

#(set-global-staff-size 17.5)
\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 14\mm
  right-margin = 14\mm
  indent = 14\mm
  short-indent = 6\mm
  ragged-last-bottom = ##f
  system-system-spacing.basic-distance = #18
  system-system-spacing.minimum-distance = #14
  system-system-spacing.padding = #3
  top-markup-spacing.basic-distance = #4
  markup-system-spacing.basic-distance = #10
  print-page-number = ##t
}

global = {
  \key b \minor
  \time 9/8
  \set Timing.beatStructure = 3,3,3
  \partial 8
}

structure = {
  \tempo "Allegro risoluto" 4. = 72
  s8
  \mark \markup \box "A"
  s8*36 \break s8*36 \break s8*36 \break s8*36 \pageBreak
  \mark \markup \box "B"
  s8*36 \break s8*36 \break
  \mark \markup \box "C"
  s8*36 \break s8*36 \pageBreak
  \mark \markup \box "D"
  s8*36 \break s8*36 \break
  \mark \markup \box "E"
  s8*36 \break s8*36 \pageBreak
  \mark \markup \box "F"
  s8*36 \break s8*36 \break
  \mark \markup { \box "G" \hspace #1 \italic "Stretto" }
  s8*36 \break s8*36 \pageBreak
  \mark \markup \box "H"
  s8*36 \break s8*36 \break
  \mark \markup { \box "I" \hspace #1 \italic "Augmentazione" }
  s8*36 \break
  s8*18
  \tempo "Poco allargando" 4. = 66
  s8*9
  \tempo 4. = 60
  s8*9
  \bar "|."
}

soprano = \absolute {
  r8 |
  R1*9/8 | % 1
  R1*9/8 | % 2
  R1*9/8 | % 3
  r2. r4 cis'8 | % 4
  \barNumberCheck #5
  fis'8.^\markup \tiny \italic "Risposta" cis'16 fis'8 a'4. fis'4. | % 5
  a'8. fis'16 a'8 cis''4. a'4. | % 6
  cis''8. a'16 cis''8 e''4. e'4. | % 7
  a'8. e'16 a'8 gis'8 fis'8 eis'8 fis'4. | % 8
  \barNumberCheck #9
  fis'4. fis'8 e'8 d'8 fis'4. | % 9
  fis'4. d'4. b4. | % 10
  a'4. fis'4. fis'4. | % 11
  fis'4. e'4. fis'4. | % 12
  \barNumberCheck #13
  a'4. cis''4. a'8 gis'8 fis'8 | % 13
  cis''4. b'8 a'8 gis'8 a'4. | % 14
  cis''4. b'8 a'8 gis'8 a'4. | % 15
  a'4. gis'8 a'8 b'8 cis''4. | % 16
  \barNumberCheck #17
  cis''4.\mf b'8 a'8 gis'8 a'8 fis'8 a'8 | % 17
  d''8 cis''8 b'8 fis''8. d''16 fis''8 fis''8 e''8 d''8 | % 18
  b'4. a'8 g'8 fis'8 g'8 e'8 g'8 | % 19
  cis''8 b'8 a'8 e''8. cis''16 e''8 e''8 d''8 cis''8 | % 20
  \barNumberCheck #21
  a'4. g'8 fis'8 e'8 fis'8 d'8 fis'8 | % 21
  b'8 a'8 g'8 d''8. b'16 d''8 d''8 c''8 b'8 | % 22
  g'4. fis'8 e'8 d'8 e'8 cis'8 e'8 | % 23
  ais'8 gis'8 fis'8 cis''8. ais'16 cis''8 cis''8 b'8 a'8 | % 24
  \barNumberCheck #25
  d''8.\f^\markup \tiny \italic "Soggetto (D major)" a'16 d''8 fis''4. d''4. | % 25
  fis''8. d''16 fis''8 a''4. fis''4. | % 26
  a''8. fis''16 a''8 cis'''4. cis''4. | % 27
  fis''8. cis''16 fis''8 e''8 d''8 cis''8 d''4. | % 28
  \barNumberCheck #29
  b'4. b'8 a'8 g'8 b'4. | % 29
  b'4. g'4. e'4. | % 30
  d''4. b'4. b'4. | % 31
  b'4. a'4. b'4. | % 32
  \barNumberCheck #33
  g'8\mf fis'8 e'8 b'8. g'16 b'8 b'8 a'8 g'8 | % 33
  e''4. d''8 c''8 b'8 c''8 a'8 c''8 | % 34
  fis'8 e'8 d'8 a'8. fis'16 a'8 a'8 g'8 fis'8 | % 35
  d''4. c''8 b'8 a'8 b'8 g'8 b'8 | % 36
  \barNumberCheck #37
  e'8 d'8 cis'8 g'8. e'16 g'8 g'8 fis'8 e'8 | % 37
  cis''4. b'8 ais'8 gis'8 ais'8 fis'8 ais'8 | % 38
  d''8 cis''8 b'8 fis''8. d''16 fis''8 fis''8 e''8 d''8 | % 39
  gis'4. fis'8 eis'8 dis'8 eis'8 cis'8 eis'8 | % 40
  \barNumberCheck #41
  a'8\f gis'8 fis'8 e'8 fis'8 gis'8 a'4. | % 41
  fis'4. e'8 d'8 cis'8 d'8 cis'8 b8 | % 42
  a'8 gis'8 fis'8 e'8 fis'8 gis'8 a'4. | % 43
  e'4. eis'8 fis'8 gis'8 a'4. | % 44
  \barNumberCheck #45
  d''4. fis''4. d''8 cis''8 b'8 | % 45
  fis''4. e''8 d''8 cis''8 d''4. | % 46
  fis''4. e''8 d''8 cis''8 d''4. | % 47
  d''4. cis''8 d''8 e''8 fis''4. | % 48
  \barNumberCheck #49
  b'8\mp a'8 g'8 d''8. b'16 d''8 g'4. | % 49
  a'4. fis'8 g'8 a'8 d'4. | % 50
  b'4. a'8 g'8 fis'8 g'8 e'8 g'8 | % 51
  d''8 cis''8 b'8 fis''8. d''16 fis''8 fis''8 e''8 d''8 | % 52
  \barNumberCheck #53
  e'8 d'8 c'8 g'8. e'16 g'8 c'4. | % 53
  e''4. c''8 d''8 e''8 a'4. | % 54
  g'4. fis'8 e'8 d'8 e'8 cis'8 e'8 | % 55
  ais'8 gis'8 fis'8 cis''8. ais'16 cis''8 cis''8 b'8 ais'8 | % 56
  \barNumberCheck #57
  d''8\f cis''8 b'8 a'8 b'8 cis''8 d''4. | % 57
  b'4. a'8 g'8 fis'8 g'8 fis'8 fis'8 | % 58
  b'8.^\markup \tiny \italic "Soggetto" fis'16 b'8 d''4. b'4. | % 59
  d''8. b'16 d''8 fis''4. d''4. | % 60
  \barNumberCheck #61
  fis''8. d''16 fis''8 a''4. a'4. | % 61
  d''8. a'16 d''8 cis''8 b'8 ais'8 b'4. | % 62
  fis''8 e''8 d''8 cis''8 d''8 e''8 fis''4. | % 63
  e''4. cis''4. d''4. | % 64
  \barNumberCheck #65
  g''8\f fis''8 e''8 b''8. g''16 b''8 a''8 g''8 fis''8 | % 65
  g''4. fis''8 e''8 d''8 e''4. | % 66
  e''4. g''8 e''8 d''8 c''4. | % 67
  cis''8 d''8 e''8 fis''4. eis''8 fis''8 gis''8 | % 68
  \barNumberCheck #69
  fis''8. d''16 fis''8 b''4. a''8 g''8 fis''8 | % 69
  g''4. fis''8 e''8 d''8 cis''4. | % 70
  e''8 d''8 cis''8 ais'8 b'8 cis''8 e''4. | % 71
  cis''4. ais'4. cis''4. | % 72
  \barNumberCheck #73
  d''8\ff cis''8 b'8 cis''8 d''8 e''8 fis''4. | % 73
  fis''8. d''16 fis''8 b''4. a''8 g''8 fis''8 | % 74
  fis''4. e''8 d''8 cis''8 d''8 cis''8 b'8 | % 75
  d''8 e''8 fis''8 a''4. fis''4. | % 76
  \barNumberCheck #77
  g''8 fis''8 e''8 d''4. cis''8 d''8 e''8 | % 77
  fis''4. e''4. cis''4. | % 78
  dis''8\ff e''8 fis''8 b''4. ais''8 gis''8 fis''8 | % 79
  fis''2.~ fis''4.\fermata | % 80
  \barNumberCheck #81
}

alto = \absolute {
  \change Staff = "lower" \voiceOne fis8\mf |
  b8.^\markup \tiny \italic "Soggetto" fis16 b8 d'4. b4. | % 1
  d'8. b16 d'8 fis'4. d'4. | % 2
  fis'8. d'16 fis'8 a'4. a4. | % 3
  d'8. a16 d'8 cis'8 b8 ais8 b4. | % 4
  \barNumberCheck #5
  a8 gis8 fis8 e8 fis8 gis8 a4. | % 5
  fis4. e8 d8 cis8 d8 cis8 b,8 | % 6
  a8 gis8 fis8 e8 fis8 gis8 a4. | % 7
  e4. eis8 fis8 gis8 a4. | % 8
  \barNumberCheck #9
  d'8 cis'8 b8 a8 b8 cis'8 d'4. | % 9
  b4. a8 g8 fis8 g8 fis8 e8 | % 10
  d'8 cis'8 b8 a8 b8 cis'8 d'4. | % 11
  a4. ais8 b8 cis'8 d'4. | % 12
  \barNumberCheck #13
  cis'4. cis'8 b8 a8 cis'4. | % 13
  cis'4. a4. fis4. | % 14
  \change Staff = "upper" \voiceTwo
  e'4. cis'4. cis'4. | % 15
  \change Staff = "lower" \voiceOne
  cis'4. b4. cis'4. | % 16
  \barNumberCheck #17
  a8 gis8 fis8 cis'8. a16 cis'8 fis4. | % 17
  \change Staff = "upper" \voiceTwo
  fis'4. d'8 e'8 fis'8 b4. | % 18
  \change Staff = "lower" \voiceOne
  g8 fis8 e8 b8. g16 b8 e4. | % 19
  e'4. cis'8 d'8 e'8 a4. | % 20
  \barNumberCheck #21
  fis8 e8 d8 a8. fis16 a8 d4. | % 21
  d'4. b8 c'8 d'8 g4. | % 22
  e8 d8 cis8 g8. e16 g8 cis4. | % 23
  cis'4. ais8 b8 cis'8 fis4. | % 24
  \barNumberCheck #25
  \change Staff = "upper" \voiceTwo
  fis'8 e'8 d'8 cis'8 d'8 e'8 fis'4. | % 25
  \change Staff = "lower" \voiceOne
  d'4. cis'8 b8 a8 b8 a8 g8 | % 26
  \change Staff = "upper" \voiceTwo
  fis'8 e'8 d'8 cis'8 d'8 e'8 fis'4. | % 27
  cis'4. cis'8 d'8 e'8 fis'4. | % 28
  \barNumberCheck #29
  g'8 fis'8 e'8 d'8 e'8 fis'8 g'4. | % 29
  \change Staff = "lower" \voiceOne
  e'4. d'8 c'8 b8 c'8 b8 a8 | % 30
  \change Staff = "upper" \voiceTwo
  g'8 fis'8 e'8 d'8 e'8 fis'8 g'4. | % 31
  d'4. dis'8 e'8 fis'8 g'4. | % 32
  \barNumberCheck #33
  \change Staff = "lower" \voiceOne
  b4. g8 a8 b8 e4. | % 33
  c'8 b8 a8 e'8. c'16 e'8 a4. | % 34
  a4. fis8 g8 a8 d4. | % 35
  b8 a8 g8 d'8. b16 d'8 g4. | % 36
  \barNumberCheck #37
  g4. e8 fis8 g8 cis4. | % 37
  ais8 gis8 fis8 cis'8. ais16 cis'8 fis4. | % 38
  \change Staff = "upper" \voiceTwo
  fis'4. d'8 e'8 fis'8 b4. | % 39
  \change Staff = "lower" \voiceOne
  eis8 dis8 cis8 gis8. eis16 gis8 cis4 cis8 | % 40
  \barNumberCheck #41
  fis8.^\markup \tiny \italic "Soggetto (F-sharp minor)" cis16 fis8 a4. fis4. | % 41
  a8. fis16 a8 cis'4. a4. | % 42
  cis'8. a16 cis'8 e'4. e4. | % 43
  a8. e16 a8 gis8 fis8 eis8 fis4. | % 44
  \barNumberCheck #45
  \change Staff = "upper" \voiceTwo
  fis'4. fis'8 g'8 a'8 fis'4. | % 45
  fis'4. d''4. b'4. | % 46
  a'4. fis'4. fis'4. | % 47
  fis'4. e'4. fis'4. | % 48
  \barNumberCheck #49
  \change Staff = "lower" \voiceOne
  d'4. c'8 b8 a8 b8 g8 b8 | % 49
  fis8 e8 d8 a8. fis16 a8 a8 g8 fis8 | % 50
  g8 fis8 e8 b8. g16 b8 e4. | % 51
  \change Staff = "upper" \voiceTwo
  fis'4. d'8 e'8 fis'8 b4. | % 52
  \barNumberCheck #53
  \change Staff = "lower" \voiceOne
  g4. f8 e8 d8 e8 c8 e8 | % 53
  c'8 b8 a8 e'8. c'16 e'8 e'8 d'8 c'8 | % 54
  e8 d8 cis8 g8. e16 g8 cis4. | % 55
  cis'4. ais8 b8 cis'8 fis4 fis8 | % 56
  \barNumberCheck #57
  b8.^\markup \tiny \italic "Soggetto" fis16 b8 d'4. b4. | % 57
  \change Staff = "upper" \voiceTwo
  d'8. b16 d'8 fis'4. d'4. | % 58
  fis'8. d'16 fis'8 a'4. a4. | % 59
  \change Staff = "lower" \voiceOne
  d'8. a16 d'8 cis'8 b8 ais8 b,4. | % 60
  \barNumberCheck #61
  \change Staff = "upper" \voiceTwo
  d''8 cis''8 b'8 a'8 b'8 cis''8 d''4. | % 61
  b'4. a'8 g'8 fis'8 g'8 fis'8 e'8 | % 62
  d''8 cis''8 b'8 a'8 b'8 cis''8 d''4. | % 63
  a'4. ais'8 b'8 cis''8 d''4. | % 64
  \barNumberCheck #65
  b'4. g'4. e'8 fis'8 g'8 | % 65
  b'8 a'8 g'8 a'4. g'8 fis'8 e'8 | % 66
  g'8 a'8 g'8 e'4. e'4. | % 67
  g'4. ais'4. b'8 ais'8 gis'8 | % 68
  \barNumberCheck #69
  b'4. a'8 g'8 fis'8 d''4. | % 69
  b'8 a'8 g'8 g'4. e'8 fis'8 g'8 | % 70
  ais'4. g'8 fis'8 e'8 cis'4. | % 71
  fis'8 e'8 cis'8 e'4. fis'4. | % 72
  \barNumberCheck #73
  d''4. cis''8 b'8 ais'8 b'4. | % 73
  b'8 cis''8 d''8 fis''4. d''4. | % 74
  d''8 cis''8 b'8 a'4. fis'8 g'8 a'8 | % 75
  a'4. d''8 cis''8 b'8 a'4. | % 76
  \barNumberCheck #77
  b'4. b'8 a'8 g'8 g'4. | % 77
  b'4. ais'4. ais'4. | % 78
  fis'4. dis''8 cis''8 b'8 dis''4. | % 79
  dis''2.~ dis''4.\fermata | % 80
  \barNumberCheck #81
}

tenor = \absolute {
  s8 |
  \voiceTwo
  s1*9/8 | % 1
  \voiceTwo
  s1*9/8 | % 2
  \voiceTwo
  s1*9/8 | % 3
  \voiceTwo
  s1*9/8 | % 4
  \barNumberCheck #5
  \voiceTwo
  s1*9/8 | % 5
  \voiceTwo
  s1*9/8 | % 6
  \voiceTwo
  s1*9/8 | % 7
  \voiceTwo
  r2. r4 fis,8 | % 8
  \barNumberCheck #9
  \voiceTwo
  b,8.^\markup \tiny \italic "Soggetto" fis,16 b,8 d4. b,4. | % 9
  \voiceTwo
  d8. b,16 d8 fis4. d4. | % 10
  \voiceTwo
  fis8. d16 fis8 a4. a,4. | % 11
  \voiceTwo
  d8. a,16 d8 cis8 b,8 ais,8 b,4. | % 12
  \barNumberCheck #13
  \voiceTwo
  a8 gis8 fis8 e8 fis8 gis8 a4. | % 13
  \voiceTwo
  fis4. e8 d8 cis8 d8 cis8 b,8 | % 14
  \oneVoice
  a8 gis8 fis8 e8 fis8 gis8 a4. | % 15
  \voiceTwo
  e4. eis8 fis8 gis8 a4. | % 16
  \barNumberCheck #17
  \voiceTwo
  cis4. fis8 e8 dis8 cis4. | % 17
  \oneVoice
  b8 cis'8 d'8 fis4. d'8 cis'8 b8 | % 18
  \voiceTwo
  b,4. e8 d8 cis8 b,4. | % 19
  \voiceTwo
  a8 b8 cis'8 e4. cis'8 b8 a8 | % 20
  \barNumberCheck #21
  \voiceTwo
  a,4. d8 cis8 b,8 a,4. | % 21
  \voiceTwo
  g8 a8 b8 d4. b8 a8 g8 | % 22
  \voiceTwo
  g,4. cis8 b,8 a,8 g,4. | % 23
  \voiceTwo
  fis8 gis8 ais8 cis4. ais8 gis8 fis8 | % 24
  \barNumberCheck #25
  \oneVoice
  a4. a8 g8 fis8 a4. | % 25
  \voiceTwo
  a4. fis4. d4. | % 26
  \oneVoice
  cis'4. a4. a4. | % 27
  \oneVoice
  a4. g4. a4 b,8 | % 28
  \barNumberCheck #29
  \oneVoice
  e8.^\markup \tiny \italic "Soggetto (E minor)" b,16 e8 g4. e4. | % 29
  \voiceTwo
  g8. e16 g8 b4. g4. | % 30
  \oneVoice
  b8. g16 b8 d'4. d4. | % 31
  \oneVoice
  g8. d16 g8 fis8 e8 dis8 e4. | % 32
  \barNumberCheck #33
  \voiceTwo
  e8 fis8 g8 b,4. g8 fis8 e8 | % 33
  \voiceTwo
  e4. a8 g8 fis8 e4. | % 34
  \voiceTwo
  d8 e8 fis8 a,4. fis8 e8 d8 | % 35
  \voiceTwo
  d4. g8 fis8 e8 d4. | % 36
  \barNumberCheck #37
  \voiceTwo
  cis8 d8 e8 g,4. e8 d8 cis8 | % 37
  \voiceTwo
  cis4. fis8 e8 dis8 cis4. | % 38
  \oneVoice
  b8 cis'8 d'8 fis4. d'8 cis'8 b8 | % 39
  \voiceTwo
  gis,4. cis8 b,8 ais,8 gis,4. | % 40
  \barNumberCheck #41
  \voiceTwo
  cis4. cis8 b,8 a,8 cis4. | % 41
  \voiceTwo
  cis4. a,4. fis,4. | % 42
  \voiceTwo
  e4. cis4. cis4. | % 43
  \voiceTwo
  cis4. b,4. cis4. | % 44
  \barNumberCheck #45
  \oneVoice
  d8 cis8 b,8 a,8 b,8 cis8 d4. | % 45
  \oneVoice
  b,4. a,8 g,8 fis,8 g,8 fis,8 e,8 | % 46
  \oneVoice
  d8 cis8 b,8 a,8 b,8 cis8 d4. | % 47
  \oneVoice
  a,4. ais,8 b,8 cis8 d4. | % 48
  \barNumberCheck #49
  \voiceTwo
  fis4. e8 fis8 g8 fis4 r8 | % 49
  \voiceTwo
  d8 e8 fis8 a,4. fis8 e8 d8 | % 50
  \voiceTwo
  b,4. e8 d8 cis8 b,4. | % 51
  \oneVoice
  b8 cis'8 d'8 fis4. d'8 cis'8 b8 | % 52
  \barNumberCheck #53
  \voiceTwo
  g,4. c8 b,8 a,8 g,4. | % 53
  \voiceTwo
  a8 b8 c'8 e4. c'8 b8 a8 | % 54
  \voiceTwo
  g,4. cis8 b,8 a,8 g,4. | % 55
  \voiceTwo
  fis8 gis8 ais8 cis4. ais8 gis8 fis8 | % 56
  \barNumberCheck #57
  \voiceTwo
  fis4. fis8 e8 d8 fis4. | % 57
  \oneVoice
  fis4. d4. b,4. | % 58
  \oneVoice
  a4. fis4. fis4. | % 59
  \voiceTwo
  fis4. e4. fis4 fis,8 | % 60
  \barNumberCheck #61
  \oneVoice
  b,8.^\markup \tiny \italic "Soggetto" fis,16 b,8 d4. b,4. | % 61
  \oneVoice
  d8. b,16 d8 fis4. d4. | % 62
  \oneVoice
  fis8. d16 fis8 a4. a,4. | % 63
  \oneVoice
  d8. a,16 d8 cis8 b,8 ais,8 b,4. | % 64
  \barNumberCheck #65
  \oneVoice
  e'8 d'8 b8 e'4. b4. | % 65
  \oneVoice
  d'4. d'8 cis'8 b8 b4. | % 66
  \oneVoice
  c'4. c'8 b8 a8 g4. | % 67
  \oneVoice
  e'8 d'8 cis'8 cis'4. cis'4. | % 68
  \barNumberCheck #69
  \oneVoice
  d'4. fis'8 e'8 d'8 b4. | % 69
  \oneVoice
  e'4. b4. ais4. | % 70
  \oneVoice
  cis'8 b8 ais8 cis'4. ais4. | % 71
  \oneVoice
  ais4. cis'4. e'4. | % 72
  \barNumberCheck #73
  \oneVoice
  fis4. fis8 e8 cis8 d4. | % 73
  \oneVoice
  fis8 e8 d8 fis4. b4. | % 74
  \oneVoice
  fis'4. fis'8 e'8 d'8 b4. | % 75
  \oneVoice
  fis'8 e'8 d'8 fis'4. d'4. | % 76
  \barNumberCheck #77
  \oneVoice
  g4. e'4. e'8 d'8 cis'8 | % 77
  \oneVoice
  cis'4. cis'4. e'4. | % 78
  \oneVoice
  b4. fis'4. b4. | % 79
  \oneVoice
  b2.~ b4.\fermata | % 80
  \barNumberCheck #81
}

pedal = \absolute {
  r8 |
  R1*9/8 | % 1
  R1*9/8 | % 2
  R1*9/8 | % 3
  R1*9/8 | % 4
  \barNumberCheck #5
  R1*9/8 | % 5
  R1*9/8 | % 6
  R1*9/8 | % 7
  R1*9/8 | % 8
  \barNumberCheck #9
  R1*9/8 | % 9
  R1*9/8 | % 10
  R1*9/8 | % 11
  r2. r4 cis,8 | % 12
  \barNumberCheck #13
  fis,8.\f^\markup \tiny \italic "Risposta" cis,16 fis,8 a,4. fis,4. | % 13
  a,8. fis,16 a,8 cis4. a,4. | % 14
  cis8. a,16 cis8 e4. e,4. | % 15
  a,8. e,16 a,8 gis,8 fis,8 eis,8 fis,4. | % 16
  \barNumberCheck #17
  fis,4. fis,4. fis,4. | % 17
  b,4. d4. fis4. | % 18
  e,4. e,4. e,4. | % 19
  a,4. cis4. e4. | % 20
  \barNumberCheck #21
  d,4. d,4. d,4. | % 21
  g,4. b,4. d4. | % 22
  cis,4. cis,4. cis,4. | % 23
  fis,4. ais,4. cis4. | % 24
  \barNumberCheck #25
  d4. d4. d4. | % 25
  d4. fis4. g4. | % 26
  fis4. fis4. fis4. | % 27
  a,4. a,4. d4. | % 28
  \barNumberCheck #29
  e,4. e,4. e,4. | % 29
  e,4. g,4. a,4. | % 30
  g,4. g,4. g,4. | % 31
  b,4. b,4. e,4. | % 32
  \barNumberCheck #33
  e,4. g,4. b,4. | % 33
  a,4. a,4. a,4. | % 34
  d,4. fis,4. a,4. | % 35
  g,4. g,4. g,4. | % 36
  \barNumberCheck #37
  cis,4. e,4. g,4. | % 37
  fis,4. fis,4. fis,4. | % 38
  b,4. d4. fis4. | % 39
  cis,4. cis,4. cis,4. | % 40
  \barNumberCheck #41
  fis,4. fis,4. fis,4. | % 41
  fis,4. a,4. b,4. | % 42
  a,4. a,4. a,4. | % 43
  cis,4. cis,4. fis,4 fis,8 | % 44
  \barNumberCheck #45
  b,8.\f^\markup \tiny \italic "Soggetto (B minor)" fis,16 b,8 d4. b,4. | % 45
  d8. b,16 d8 fis4. d4. | % 46
  fis8. d16 fis8 a4. a,4. | % 47
  d8. a,16 d8 cis8 b,8 ais,8 b,4. | % 48
  \barNumberCheck #49
  R1*9/8 | % 49
  R1*9/8 | % 50
  R1*9/8 | % 51
  R1*9/8 | % 52
  \barNumberCheck #53
  c,4. c,4. c,4. | % 53
  a,4. c4. e4. | % 54
  cis,4. cis,4. cis,4. | % 55
  fis,4. ais,4. cis4. | % 56
  \barNumberCheck #57
  b,2. b,4. | % 57
  b,4. d4. e4. | % 58
  d4. b,4. fis,4. | % 59
  fis,4. fis,4. b,4. | % 60
  \barNumberCheck #61
  b,2. b,4. | % 61
  fis,4. fis,4. b,4. | % 62
  d2. d4. | % 63
  fis,4. fis,4. b,4. | % 64
  \barNumberCheck #65
  e,4. g,4. b,4. | % 65
  g,4. b,4. e4. | % 66
  e4. e4. e4. | % 67
  fis,2. fis,4. | % 68
  \barNumberCheck #69
  fis,2. fis,4. | % 69
  fis,2. fis,4. | % 70
  fis,2. fis,4. | % 71
  fis,2. r8 fis,4 | % 72
  \barNumberCheck #73
  b,4.^\markup \tiny \italic "Augmentazione" fis,8 b,4 d4.~ | % 73
  d4. b,2. | % 74
  d4. b,8 d4 fis4.~ | % 75
  fis4. d2. | % 76
  \barNumberCheck #77
  e4. g,4. e,4. | % 77
  fis,2. fis,4. | % 78
  b,2. b,4.~ | % 79
  b,2.~ b,4.\fermata | % 80
  \barNumberCheck #81
}

\markup \small \column {
  \line { \bold "Registration:" "Manuals: principals 8' and 4'; Pedal: 16' and 8'." }
  \line { "At C add 2'; at F use the second manual, lighter; at G return to the first." }
  \line { "At I add mixture and a balanced pedal reed. Keep the contrapuntal lines clear." }
  \line { \italic "Firm dotted rhythms; lightly articulate the eighths. Redistribute the inner voice between hands as needed." }
}

\score {
  \new StaffGroup <<
    \new PianoStaff \with { instrumentName = "Man." shortInstrumentName = "M." } <<
      \new Staff = "upper" \with { midiInstrument = "church organ" } <<
        \clef treble
        \new Voice { \global \structure }
        \new Voice = "soprano" { \voiceOne \global \soprano }
        \new Voice = "alto" { \voiceTwo \global \alto }
      >>
      \new Staff = "lower" \with { midiInstrument = "church organ" } <<
        \clef bass
        \new Voice = "tenor" { \global \tenor }
      >>
    >>
    \new Staff = "pedals" \with {
      instrumentName = "Ped." shortInstrumentName = "P."
      midiInstrument = "church organ"
    } { \clef bass \global \pedal }
  >>
  \layout {
    \context { \Score
      \override BarNumber.break-visibility = ##(#f #f #t)
      \override RehearsalMark.self-alignment-X = #LEFT
      \override MetronomeMark.padding = #2.5
    }
    \context { \Staff
      \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #10
      \override VerticalAxisGroup.default-staff-staff-spacing.minimum-distance = #9
      \override VerticalAxisGroup.default-staff-staff-spacing.padding = #2
    }
  }
  \midi { }
}
