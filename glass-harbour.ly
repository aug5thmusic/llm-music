\version "2.26.0"
\language "nederlands"
% GLASS HARBOUR - original instrumental Japanese City Pop.
% 96 fully written bars. All pitches sound as notated, including the saxophone.
% Guitar and bass use octave clefs; MIDI uses sounding pitch throughout.
% Regenerate from scripts/glass-harbour/compose.py, or edit this standalone file.
% Performance: light, even 16ths; sax phrases sing with a relaxed backbeat.
% Piano: warm electric-piano tone, restrained sustain. Guitar: short upstrokes.
% The bridge pulls back to half-time; return to the opening pulse at Last lights.
% Form: Intro 8 / A 16 / B 8 / C 16 / solo 16 / bridge 8 / final chorus 16 / outro 8.
% Compile: lilypond -dno-point-and-click -o output/pdf glass-harbour.ly

\header {
  title = "Glass Harbour"
  subtitle = "Instrumental Japanese City Pop"
  subsubtitle = "Saxophone, electric piano, muted guitar, electric bass and drums"
  composer = "Original composition"
  tagline = ##f
}

#(set-global-staff-size 14)
\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 14\mm
  right-margin = 12\mm
  indent = 18\mm
  short-indent = 9\mm
  ragged-last-bottom = ##f
  print-page-number = ##t
}

global = {
  \key a \major \numericTimeSignature \time 4/4
  s1*64 \key c \major s1*8 \key a \major s1*24
}
timeline = {
  \tempo "Night-drive groove; straight 16ths" 4 = 112
  \mark \markup \box "Intro" s1*8 \bar "||"
  \mark \markup \box "A  Coast road" s1*16 \bar "||"
  \mark \markup \box "B  Rising lights" s1*8 \bar "||"
  \mark \markup \box "C  Glass harbour" s1*16 \bar "||"
  \mark \markup \box "D  Sax solo" s1*16 \bar "||"
  \mark \markup \box "E  Afterglow" s1*8 \bar "||"
  \mark \markup \box "F  Last lights" s1*16 \bar "||"
  \mark \markup \box "Outro" s1*6
  \tempo "Ease back" 4 = 100 s1
  \tempo 4 = 84 s1 \bar "|."
}
systemBreaks = { \repeat unfold 24 { s1*4 \break } }

chExceptionMusic = {
  <c e g b d'>1-\markup \super "maj9"
  <c e g bes d' a'>1-\markup \super "13"
  <c e g bes des'>1-\markup \super "7(b9)"
  <c ees ges bes>1-\markup { "m" \super "7(b5)" }
  <c e g a d'>1-\markup \super "6/9"
}
chExceptions = #(append (sequential-music-to-chord-exceptions chExceptionMusic #t) ignatzekExceptions)

harmony = \chordmode {
  d1:maj9 e1:13 cis1:m7 fis1:7.9- b1:m9 e1:13 a1:maj9 a1:13
  d1:maj9 e1:13 cis1:m7 fis1:m9 b1:m9 e1:13 a1:maj9 a1:13 d1:maj9 d1:m9 cis1:m7 fis1:7.9- b1:m9 e1:13 a1:maj9 cis1:7.9-
  fis1:m9 cis1:m7 d1:maj9 e1:13 fis1:m9 b1:13 b1:m9 e1:13
  d1:maj9 e1:13 cis1:m7 fis1:m9 b1:m9 e1:13 a1:maj9 a1:13 d1:maj9 e1:13 cis1:m7 fis1:7.9- b1:m9 e1:13 a1:maj9 a1:13
  d1:maj9 e1:13 cis1:m7 fis1:m9 b1:m9 e1:13 a1:maj9 a1:13 d1:maj9 d1:m9 cis1:m7 fis1:7.9- b1:m9 e1:13 a1:maj9 a1:13
  d1:m9 g1:13 c1:maj9 c1:maj9 b1:m7.5- e1:7.9- a1:m9 e1:13
  d1:maj9 e1:13 cis1:m7 fis1:m9 b1:m9 e1:13 a1:maj9 a1:13 d1:maj9 e1:13 cis1:m7 fis1:7.9- b1:m9 e1:13 a1:maj9 a1:13
  d1:maj9 d1:m9 cis1:m7 fis1:7.9- b1:m9 e1:13 a1:6.9 a1:6.9
}

lead = {
  % Intro: bars 1-8
  R1 | % 1
  R1 | % 2
  R1 | % 3
  R1 | % 4
  r2 fis'8\mp( a' b' cis'') | % 5
  d''4.( cis''8~ cis''4) b'8( gis') | % 6
  b'8( cis'' e''4) cis''4.( b'8) | % 7
  a'2 r4 cis''8( e'') | % 8
  % A - Coast road: bars 9-24
  r8 fis'8\mp( a' cis''~ cis''4) b'8( a') | % 9
  gis'4. b'8~ b'4 r8 cis''8 | % 10
  e''8( dis'' cis''4) gis'4 r8 b'8 | % 11
  a'2 r4 gis'8( a') | % 12
  fis'8( a' cis''4~ cis''8) b'8( a' fis') | % 13
  gis'4 b'8( cis''~ cis''4) b'8( gis') | % 14
  e'4. fis'8 gis'8( b' cis''4) | % 15
  cis''2 r4 e''8( g'') | % 16
  fis''4 e''8( cis''~ cis''4) a'8( b') | % 17
  c''4.( a'8) f'4 r8 a'8 | % 18
  gis'8( b' cis'' e''~ e''4) dis''8( cis'') | % 19
  ais'4 cis''8( e''~ e''4) g''8( e'') | % 20
  fis''4. e''8 cis''4 b'8( a') | % 21
  gis'8( b' d'' cis''~ cis''4) b'8( gis') | % 22
  a'2 r4 b'8( cis'') | % 23
  eis''4. gis''8 fis''8( eis'' dis'' cis'') | % 24
  % B - Rising lights: bars 25-32
  cis''8\mf( e'' fis''4~ fis''8) e''8 cis''4 | % 25
  e''4. dis''8 cis''4 r8 b'8 | % 26
  a'8( cis'' e'' fis''~ fis''4) e''8( cis'') | % 27
  d''4 cis''8( b'~ b'4) r8 gis'8 | % 28
  a'8( cis'' e'' fis''~ fis''4) gis''8( a'') | % 29
  gis''4 fis''8( dis''~ dis''4) cis''8( b') | % 30
  cis''4\< d''8( e''~ e''4) fis''8( a'') | % 31
  gis''4 fis''8( e'') d''4 r4\! | % 32
  % C - Glass harbour: bars 33-48
  fis''8\f e''8~ e''4 cis''8( a' b' cis'') | % 33
  b'8( cis'' d'' fis''~ fis''4) e''8( d'') | % 34
  e''4. cis''8~ cis''4 b'8( gis') | % 35
  a'2 r8 gis'8( a' cis'') | % 36
  fis''8 e''8~ e''4 cis''8( a' b' cis'') | % 37
  d''4 cis''8( b'~ b'4) gis'8( b') | % 38
  cis''8( e'' b' cis''~ cis''4) a'8( gis') | % 39
  g'4 r4 cis''8( e'' fis'' g'') | % 40
  a''4 fis''8( e''~ e''4) cis''8( e'') | % 41
  gis''4 fis''8( d''~ d''4) cis''8( b') | % 42
  gis'8( b' cis'' e''~ e''4) gis''8( e'') | % 43
  g''4 fis''8( e'') cis''4 ais'8( cis'') | % 44
  fis''4. e''8 d''8( cis'' b' a') | % 45
  gis'4 b'8( d''~ d''4) cis''8( b') | % 46
  cis''2~ cis''8 b'8( a' gis') | % 47
  a'2 r2 | % 48
  % D - Sax solo: bars 49-64
  r8 a'8\mf cis''16( d'' e'' fis'') a''4 fis''8( e'') | % 49
  d''8( b' gis' b') cis''16( d'' e'' fis'') gis''8 r8 | % 50
  gis''4 e''16( dis'' cis'' b') gis'8( b' cis'' e'') | % 51
  fis''4. e''8 cis''4 r8 a'8 | % 52
  b'16( cis'' d'' e'') fis''8 a''8~ a''4 fis''8( e'') | % 53
  d''8( cis'' b' gis') fis'16( gis' b' cis'') d''8 e''8 | % 54
  gis''4 e''8( cis'') b'8( cis'' e'' gis'') | % 55
  g''8( e'' cis'' a') fis'4 r8 g'8 | % 56
  a'8( cis'' e'' fis'') a''8( gis'' fis'' e'') | % 57
  f''4 e''16( d'' c'' a') f'8( a' c'' e'') | % 58
  dis''16( e'' gis'' e'') cis''8 b'8 gis'4 r8 b'8 | % 59
  ais'8( cis'' e'' g'') fis''16( e'' cis'' ais') g'8 e'8 | % 60
  fis'8( a' b' cis'') d''4 cis''16( d'' e'' fis'') | % 61
  gis''8( fis'' e'' d'') cis''8( b' gis' b') | % 62
  cis''8( e'' gis'' e'') b'8( cis'' a'4) | % 63
  g'2\> r2\! | % 64
  % E - Afterglow: bars 65-72
  f''2\p( e''4 d''8 c'') | % 65
  b'2 r4 a'8( b') | % 66
  e''2.( d''8 b') | % 67
  g'2 r2 | % 68
  a'4.( f'8) d''2 | % 69
  b'4 gis'8( b'~ b'4) f''8( e'') | % 70
  e''4. c''8 b'4 a'8( b') | % 71
  gis'4\< b'8( cis'') d''8( e'' fis'' gis'')\! | % 72
  % F - Last lights: bars 73-88
  fis''8\f e''8~ e''4 cis''8( a' b' cis'') | % 73
  b'8( cis'' d'' fis''~ fis''4) e''8( d'') | % 74
  e''4. cis''8~ cis''4 b'8( gis') | % 75
  a'4. cis''8 fis''4 r8 e''8 | % 76
  fis''8 e''8~ e''4 cis''8( a' b' cis'') | % 77
  d''4 cis''8( b'~ b'4) gis'8( b') | % 78
  cis''8( e'' b' cis''~ cis''4) a'8( gis') | % 79
  g''4 e''8( cis'') a'8( cis'' e'' g'') | % 80
  a''4 fis''8( e''~ e''4) cis''8( e'') | % 81
  gis''4 fis''8( d''~ d''4) cis''8( b') | % 82
  gis''8( fis'' e'' cis''~ cis''4) e''16( fis'' gis'' a'') | % 83
  g''4 fis''8( e'') cis''4 ais'8( cis'') | % 84
  fis''4. e''8 d''8( cis'' b' a') | % 85
  gis'4 b'8( d''~ d''4) cis''8( b') | % 86
  cis''8( e'' gis'' a''~ a''2) | % 87
  g''4 e''8( cis'') a'4 r4 | % 88
  % Outro: bars 89-96
  fis''8\mf e''8~ e''4 cis''8( a' b' cis'') | % 89
  c''4 a'8( f'~ f'4) r4 | % 90
  gis'8\>( b' cis'' e''~ e''4) cis''8( b') | % 91
  ais'2 r4 cis''8( e'') | % 92
  fis''4 e''8( cis''~ cis''4) b'8( a') | % 93
  gis'4 b'8( d'') cis''4 b'4\! | % 94
  a'2\p( b'4 cis''4~ | % 95
  cis''1)\fermata | % 96
}

pianoRH = {
  % Intro: bars 1-8
  r2\mp <cis' e' fis' a'>2 | % 1
  r4 <d' fis' gis' cis''>4~ <d' fis' gis' cis''>4 r4 | % 2
  <b e' gis' b'>2. r4 | % 3
  r2 <cis' e' g' ais'>4 r4 | % 4
  r2 <cis' d' fis' a'>2 | % 5
  r4 <d' fis' gis' cis''>4~ <d' fis' gis' cis''>4 r4 | % 6
  <cis' e' gis' b'>2. r4 | % 7
  r2 <cis' fis' g' b'>4 r4 | % 8
  % A - Coast road: bars 9-24
  r8\mp <cis' e' fis' a'>8~ <cis' e' fis' a'>4 r8 <cis' e' fis' a'>8 r4 | % 9
  <d' fis' gis' cis''>4. r8 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 10
  r8 <b e' gis' b'>4 <b e' gis' b'>8~ <b e' gis' b'>4 r4 | % 11
  <cis' e' a'>4 r4 r8 <cis' e' gis' a'>8 a'8( cis''8) | % 12
  r8 <cis' d' fis' a'>8~ <cis' d' fis' a'>4 r8 <cis' d' fis' a'>8 r4 | % 13
  <d' fis' gis' cis''>4. r8 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 14
  r8 <cis' e' gis' b'>4 <cis' e' gis' b'>8~ <cis' e' gis' b'>4 r4 | % 15
  <cis' fis' g' b'>4 r4 r8 <cis' fis' g' b'>8 b'8( cis''8) | % 16
  r8 <cis' e' fis' a'>8~ <cis' e' fis' a'>4 r8 <cis' e' fis' a'>8 r4 | % 17
  <c' e' f' a'>4. r8 r8 <c' e' f' a'>8~ <c' e' f' a'>4 | % 18
  r8 <b e' gis' b'>4 <b e' gis' b'>8~ <b e' gis' b'>4 r4 | % 19
  <cis' e' g' ais'>4 r4 r8 <cis' e' g' ais'>8 ais'8( cis''8) | % 20
  r8 <cis' d' fis' a'>8~ <cis' d' fis' a'>4 r8 <cis' d' fis' a'>8 r4 | % 21
  <d' fis' gis' cis''>4. r8 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 22
  r8 <cis' e' gis' b'>4 <cis' e' gis' b'>8~ <cis' e' gis' b'>4 r4 | % 23
  <d' eis' gis' b'>4 r4 r8 <d' eis' gis' b'>8 b'8( d''8) | % 24
  % B - Rising lights: bars 25-32
  <cis' e' gis' a'>4.\mf r8 <cis' e' gis' a'>4 r4 | % 25
  r8 <b e' gis' b'>4 <b e' gis' b'>8~ <b e' gis' b'>4 r4 | % 26
  <cis' e' fis' a'>4. r8 r8 <e' fis' a' cis''>8~ <e' fis' a' cis''>4 | % 27
  r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 r8 <fis' gis' cis'' d''>8 r4 | % 28
  <cis' e' gis' a'>4. r8 <cis' e' gis' a'>4 r4 | % 29
  r8 <dis' gis' a' cis''>4 <dis' gis' a' cis''>8~ <dis' gis' a' cis''>4 r4 | % 30
  <cis' d' fis' a'>4. r8 r8 <d' fis' a' cis''>8~ <d' fis' a' cis''>4 | % 31
  r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 r8 <fis' gis' cis'' d''>8 r4 | % 32
  % C - Glass harbour: bars 33-48
  r8\mf <cis' e' fis' a'>4 <cis' e' fis' a'>8~ <cis' e' fis' a'>4 <cis' e' fis' a'>8 r8 | % 33
  <d' fis' gis' cis''>4. r8 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 34
  r8 <b e' gis' b'>8~ <b e' gis' b'>4 r8 <e' gis' b' cis''>8 b'8( cis''8) | % 35
  <cis' e' a'>4. r8 <cis' e' gis' a'>4 r4 | % 36
  r8 <cis' d' fis' a'>4 <cis' d' fis' a'>8~ <cis' d' fis' a'>4 <cis' d' fis' a'>8 r8 | % 37
  <d' fis' gis' cis''>4. r8 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 38
  r8 <cis' e' gis' b'>8~ <cis' e' gis' b'>4 r8 <e' gis' b' cis''>8 b'8( cis''8) | % 39
  <cis' fis' g' b'>4. r8 <cis' fis' g' b'>4 r4 | % 40
  r8 <cis' e' fis' a'>4 <cis' e' fis' a'>8~ <cis' e' fis' a'>4 <cis' e' fis' a'>8 r8 | % 41
  <d' fis' gis' cis''>4. r8 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 42
  r8 <b e' gis' b'>8~ <b e' gis' b'>4 r8 <e' gis' b' cis''>8 b'8( cis''8) | % 43
  <cis' e' g' ais'>4. r8 <cis' e' g' ais'>4 r4 | % 44
  r8 <cis' d' fis' a'>4 <cis' d' fis' a'>8~ <cis' d' fis' a'>4 <cis' d' fis' a'>8 r8 | % 45
  <d' fis' gis' cis''>4. r8 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 46
  r8 <cis' e' gis' b'>8~ <cis' e' gis' b'>4 r8 <e' gis' b' cis''>8 b'8( cis''8) | % 47
  <cis' fis' g' b'>4. r8 <cis' fis' g' b'>4 r4 | % 48
  % D - Sax solo: bars 49-64
  r4\mp <cis' e' fis' a'>4. r8 <cis' e' fis' a'>4 | % 49
  <d' fis' gis' cis''>4 r4 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 50
  r8 <b e' gis' b'>8~ <b e' gis' b'>4 r2 | % 51
  r4 <cis' e' gis' a'>4 r8 <cis' e' gis' a'>8 r4 | % 52
  r4 <cis' d' fis' a'>4. r8 <cis' d' fis' a'>4 | % 53
  <d' fis' gis' cis''>4 r4 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 54
  r8 <cis' e' gis' b'>8~ <cis' e' gis' b'>4 r2 | % 55
  r4 <cis' fis' g' b'>4 r8 <cis' fis' g' b'>8 r4 | % 56
  r4 <cis' e' fis' a'>4. r8 <cis' e' fis' a'>4 | % 57
  <c' f' a'>4 r4 r8 <c' e' f' a'>8~ <c' e' f' a'>4 | % 58
  r8 <b e' gis' b'>8~ <b e' gis' b'>4 r2 | % 59
  r4 <cis' e' g' ais'>4 r8 <cis' e' g' ais'>8 r4 | % 60
  r4 <cis' d' fis' a'>4. r8 <cis' d' fis' a'>4 | % 61
  <d' fis' gis' cis''>4 r4 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 62
  r8 <cis' e' gis' b'>8~ <cis' e' gis' b'>4 r2 | % 63
  r4 <cis' fis' g' b'>4 r8 <cis' fis' g' b'>8 r4 | % 64
  % E - Afterglow: bars 65-72
  <c' f' a'>2.\p r4 | % 65
  r4 <b e' f' a'>2. | % 66
  <b d' e' g'>2. r4 | % 67
  r4 <b d' e' g'>2. | % 68
  <d' f' a' b'>2. r4 | % 69
  r4 <d' f' gis' b'>2. | % 70
  <c' e' g' b'>2. r4 | % 71
  r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 r8 <d' fis' gis' cis''>8 r4 | % 72
  % F - Last lights: bars 73-88
  r8\mf <e' fis' a' cis''>4 <e' fis' a' cis''>8~ <e' fis' a' cis''>4 <cis' e' fis' a'>8 r8 | % 73
  <fis' gis' cis'' d''>4. r8 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 74
  r8 <b e' gis' b'>8~ <b e' gis' b'>4 r8 <e' gis' b' cis''>16 cis''16 b'8( cis''8) | % 75
  <e' a' cis''>4. r8 <cis' e' gis' a'>4 r4 | % 76
  r8 <d' fis' a' cis''>4 <d' fis' a' cis''>8~ <d' fis' a' cis''>4 <cis' d' fis' a'>8 r8 | % 77
  <fis' gis' cis'' d''>4. r8 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 78
  r8 <cis' e' gis' b'>8~ <cis' e' gis' b'>4 r8 <e' gis' b' cis''>16 cis''16 b'8( cis''8) | % 79
  <g' b' cis''>4. r8 <cis' fis' g' b'>4 r4 | % 80
  r8 <e' fis' a' cis''>4 <e' fis' a' cis''>8~ <e' fis' a' cis''>4 <cis' e' fis' a'>8 r8 | % 81
  <fis' gis' cis'' d''>4. r8 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 82
  r8 <b e' gis' b'>8~ <b e' gis' b'>4 r8 <e' gis' b' cis''>16 cis''16 b'8( cis''8) | % 83
  <e' g' ais' cis''>4. r8 <cis' e' g' ais'>4 r4 | % 84
  r8 <d' fis' a' cis''>4 <d' fis' a' cis''>8~ <d' fis' a' cis''>4 <cis' d' fis' a'>8 r8 | % 85
  <fis' gis' cis'' d''>4. r8 r8 <d' fis' gis' cis''>8~ <d' fis' gis' cis''>4 | % 86
  r8 <cis' e' gis' b'>8~ <cis' e' gis' b'>4 r8 <e' gis' b' cis''>16 cis''16 b'8( cis''8) | % 87
  <g' b' cis''>4. r8 <cis' fis' g' b'>4 r4 | % 88
  % Outro: bars 89-96
  r8\mp <cis' e' fis' a'>8~ <cis' e' fis' a'>4 r8 <cis' e' fis' a'>8 r4 | % 89
  <c' e' f' a'>4. r8 r8 <c' e' f' a'>8~ <c' e' f' a'>4 | % 90
  r8 <b e' gis' b'>4 <b e' gis' b'>8~ <b e' gis' b'>4 r4 | % 91
  <cis' e' g' ais'>4 r4 r8 <cis' e' g' ais'>8 ais'8( cis''8) | % 92
  r8\p <cis' d' fis' a'>8~ <cis' d' fis' a'>4 r8 <cis' d' fis' a'>8 r4 | % 93
  r8 <d' fis' gis' cis''>4. r2 | % 94
  <cis' e' fis' b'>2. r4 | % 95
  <cis' e' fis' b'>1\fermata | % 96
}

pianoLH = {
  % Intro: bars 1-8
  <fis a>2\mp r2 | % 1
  R1 | % 2
  <e b>2 r2 | % 3
  R1 | % 4
  <d a>2 r2 | % 5
  R1 | % 6
  <cis gis>2 r2 | % 7
  R1 | % 8
  % A - Coast road: bars 9-24
  <fis a>2\mp r2 | % 9
  <gis, d>4 r2. | % 10
  <e b>2 r2 | % 11
  <a, e>4 r2. | % 12
  <d a>2 r2 | % 13
  <gis, d>4 r2. | % 14
  <cis gis>2 r2 | % 15
  <cis g>4 r2. | % 16
  <fis a>2 r2 | % 17
  <f a>4 r2. | % 18
  <e b>2 r2 | % 19
  <ais, e>4 r2. | % 20
  <d a>2 r2 | % 21
  <gis, d>4 r2. | % 22
  <cis gis>2 r2 | % 23
  <eis b>4 r2. | % 24
  % B - Rising lights: bars 25-32
  <a, e>2\mf r2 | % 25
  <e b>4 r2. | % 26
  <fis a>2 r2 | % 27
  <gis, d>4 r2. | % 28
  <a, e>2 r2 | % 29
  <dis a>4 r2. | % 30
  <d a>2 r2 | % 31
  <gis, d>4 r2. | % 32
  % C - Glass harbour: bars 33-48
  <fis a>2.\mf r4 | % 33
  <gis, d>2. r4 | % 34
  <e b>2. r4 | % 35
  <a, e>4 r2. | % 36
  <d a>2. r4 | % 37
  <gis, d>2. r4 | % 38
  <cis gis>2. r4 | % 39
  <cis g>4 r2. | % 40
  <fis a>2. r4 | % 41
  <gis, d>2. r4 | % 42
  <e b>2. r4 | % 43
  <ais, e>4 r2. | % 44
  <d a>2. r4 | % 45
  <gis, d>2. r4 | % 46
  <cis gis>2. r4 | % 47
  <cis g>4 r2. | % 48
  % D - Sax solo: bars 49-64
  <fis a>2\mp r2 | % 49
  <gis, d>4 r2. | % 50
  <e b>2 r2 | % 51
  <a, e>4 r2. | % 52
  <d a>2 r2 | % 53
  <gis, d>4 r2. | % 54
  <cis gis>2 r2 | % 55
  <cis g>4 r2. | % 56
  <fis a>2 r2 | % 57
  <f a>4 r2. | % 58
  <e b>2 r2 | % 59
  <ais, e>4 r2. | % 60
  <d a>2 r2 | % 61
  <gis, d>4 r2. | % 62
  <cis gis>2 r2 | % 63
  <cis g>4 r2. | % 64
  % E - Afterglow: bars 65-72
  <f a>2.\p r4 | % 65
  R1 | % 66
  <e b>2. r4 | % 67
  R1 | % 68
  <d f>2. r4 | % 69
  R1 | % 70
  <c g>2. r4 | % 71
  <gis, d>2 r2 | % 72
  % F - Last lights: bars 73-88
  <fis a>2.\mf r4 | % 73
  <gis, d>2. r4 | % 74
  <e b>2. r4 | % 75
  <a, e>4 r2. | % 76
  <d a>2. r4 | % 77
  <gis, d>2. r4 | % 78
  <cis gis>2. r4 | % 79
  <cis g>4 r2. | % 80
  <fis a>2. r4 | % 81
  <gis, d>2. r4 | % 82
  <e b>2. r4 | % 83
  <ais, e>4 r2. | % 84
  <d a>2. r4 | % 85
  <gis, d>2. r4 | % 86
  <cis gis>2. r4 | % 87
  <cis g>4 r2. | % 88
  % Outro: bars 89-96
  <fis a>2\mp r2 | % 89
  R1 | % 90
  <e b>2 r2 | % 91
  R1 | % 92
  <d a>2\p r2 | % 93
  R1 | % 94
  <cis fis>2 r2 | % 95
  <cis fis>1\fermata | % 96
}

guitar = {
  % Intro: bars 1-8
  R1\p | % 1
  R1 | % 2
  R1 | % 3
  R1 | % 4
  r4 r8 <a cis' d'>8-. r4 r8 <a cis' d'>8-. | % 5
  r8 <gis b cis'>8-. r4 r4 r8 <gis b cis'>8-. | % 6
  r4 r8 <gis b cis'>8-. r2 | % 7
  r8 <g b cis'>8-. r4 r8 <g b cis'>16-. r16 r4 | % 8
  % A - Coast road: bars 9-24
  r4\mp r8 <cis' e' fis'>8-. r4 r8 <cis' e' fis'>8-. | % 9
  r8 <gis b cis'>8-. r4 r4 r8 <gis b cis'>8-. | % 10
  r4 r8 <gis b e'>8-. r2 | % 11
  r8 <a cis' e'>8-. r4 r8 <a cis' e'>16-. r16 r4 | % 12
  r4 r8 <a cis' d'>8-. r4 r8 <a cis' d'>8-. | % 13
  r8 <gis b cis'>8-. r4 r4 r8 <gis b cis'>8-. | % 14
  r4 r8 <gis b cis'>8-. r2 | % 15
  r8 <g b cis'>8-. r4 r8 <g b cis'>16-. r16 r4 | % 16
  r4 r8 <cis' e' fis'>8-. r4 r8 <cis' e' fis'>8-. | % 17
  r8 <a c' f'>8-. r4 r4 r8 <a c' f'>8-. | % 18
  r4 r8 <gis b e'>8-. r2 | % 19
  r8 <ais cis' e'>8-. r4 r8 <ais cis' e'>16-. r16 r4 | % 20
  r4 r8 <a cis' d'>8-. r4 r8 <a cis' d'>8-. | % 21
  r8 <gis b cis'>8-. r4 r4 r8 <gis b cis'>8-. | % 22
  r4 r8 <gis b cis'>8-. r2 | % 23
  r8 <gis b d'>8-. r4 r8 <gis b d'>16-. r16 r4 | % 24
  % B - Rising lights: bars 25-32
  r4\mf r8 <a cis' e'>8-. r8 <a cis' e'>8-. r8 <a cis' e'>8-. | % 25
  r8 <gis b e'>8-. r4 r8 <gis b e'>8-. r8 <gis b e'>8-. | % 26
  r4 r8 <cis' e' fis'>16-. r16 r4 r8 <cis' e' fis'>8-. | % 27
  r8 <gis b cis'>8-. r4 r8 <gis b cis'>8-. r4 | % 28
  r4 r8 <a cis' e'>8-. r8 <a cis' e'>8-. r8 <a cis' e'>8-. | % 29
  r8 <a cis' dis'>8-. r4 r8 <a cis' dis'>8-. r8 <a cis' dis'>8-. | % 30
  r4 r8 <a cis' d'>16-. r16 r4 r8 <a cis' d'>8-. | % 31
  r8 <gis b cis'>8-. r4 r8 <gis b cis'>8-. r4 | % 32
  % C - Glass harbour: bars 33-48
  r4\mf r8 <cis' e' fis'>8-. r8 <cis' e' fis'>8-. r8 <cis' e' fis'>8-. | % 33
  r8 <gis b cis'>8-. r4 r8 <gis b cis'>8-. r8 <gis b cis'>8-. | % 34
  r4 r8 <gis b e'>16-. r16 r4 r8 <gis b e'>8-. | % 35
  r8 <a cis' e'>8-. r4 r8 <a cis' e'>8-. r4 | % 36
  r4 r8 <a cis' d'>8-. r8 <a cis' d'>8-. r8 <a cis' d'>8-. | % 37
  r8 <gis b cis'>8-. r4 r8 <gis b cis'>8-. r8 <gis b cis'>8-. | % 38
  r4 r8 <gis b cis'>16-. r16 r4 r8 <gis b cis'>8-. | % 39
  r8 <g b cis'>8-. r4 r8 <g b cis'>8-. r4 | % 40
  r4 r8 <cis' e' fis'>8-. r8 <cis' e' fis'>8-. r8 <cis' e' fis'>8-. | % 41
  r8 <gis b cis'>8-. r4 r8 <gis b cis'>8-. r8 <gis b cis'>8-. | % 42
  r4 r8 <gis b e'>16-. r16 r4 r8 <gis b e'>8-. | % 43
  r8 <ais cis' e'>8-. r4 r8 <ais cis' e'>8-. r4 | % 44
  r4 r8 <a cis' d'>8-. r8 <a cis' d'>8-. r8 <a cis' d'>8-. | % 45
  r8 <gis b cis'>8-. r4 r8 <gis b cis'>8-. r8 <gis b cis'>8-. | % 46
  r4 r8 <gis b cis'>16-. r16 r4 r8 <gis b cis'>8-. | % 47
  r8 <g b cis'>8-. r4 r8 <g b cis'>8-. r4 | % 48
  % D - Sax solo: bars 49-64
  r4\mp r8 <cis' e' fis'>8-. r4 r8 <cis' e' fis'>8-. | % 49
  r8 <gis b cis'>8-. r4 r4 r8 <gis b cis'>8-. | % 50
  r4 r8 <gis b e'>8-. r2 | % 51
  r8 <a cis' e'>8-. r4 r8 <a cis' e'>16-. r16 r4 | % 52
  r4 r8 <a cis' d'>8-. r4 r8 <a cis' d'>8-. | % 53
  r8 <gis b cis'>8-. r4 r4 r8 <gis b cis'>8-. | % 54
  r4 r8 <gis b cis'>8-. r2 | % 55
  R1 | % 56
  r4 r8 <cis' e' fis'>8-. r4 r8 <cis' e' fis'>8-. | % 57
  r8 <a c' f'>8-. r4 r4 r8 <a c' f'>8-. | % 58
  r4 r8 <gis b e'>8-. r2 | % 59
  r8 <ais cis' e'>8-. r4 r8 <ais cis' e'>16-. r16 r4 | % 60
  r4 r8 <a cis' d'>8-. r4 r8 <a cis' d'>8-. | % 61
  r8 <gis b cis'>8-. r4 r4 r8 <gis b cis'>8-. | % 62
  r4 r8 <gis b cis'>8-. r2 | % 63
  R1 | % 64
  % E - Afterglow: bars 65-72
  r2\p <a c' f'>2 | % 65
  R1 | % 66
  r2 <g b d'>2 | % 67
  R1 | % 68
  r2 <a d' f'>2 | % 69
  R1 | % 70
  R1 | % 71
  r4 r8 <gis b cis'>8-. r2 | % 72
  % F - Last lights: bars 73-88
  r4\mf r8 <cis' e' fis'>8-. r8 <cis' e' fis'>8-. r8 <cis' e' fis'>8-. | % 73
  r8 <gis b cis'>8-. r4 r8 <gis b cis'>8-. r8 <gis b cis'>8-. | % 74
  r4 r8 <gis b e'>16-. r16 r4 r8 <gis b e'>8-. | % 75
  r8 <a cis' e'>8-. r4 r8 <a cis' e'>8-. r4 | % 76
  r4 r8 <a cis' d'>8-. r8 <a cis' d'>8-. r8 <a cis' d'>8-. | % 77
  r8 <gis b cis'>8-. r4 r8 <gis b cis'>8-. r8 <gis b cis'>8-. | % 78
  r4 r8 <gis b cis'>16-. r16 r4 r8 <gis b cis'>8-. | % 79
  r8 <g b cis'>8-. r4 r8 <g b cis'>8-. r4 | % 80
  r4 r8 <cis' e' fis'>8-. r8 <cis' e' fis'>8-. r8 <cis' e' fis'>8-. | % 81
  r8 <gis b cis'>8-. r4 r8 <gis b cis'>8-. r8 <gis b cis'>8-. | % 82
  r4 r8 <gis b e'>16-. r16 r4 r8 <gis b e'>8-. | % 83
  r8 <ais cis' e'>8-. r4 r8 <ais cis' e'>8-. r4 | % 84
  r4 r8 <a cis' d'>8-. r8 <a cis' d'>8-. r8 <a cis' d'>8-. | % 85
  r8 <gis b cis'>8-. r4 r8 <gis b cis'>8-. r8 <gis b cis'>8-. | % 86
  r4 r8 <gis b cis'>16-. r16 r4 r8 <gis b cis'>8-. | % 87
  r8 <g b cis'>8-. r4 r8 <g b cis'>8-. r4 | % 88
  % Outro: bars 89-96
  r4\mp r8 <cis' e' fis'>8-. r4 r8 <cis' e' fis'>8-. | % 89
  r8 <a c' f'>8-. r4 r4 r8 <a c' f'>8-. | % 90
  r4 r8 <gis b e'>8-. r2 | % 91
  r8 <ais cis' e'>8-. r4 r8 <ais cis' e'>16-. r16 r4 | % 92
  R1\p | % 93
  r4 r8 <gis b cis'>8-. r2 | % 94
  <a cis' fis'>2 r2 | % 95
  <a cis' fis'>1\fermata | % 96
}

bass = {
  % Intro: bars 1-8
  d,2\mp r4 a,8 dis,8 | % 1
  e,2 b,4 e8 c,8 | % 2
  cis,8. cis,16 r8 cis8~ cis8 gis,8 cis,8 eis,8 | % 3
  fis,8 r16 fis,16 cis8 fis,8 fis8. e16 cis8 ais,,8 | % 4
  b,,8. b,,16 r8 b,8~ b,8 fis,8 b,,8 dis,8 | % 5
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 gis,,8 | % 6
  a,,8. a,,16 r8 a,8~ a,8 e,8 a,,8 gis,,8 | % 7
  a,,8 a,8 g,8 e,8 cis,8 e,8 a,,8 cis,8 | % 8
  % A - Coast road: bars 9-24
  d,8.\mf d,16 r8 d8~ d8 a,8 d,8 dis,8 | % 9
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 c,8 | % 10
  cis,8. cis,16 r8 cis8~ cis8 gis,8 cis,8 eis,8 | % 11
  fis,8 r16 fis,16 cis8 fis,8 fis8. e16 cis8 ais,,8 | % 12
  b,,8. b,,16 r8 b,8~ b,8 fis,8 b,,8 dis,8 | % 13
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 gis,,8 | % 14
  a,,8. a,,16 r8 a,8~ a,8 e,8 a,,8 gis,,8 | % 15
  a,,8 a,8 g,8 e,8 cis,8 e,8 a,,8 cis,8 | % 16
  d,8. d,16 r8 d8~ d8 a,8 d,8 cis,8 | % 17
  d,8 r16 d,16 a,8 d,8 d8. c16 a,8 c,8 | % 18
  cis,8. cis,16 r8 cis8~ cis8 gis,8 cis,8 eis,8 | % 19
  fis,8 r16 fis,16 cis8 fis,8 fis8. e16 cis8 ais,,8 | % 20
  b,,8. b,,16 r8 b,8~ b,8 fis,8 b,,8 dis,8 | % 21
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 gis,,8 | % 22
  a,,8. a,,16 r8 a,8~ a,8 e,8 a,,8 c,8 | % 23
  cis,8 cis8 b,8 gis,8 eis,8 gis,8 cis,8 eis,8 | % 24
  % B - Rising lights: bars 25-32
  fis,8.\mf fis,16 r8 fis8~ fis8 cis8 fis,8 c,8 | % 25
  cis,8 r16 cis,16 gis,8 cis,8 cis8. b,16 gis,8 cis,8 | % 26
  d,8. d,16 r8 d8~ d8 a,8 d,8 dis,8 | % 27
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 eis,8 | % 28
  fis,8. fis,16 r8 fis8~ fis8 cis8 fis,8 ais,,8 | % 29
  b,,8 r16 b,,16 fis,8 b,,8 b,8. a,16 fis,8 ais,,8 | % 30
  b,,8. b,,16 r8 b,8~ b,8 fis,8 b,,8 dis,8 | % 31
  e,8 e8 d8 b,8 gis,8 b,8 e,8 cis,8 | % 32
  % C - Glass harbour: bars 33-48
  d,8.\f d,16 r8 d8~ d8 a,8 d,8 dis,8 | % 33
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 c,8 | % 34
  cis,8. cis16 cis,8 gis,8~ gis,8 b,16 cis16 gis,8 eis,8 | % 35
  fis,8 r16 fis,16 cis8 fis,8 fis8. e16 cis8 ais,,8 | % 36
  b,,8. b,,16 r8 b,8~ b,8 fis,8 b,,8 dis,8 | % 37
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 gis,,8 | % 38
  a,,8. a,16 a,,8 e,8~ e,8 gis,16 a,16 e,8 gis,,8 | % 39
  a,,8 a,8 g,8 e,8 cis,8 e,8 a,,8 cis,8 | % 40
  d,8. d,16 r8 d8~ d8 a,8 d,8 dis,8 | % 41
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 c,8 | % 42
  cis,8. cis16 cis,8 gis,8~ gis,8 b,16 cis16 gis,8 eis,8 | % 43
  fis,8 r16 fis,16 cis8 fis,8 fis8. e16 cis8 ais,,8 | % 44
  b,,8. b,,16 r8 b,8~ b,8 fis,8 b,,8 dis,8 | % 45
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 gis,,8 | % 46
  a,,8. a,16 a,,8 e,8~ e,8 gis,16 a,16 e,8 gis,,8 | % 47
  a,,8 a,8 g,8 e,8 cis,8 e,8 a,,8 cis,8 | % 48
  % D - Sax solo: bars 49-64
  d,8.\mf d,16 r8 d8~ d8 a,8 d,8 dis,8 | % 49
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 c,8 | % 50
  cis,8. cis,16 r8 cis8~ cis8 gis,8 cis,8 eis,8 | % 51
  fis,8 r16 fis,16 cis8 fis,8 fis8. e16 cis8 ais,,8 | % 52
  b,,8. b,,16 r8 b,8~ b,8 fis,8 b,,8 dis,8 | % 53
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 gis,,8 | % 54
  a,,8. a,,16 r8 a,8~ a,8 e,8 a,,8 gis,,8 | % 55
  a,,8 a,8 g,8 e,8 cis,8 e,8 a,,8 cis,8 | % 56
  d,8. d,16 r8 d8~ d8 a,8 d,8 cis,8 | % 57
  d,8 r16 d,16 a,8 d,8 d8. c16 a,8 c,8 | % 58
  cis,8. cis,16 r8 cis8~ cis8 gis,8 cis,8 eis,8 | % 59
  fis,8 r16 fis,16 cis8 fis,8 fis8. e16 cis8 ais,,8 | % 60
  b,,8. b,,16 r8 b,8~ b,8 fis,8 b,,8 dis,8 | % 61
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 gis,,8 | % 62
  a,,8. a,,16 r8 a,8~ a,8 e,8 a,,8 gis,,8 | % 63
  a,,8 a,8 g,8 e,8 cis,8 e,8 a,,8 cis,8 | % 64
  % E - Afterglow: bars 65-72
  d,2\mp a,4 c8 fis,8 | % 65
  g,2 d4 f8 b,,8 | % 66
  c,2 g,4 b,8 b,,8 | % 67
  c,2 g,4 b,8 ais,,8 | % 68
  b,,2 f,4 a,8 dis,8 | % 69
  e,2 b,4 d8 gis,,8 | % 70
  a,,8. a,,16 r8 a,8~ a,8 e,8 a,,8 dis,8 | % 71
  e,8 e8 d8 b,8 gis,8 b,8 e,8 cis,8 | % 72
  % F - Last lights: bars 73-88
  d,8.\f d,16 r8 d8~ d8 a,8 d,8 dis,8 | % 73
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 c,8 | % 74
  cis,8. cis16 cis,8 gis,8~ gis,8 b,16 cis16 gis,8 eis,8 | % 75
  fis,8 r16 fis,16 cis8 fis,8 fis8. e16 cis8 ais,,8 | % 76
  b,,8. b,,16 r8 b,8~ b,8 fis,8 b,,8 dis,8 | % 77
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 gis,,8 | % 78
  a,,8. a,16 a,,8 e,8~ e,8 gis,16 a,16 e,8 gis,,8 | % 79
  a,,8 a,8 g,8 e,8 cis,8 e,8 a,,8 cis,8 | % 80
  d,8. d,16 r8 d8~ d8 a,8 d,8 dis,8 | % 81
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 c,8 | % 82
  cis,8. cis16 cis,8 gis,8~ gis,8 b,16 cis16 gis,8 eis,8 | % 83
  fis,8 r16 fis,16 cis8 fis,8 fis8. e16 cis8 ais,,8 | % 84
  b,,8. b,,16 r8 b,8~ b,8 fis,8 b,,8 dis,8 | % 85
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 gis,,8 | % 86
  a,,8. a,16 a,,8 e,8~ e,8 gis,16 a,16 e,8 gis,,8 | % 87
  a,,8 a,8 g,8 e,8 cis,8 e,8 a,,8 cis,8 | % 88
  % Outro: bars 89-96
  d,8.\mf d,16 r8 d8~ d8 a,8 d,8 cis,8 | % 89
  d,8 r16 d,16 a,8 d,8 d8. c16 a,8 c,8 | % 90
  cis,8. cis,16 r8 cis8~ cis8 gis,8 cis,8 eis,8 | % 91
  fis,8 r16 fis,16 cis8 fis,8 fis8. e16 cis8 ais,,8 | % 92
  b,,8. b,,16 r8 b,8~ b,8 fis,8 b,,8 dis,8 | % 93
  e,8 r16 e,16 b,8 e,8 e8. d16 b,8 gis,,8 | % 94
  a,,4 e,8 b,8 a,4 e,4 | % 95
  a,,1\fermata | % 96
}

drumMusic = \drummode {
  % Intro: bars 1-8
  << { hh4\mp hh hh hh } \\ { r1 } >> | % 1
  << { hh4 hh hh hh } \\ { bd2 r2 } >> | % 2
  << { hh8 hh hh hh hh hh hh hh } \\ { bd4 sn4 bd4 sn4 } >> | % 3
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 bd8 sn8 sn16 sn16 } >> | % 4
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 5
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 6
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 7
  << { hh8 hh hh hh hh4 r4 } \\ { bd4 sn8 bd8 bd8 sn16 sn16 sn8 sn16 sn16 } >> | % 8
  % A - Coast road: bars 9-24
  << { hh8\mf hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 9
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 10
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 11
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd8. bd16 sn4 bd8 bd8 sn8 sn16 sn16 } >> | % 12
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 13
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 14
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 15
  << { hh8 hh hh hh hh4 r4 } \\ { bd4 sn8 bd8 bd8 sn16 sn16 sn8 sn16 sn16 } >> | % 16
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 17
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 18
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 19
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd8. bd16 sn4 bd8 bd8 sn8 sn16 sn16 } >> | % 20
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 21
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 22
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 23
  << { hh8 hh hh hh r2 } \\ { bd4 sn8 bd8 sn16 sn16 sn8 sn16 sn16 <bd sn>8 } >> | % 24
  % B - Rising lights: bars 25-32
  << { cymc8\mf hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hh8 } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 25
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 26
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 27
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd8. bd16 sn4 bd8 bd8 sn8 sn16 sn16 } >> | % 28
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 29
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 30
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 31
  << { hh8 hh hh hh r2 } \\ { bd4 sn8 bd8 sn16 sn16 sn8 sn16 sn16 <bd sn>8 } >> | % 32
  % C - Glass harbour: bars 33-48
  << { cymc8\f hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hh8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 33
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 34
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 35
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8. bd16 sn4 bd8 bd8 sn8 sn16 sn16 } >> | % 36
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 37
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 38
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 39
  << { hh8 hh hh hh hh4 r4 } \\ { bd4 sn8 bd8 bd8 sn16 sn16 sn8 sn16 sn16 } >> | % 40
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 41
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 42
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 43
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8. bd16 sn4 bd8 bd8 sn8 sn16 sn16 } >> | % 44
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 45
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 46
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 47
  << { hh8 hh hh hh r2 } \\ { bd4 sn8 bd8 sn16 sn16 sn8 sn16 sn16 <bd sn>8 } >> | % 48
  % D - Sax solo: bars 49-64
  << { cymc8\mf hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hh8 } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 49
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 50
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 51
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd8. bd16 sn4 bd8 bd8 sn8 sn16 sn16 } >> | % 52
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 53
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 54
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 55
  << { hh8 hh hh hh hh4 r4 } \\ { bd4 sn8 bd8 bd8 sn16 sn16 sn8 sn16 sn16 } >> | % 56
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 57
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 58
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 59
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd8. bd16 sn4 bd8 bd8 sn8 sn16 sn16 } >> | % 60
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 61
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 62
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 63
  << { hh8 hh hh hh r2 } \\ { bd4 sn8 bd8 sn16 sn16 sn8 sn16 sn16 <bd sn>8 } >> | % 64
  % E - Afterglow: bars 65-72
  << { hh4\mp hh hh hh } \\ { bd4 r4 sn4 bd8 r8 } >> | % 65
  << { hh4 hh hh hh } \\ { bd4 r4 sn4 bd8 r8 } >> | % 66
  << { hh4 hh hh hh } \\ { bd4 r4 sn4 bd8 r8 } >> | % 67
  << { hh4 hh hh hh } \\ { bd4 r4 sn4 bd8 r8 } >> | % 68
  << { hh4 hh hh hh } \\ { bd4 r4 sn4 bd8 r8 } >> | % 69
  << { hh4 hh hh hh } \\ { bd4 r4 sn4 bd8 r8 } >> | % 70
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 71
  << { hh8 hh hh hh hh8 hh16 hh hho4 } \\ { bd4 sn4 bd8 sn16 sn16 sn16 sn16 sn8 } >> | % 72
  % F - Last lights: bars 73-88
  << { cymc8\f hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hh8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 73
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 74
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 75
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8. bd16 sn4 bd8 bd8 sn8 sn16 sn16 } >> | % 76
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 77
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 78
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 79
  << { hh8 hh hh hh hh4 r4 } \\ { bd4 sn8 bd8 bd8 sn16 sn16 sn8 sn16 sn16 } >> | % 80
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 81
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 82
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 83
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8. bd16 sn4 bd8 bd8 sn8 sn16 sn16 } >> | % 84
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 85
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 86
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho8 } \\ { bd8 r16 bd16 sn8 bd8 bd8 r16 bd16 sn4 } >> | % 87
  << { hh8 hh hh hh r2 } \\ { bd4 sn8 bd8 sn16 sn16 sn8 sn16 sn16 <bd sn>8 } >> | % 88
  % Outro: bars 89-96
  << { cymc8\mf hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hh8 } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 89
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 90
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 91
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd8. bd16 sn4 bd8 bd8 sn8 sn16 sn16 } >> | % 92
  << { hh8 hh hh hh hh hh hh hh } \\ { bd8. bd16 sn4 bd8 r16 bd16 sn4 } >> | % 93
  << { hh8 hh16 hh hh8 hh16 hh hh8 hh16 hh hh8 hho16 hh } \\ { bd4 sn8 bd8 r8 bd8 sn8 bd8 } >> | % 94
  << { hh8 hh hh hh hh4 r4 } \\ { bd4 sn4 bd8 sn8 sn8 sn16 sn16 } >> | % 95
  << { cymc4\fermata r2. } \\ { bd4 r2. } >> | % 96
}

band = <<
  \tag #'printedChords \new ChordNames \with {
    chordChanges = ##t
    chordNameExceptions = #chExceptions
    \override ChordName.font-size = #-1
  } \harmony
  \new StaffGroup <<
    \new Staff = "sax" \with {
      instrumentName = \markup \center-column { "Alto sax" "(concert)" }
      shortInstrumentName = "Sax"
      midiInstrument = "alto sax"
      midiMinimumVolume = #0.68
      midiMaximumVolume = #0.93
    } << \global \timeline \systemBreaks \lead >>
    \new PianoStaff \with {
      instrumentName = \markup \center-column { "Electric" "piano" }
      shortInstrumentName = "E.P."
    } <<
      \new Staff = "rh" \with {
        midiInstrument = "electric piano 1"
        midiMinimumVolume = #0.40
        midiMaximumVolume = #0.66
      } << \global \pianoRH >>
      \new Staff = "lh" \with {
        midiInstrument = "electric piano 1"
        midiMinimumVolume = #0.36
        midiMaximumVolume = #0.60
      } { \clef bass << \global \pianoLH >> }
    >>
    \new Staff \with {
      instrumentName = \markup \center-column { "Muted" "guitar" }
      shortInstrumentName = "Gtr"
      midiInstrument = "electric guitar (muted)"
      midiMinimumVolume = #0.38
      midiMaximumVolume = #0.62
    } { \clef "treble_8" << \global \guitar >> }
    \new Staff \with {
      instrumentName = \markup \center-column { "Electric" "bass" }
      shortInstrumentName = "Bass"
      midiInstrument = "electric bass (finger)"
      midiMinimumVolume = #0.62
      midiMaximumVolume = #0.85
    } { \clef "bass_8" << \global \bass >> }
    \new DrumStaff \with {
      instrumentName = "Drums"
      shortInstrumentName = "Dr."
      midiMinimumVolume = #0.45
      midiMaximumVolume = #0.74
    } { \numericTimeSignature \time 4/4 \drumMusic }
  >>
>>

\book {
  \bookOutputName "glass-harbour"
  \bookOutputSuffix "score"
  \header { instrument = "Full score - concert pitch" }
  \paper {
    system-system-spacing.basic-distance = #22
    system-system-spacing.minimum-distance = #18
  }
  \score {
    \band
    \layout {
      \context { \Score
        \override BarNumber.break-visibility = ##(#f #f #t)
        \override RehearsalMark.self-alignment-X = #LEFT
      }
    }
  }
  % Chord symbols are for reading only; the played voicings are in the band.
  \score {
    \removeWithTag #'printedChords \band
    \midi { }
  }
}

\book {
  \bookOutputName "glass-harbour"
  \bookOutputSuffix "lead-sheet"
  \header { instrument = "Melody and chord chart - concert pitch" }
  \paper {
    system-count = #24
    page-count = #4
    indent = 0\mm
    short-indent = 0\mm
  }
  \score {
    <<
      \new ChordNames \with {
        chordChanges = ##t
        chordNameExceptions = #chExceptions
      } \harmony
      \new Staff << \global \timeline \systemBreaks \lead >>
    >>
    \layout {
      #(layout-set-staff-size 19)
      \context { \Score
        \override BarNumber.break-visibility = ##(#f #f #t)
        \override RehearsalMark.self-alignment-X = #LEFT
      }
    }
  }
}
