\version "2.24.0"

\header {
  title = "String Quartet in F Major"
  subtitle = "I. Andante sostenuto — Allegro moderato"
  composer = "Style of Alexander Borodin"
  tagline = ##f
}

#(set-global-staff-size 16)

\paper {
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  ragged-last-bottom = ##f
}

globalKeys = {
  % Section A: Introduction (mm. 1-12)
  \time 4/4
  \key f \major
  s1*11
  s1 \bar "||"

  % Section B: Exposition - Primary Theme (mm. 13-28)
  s1*16

  % Section C: Transition (mm. 29-40)
  s1*11
  s1 \bar "||"

  % Section D: Exposition - Secondary & Closing Themes (mm. 41-64)
  \key a \major
  s1*23
  s1 \bar "||"

  % Section E: Development (mm. 65-92)
  \key f \major
  s1*28

  % Section F: Recapitulation - Primary Theme & Bridge (mm. 93-104)
  s1*11
  s1 \bar "||"

  % Section G: Recapitulation - Secondary Theme (mm. 105-120)
  s1*15
  s1 \bar "||"

  % Section H: Coda (mm. 121-136)
  s1*15
  s1 \bar "|."
}

globalMarks = {
  % Section A (mm. 1-12)
  \tempo "Andante sostenuto" 4 = 66
  s1*10
  s1^\markup { \italic "poco rit." }
  s1

  % Section B (mm. 13-28)
  \mark \markup { \box \bold "A" }
  \tempo "Allegro moderato" 4 = 116
  s1*16

  % Section C (mm. 29-40)
  \mark \markup { \box \bold "B" }
  s1*8
  s1^\markup { \italic "poco a poco tranquillo" }
  s1*2
  s1^\markup { \italic "rit." }

  % Section D (mm. 41-64)
  \mark \markup { \box \bold "C" }
  \tempo "Un poco più tranquillo, espressivo" 4 = 104
  s1*16
  \mark \markup { \box \bold "D" }
  s1*8

  % Section E (mm. 65-92)
  \mark \markup { \box \bold "E" }
  \tempo "Tempo I (Allegro moderato)" 4 = 116
  s1*8
  \mark \markup { \box \bold "F" }
  s1*12
  \mark \markup { \box \bold "G" }
  s1*8

  % Section F (mm. 93-104)
  \mark \markup { \box \bold "H" }
  \tempo "Grandioso, Tempo I" 4 = 116
  s1*10
  s1^\markup { \italic "poco rit." }
  s1

  % Section G (mm. 105-120)
  \mark \markup { \box \bold "I" }
  \tempo "Tranquillo ed espressivo" 4 = 104
  s1*14
  s1^\markup { \italic "molto rit." }
  s1

  % Section H (mm. 121-136)
  \mark \markup { \box \bold "J" }
  \tempo "Più mosso (Vivace)" 4 = 138
  s1*8
  \mark \markup { \box \bold "K" }
  s1*8
}

% ==============================================================================
% VIOLIN I
% ==============================================================================

vnI_sA = {
  R1*5 |
  r2 f''2\p( |
  ees''4\< d'' des'' c''8 bes'\! |
  a'2\mf d''4 f'' |
  e''2\> d''4 c'' |
  bes'2\p a'4 aes') |
  g'2(\> f'4 e' |
  e'1)\pp\fermata |
}

vnI_sB = {
  f'4\mf(\espressivo a'2 c''4 |
  d''4. c''8 a'4 g'8 f' |
  g'2 d'4 f' |
  a'4 g'2) e'4( |
  f'4\< a' c'' f''\! |
  e''4.\f d''8 c''4 a'8 f' |
  g'4\> d' a'4. g'8 |
  g'2.\mp) e'4( |
  f'4\f a'2 c''4 |
  d''4. e''8 f''4 d''8 c'' |
  bes'2 g'4 bes' |
  d''4 c''2) c''4( |
  f''4\< g'' a''2~\! |
  a''4\ff g''8 f'' des''4 c''8 a' |
  d''4 bes' g'4. f'8 |
  f'2.) r4 |
}

vnI_sC = {
  R1*3 |
  r2 r4 e'4\mf( |
  a'4\< c''2 e''4\! |
  f''4.\f e''8 d''4 c''8 b' |
  c''4\> b' f''4. e''8 |
  e''2\mp) b'4( c'' |
  d''2\> b'4 gis' |
  f'2\p e'4 d' |
  cis'2\> d'4 b |
  b1)\pp |
}

vnI_sD = {
  e''4\pp^\markup { \italic "pizz." } r r2 |
  R1*2 |
  a'4^\markup { \italic "pizz." } e'' r2 |
  R1 |
  r2 d''2\p^\markup { \italic "arco" }( |
  cis''4\> e'' b'4. d''8 |
  d''4\p cis''8 b' gis'4) r |
  cis''2\mf(\espressivo e''4 fis''8 gis'' |
  a''2. gis''8 fis'' |
  e''4 cis'' d''4. b'8 |
  cis''2.)\< cis''4(\! |
  d''4\f fis'' a''4. fis''8 |
  e''4 cis'' f''4. d''8 |
  cis''4\> a' cis''4. b'8 |
  a'2.\mp) r4 |
  a'8-.\p cis''-. e''4-- d''8-. b'-. cis''4-- |
  f'8-. a'-. c''4-- b'8-. gis'-. a'4-- |
  cis''8-.\< e''-. a''4-- fis''8-. d''-. e''4--\! |
  f''8-.\mf d''-. b'-. gis'-. a'4-. r |
  R1 |
  r2 g'2\p( |
  bes'2\> a'4 g' |
  f'2\pp e') |
}

vnI_sE = {
  R1*2 |
  g'4\mp( bes'2 d''4 |
  e''4. d''8 c''4 bes'8 a') |
  R1*2 |
  ees''4\mf(\< ges''2 bes''4 |
  a''4.\f fis''8 d''4 c''8 a') |
  R1*4 |
  a'4-.\f c''8( b') a'4-. e''-. |
  f''4.( e''8) d''4-. c''8( b') |
  c''4-. a''2( g''8 f'' |
  e''4 d'' bes'4. c''8) |
  f''4-. r a''4.( g''8) |
  f''4-. bes''2( aes''8 f'') |
  ees''4-.\< g''8( f'') ees''4-. a''-.\! |
  b''4.\ff( a''8) g''4-. f''8( d'') |
  c''2\ff( f''4 g''8 aes'' |
  bes''2. aes''8 g'' |
  aes''4 f'' des''4. c''8 |
  b'2 c''4) c''4( |
  d''4\< f'' b''4. a''8 |
  g''4 e'' bes''4. g''8\! |
  a''4\ff f'' d'' bes') |
  e'8( f' g' a' bes' c'' d'' e'') |
}

vnI_sF = {
  f''4\ff( a''2 c'''4 |
  d'''4. c'''8 a''4 g''8 f'' |
  g''2 d''4 f'' |
  a''4 g''2) e''4( |
  f''4 a''2 d'''4 |
  c'''4. bes''8 a''4 g''8 f'' |
  des''4 bes' a'4. g'8 |
  f'2.)\mf r4 |
  r2 aes'2\p( |
  ges'2 f'4 ees' |
  des'2\> ees'4 c' |
  c'1)\pp |
}

vnI_sG = {
  f'2\p(\espressivo aes'4 bes'8 c'' |
  des''2. c''8 bes' |
  aes'4 f' ges'4. ees'8 |
  f'2\< g'4) g'4(\! |
  a'2\mf( c''4 d''8 e'' |
  f''2. e''8 d'' |
  c''4 a' bes'4. g'8 |
  a'2.)) r4 |
  bes'4\f( d'' f''4. d''8 |
  c''4 a' des''4. bes'8 |
  a'4\> f' a'4. g'8 |
  f'1)\p |
  R1 |
  r2 c''2\pp( |
  d''2 bes'4 g' |
  a'1)\pp |
}

vnI_sH = {
  f'8-.\p a'-. c''4-- bes'8-. g'-. a'4-- |
  des'8-. f'-. aes'4-- g'8-. e'-. f'4-- |
  a'8-.\< c''-. f''4-- d''8-. bes'-. c''4-- |
  bes'8-. d''-. g''4-- e''8-. c''-. f''4--\! |
  f''4-.\f r8 a''8~ a''4 g''8-. f''-. |
  e''4-. r8 g''8~ g''4 f''8-. e''-. |
  d''8-.\< e''-. f''-. g''-. a''-. g''-. a''-. b''-.\! |
  c'''4-.\ff g''-. e''-. c''-. |
  f''2\ff( a''4 c''' |
  des'''2 c'''4 bes'') |
  a''2( f''4 d'' |
  g''2 e''4 c'') |
  f''4-. a''2-> f''4-. |
  des''4-. bes''2-> g''4-. |
  f''4-. r <f' c'' a''>4-.\fff r |
  <f' c'' a''>2\fff-> r2 |
}

violinOne = {
  \clef treble
  \vnI_sA
  \vnI_sB
  \vnI_sC
  \vnI_sD
  \vnI_sE
  \vnI_sF
  \vnI_sG
  \vnI_sH
}

% ==============================================================================
% VIOLIN II
% ==============================================================================

vnII_sA = {
  R1*4 |
  r2 f'2\p( |
  ees'4 d' c' d' |
  bes'2\< aes'4 g'\!) |
  f'2\mf( a'4 b' |
  c''2\> b'4 a' |
  g'2\p f'4 f') |
  e'2(\> des'4 c' |
  bes1)\pp\fermata |
}

vnII_sB = {
  r8 f'8\p~ f'4 r8 f'8~ f'4 |
  r8 f'8~ f'4 r8 d'8~ d'4 |
  r8 d'8~ d'4 r8 d'8~ d'4 |
  r8 f'8( e'4) r8 bes8~ bes4 |
  r8 c'8\<~ c'4 r8 cis'8~ cis'4\! |
  r8 f'8\mf~ f'4 r8 f'8~ f'4 |
  r8 d'8\>~ d'4 r8 f'8~ f'4 |
  r8 e'8\mp~ e'4 d'8( des' c' bes) |
  a'8\mf c'' f'' c'' a' c'' f'' c'' |
  a'8 d'' f'' d'' bes' d'' g'' d'' |
  g'8 bes' ees'' bes' g' bes' ees'' bes' |
  f'8 bes' d'' bes' e' g' c'' g' |
  f'8\< a' ees'' a' f' bes' d'' bes'\! |
  f'8\f bes' des'' bes' f' a' c'' a' |
  d'8 g' bes' g' e'4 bes |
  a8( c' f' c' a4) r |
}

vnII_sC = {
  r8 a'8\p~ a'4 r8 f'8~ f'4 |
  r8 g'8~ g'4 r8 g'8~ g'4 |
  r8 f'8~ f'4 r8 f'8~ f'4 |
  r8 f'8~ f'4 r8 d'8~ d'4 |
  c'4\mf\< e'2 a'4\! |
  a'4.\f gis'8 f'4 e'8 d' |
  e'4\> gis' d''4. b'8 |
  gis'2\mp e'4( fis' |
  gis'2\> e'4 d' |
  d'2\p b4 b |
  a2\> a4 gis |
  gis1)\pp |
}

vnII_sD = {
  r8 cis'8\pp~ cis'4 r8 cis'8~ cis'4 |
  r8 cis'8~ cis'4 r8 d'8~ d'4 |
  r8 cis'8~ cis'4 r8 d'8~ d'4 |
  r8 cis'8~ cis'4 r8 d'8~ d'4 |
  r8 cis'8\<~ cis'4 r8 cis'8~ cis'4\! |
  r8 b8\mp~ b4 r8 b8~ b4 |
  r8 cis'8\>~ cis'4 r8 d'8~ d'4 |
  r8 d'8\p( cis'4) b2 |
  a8\p cis' e' cis' a cis' e' cis' |
  a8 cis' fis' cis' a cis' fis' cis' |
  a8 d' fis' d' gis b e' b |
  a8\< cis' e' cis' g cis' e' cis'\! |
  a'8\f d'' fis'' d'' a' b' fis'' b' |
  a'8 cis'' e'' cis'' a' d'' f'' d'' |
  a'8\> cis'' e'' cis'' fis'4 gis' |
  e'8\mp( cis' e' cis' a4) r |
  r4 gis'4-.\p r4 a'4-. |
  r4 f'4-. r4 e'4-. |
  a'8-.\< cis''-. e''4-- d''8-. b'-. cis''4--\! |
  d''8-.\mf b'-. f'-. d'-. cis'4-. r |
  e'8-.\p a'-. cis''4-- b'8-. gis'-. a'4-- |
  bes'8-. g'-. e'4-- g'2( |
  g'2\> f'4 e' |
  d'2\pp cis') |
}

vnII_sE = {
  r8 a8\pp~ a4 r8 d'8~ d'4 |
  r8 ees'8~ ees'4 r8 d'8~ d'4 |
  r8 d'8~ d'4 r8 g'8~ g'4 |
  r8 g'8~ g'4 r8 ees'8~ ees'4 |
  r8 f'8\mp~ f'4 r8 bes'8~ bes'4 |
  r8 ees'8~ ees'4 r8 des'8~ des'4 |
  r8 ges'8\<~ ges'4 r8 ges'8~ ges'4 |
  fis'4.\f a'8 c''4 a'8 fis' |
  R1*2 |
  d'4-.\f f'8( e') d'4-. a'-. |
  bes'4.( a'8) g'4-. f'8( e') |
  f'4-. d''2( c''8 b' |
  a'4 gis' a'4. g'8) |
  f'4-. a'-. d''-. c''-. |
  g'4 f' bes' g' |
  a'4-. c''-. f''-. c''-. |
  bes'4-. d''8( c'') bes'4-. f''-. |
  g''4-.\< ees''-. c''-. ees''-.\! |
  d''4.\ff( c''8) b'4-. d''8( b') |
  r8 c''8\f~ c''4 r8 c''8~ c''4 |
  r8 des''8~ des''4 r8 bes'8~ bes'4 |
  r8 c''8~ c''4 r8 aes'8~ aes'4 |
  r8 f'8( e'4) r8 g'8~ g'4 |
  a'4\< d'' f''4. d''8 |
  e''4 bes' g''4. e''8\! |
  f''4\ff d'' bes' g' |
  c'8( d' e' f' g' a' bes' g') |
}

vnII_sF = {
  f'4\ff( a'2 c''4 |
  d''4. c''8 a'4 g'8 f' |
  g'2 d'4 f' |
  a'4 g'2) bes4( |
  a4 c'2 f'4 |
  e'4. g'8 f'4 e'8 d' |
  des'4 f' f'4. e'8 |
  f'2)\mf( aes'4\> f' |
  f'2\p ees'4 des' |
  des'2 des'4 c' |
  bes2\> bes4 aes |
  aes1)\pp |
}

vnII_sG = {
  r8 des'8\pp~ des'4 r8 des'8~ des'4 |
  r8 des'8~ des'4 r8 des'8~ des'4 |
  r8 des'8~ des'4 r8 c'8~ c'4 |
  r8 des'8\<~ des'4 r8 e'8~ e'4\! |
  f'8\p a' c'' a' f' a' c'' a' |
  f'8 a' d'' a' f' a' d'' a' |
  f'8 a' c'' a' e' g' bes' g' |
  f'8\< a' c'' a' ees' a' c'' a'\! |
  f'8\f bes' d'' bes' f' g' d'' g' |
  f'8 a' c'' a' f' bes' des'' bes' |
  f'8\> a' c'' a' d'4 e' |
  c'2\p( d'4 c' |
  bes2\pp a4 g) |
  f'1\pp( |
  f'2 des'2 |
  c'1)\pp |
}

vnII_sH = {
  r4 f'4-.\p r4 f'4-. |
  r4 des'4-. r4 c'4-. |
  f'8-.\< a'-. c''4-- bes'8-. g'-. a'4-- |
  g'8-. bes'-. d''4-- c''8-. bes'-. a'4--\! |
  c''4-.\f r8 f''8~ f''4 e''8-. d''-. |
  bes'4-. r8 e''8~ e''4 d''8-. c''-. |
  a'8-.\< cis''-. d''-. e''-. f''-. e''-. f''-. g''-.\! |
  g''4-.\ff e''-. c''-. bes'-. |
  <a' f''>2\ff <c'' a''>2 |
  <f'' aes''>2 <des'' f''>2 |
  <c'' f''>2 <a' d''>2 |
  <bes' d''>2 <g' c''>2 |
  a'4-. <a' f''>2-> a'4-. |
  bes'4-. <bes' des''>2-> bes'4-. |
  a'4-. r <f' c'' f''>4-.\fff r |
  <f' c'' f''>2\fff-> r2 |
}

violinTwo = {
  \clef treble
  \vnII_sA
  \vnII_sB
  \vnII_sC
  \vnII_sD
  \vnII_sE
  \vnII_sF
  \vnII_sG
  \vnII_sH
}

% ==============================================================================
% VIOLA
% ==============================================================================

vla_sA = {
  R1*2 |
  r2 f2\p( |
  c'4 d' ees'2 |
  d'4 c' bes a) |
  bes4( g f d |
  ees2\< f4 des\!) |
  c2\mf( f4 aes |
  g2\> f4 fis |
  g2\p c'4 b) |
  bes2(\> aes4 g |
  g1)\pp\fermata |
}

vla_sB = {
  r8 c'8\p~ c'4 r8 c'8~ c'4 |
  r8 bes8~ bes4 r8 bes8~ bes4 |
  r8 bes8~ bes4 r8 a8~ a4 |
  r8 c'8~ c'4 r8 g8~ g4 |
  r8 a8\<~ a4 r8 a8~ a4\! |
  r8 a8\mf~ a4 r8 d'8~ d'4 |
  r8 bes8\>~ bes4 r8 b8~ b4 |
  r8 c'8\mp~ c'4 bes2 |
  f'8\mf a' c'' a' f' a' c'' a' |
  f'8 a' d'' a' g' bes' d'' bes' |
  ees'8 g' bes' g' ees' g' bes' g' |
  d'8 f' bes' f' c' e' bes' e' |
  c'8\< f' a' f' d' f' bes' f'\! |
  des'8\f f' bes' f' c' f' a' f' |
  bes8 d' g' d' c'4 g |
  f8( a c' a f4) r |
}

vla_sC = {
  r8 d'8\p~ d'4 r8 d'8~ d'4 |
  r8 d'8~ d'4 r8 e'8~ e'4 |
  f'4\mf( a'2 c''4 |
  d''4. c''8 bes'4 a'8 gis') |
  e8\mf\< a c' a e a c' a\! |
  f8\f a d' a f a d' a |
  e8\> gis b gis e gis b gis |
  e8\mp b d' b e4 r |
  r4 f'2\p( e'4 |
  gis2 a4 gis |
  e1\> |
  d'1)\pp |
}

vla_sD = {
  r8 a8\pp~ a4 r8 a8~ a4 |
  r8 fis8~ fis4 r8 fis8~ fis4 |
  r8 a8~ a4 r8 gis8~ gis4 |
  r8 a8~ a4 r8 gis8~ gis4 |
  r8 fis8\<~ fis4 r8 a8~ a4\! |
  r8 fis8\mp~ fis4 r8 f8~ f4 |
  r8 a8\>~ a4 r8 b8~ b4 |
  r8 a8\p~ a4 gis2 |
  e8\p a cis' a e a cis' a |
  fis8 a cis' a fis a cis' a |
  fis8 a d' a e gis d' gis |
  e8\< a cis' a e a cis' a\! |
  fis'8\f a' d'' a' fis' a' b' a' |
  e'8 a' cis'' a' f' a' d'' a' |
  e'8\> a' cis'' a' d'4 e' |
  cis'8\mp( a cis' a e4) r |
  r4 d'4-.\p r4 e'4-. |
  r4 c'4-. r4 cis'4-. |
  r4 e'4-.\< r4 gis'4-.\! |
  a'8-.\mf f'-. d'-. b-. a4-. r |
  cis'8-.\p e'-. a'4-- fis'8-. d'-. e'4-- |
  d'8-. bes-. g4-- cis'2( |
  cis'2\> d'4 bes |
  a1)\pp |
}

vla_sE = {
  r8 f8\pp~ f4 r8 f8~ f4 |
  r8 fis8~ fis4 r8 g8~ g4 |
  r8 bes8~ bes4 r8 bes8~ bes4 |
  r8 c'8~ c'4 r8 c'8~ c'4 |
  r8 des'8\mp~ des'4 r8 des'8~ des'4 |
  r8 c'8~ c'4 r8 des'8~ des'4 |
  r8 bes8\<~ bes4 r8 des'8~ des'4 |
  d'4\f c' a d'-. |
  g4-.\f bes8( a) g4-. d'-. |
  ees'4.( d'8) c'4-. bes8( a) |
  bes4-. g'2( f'8 e' |
  d'4 cis' d'4. c'8) |
  a4-. r c'-. a-. |
  d'4 e' f' d' |
  a4-. d'-. f'-. e'-. |
  d'4 c' d' c' |
  r2 f'4-. a'8( g') |
  f'4-. bes'-. aes'4.( f'8) |
  g'4-.\< bes'-. aes'-. fis'-.\! |
  g'2\ff g'4-. g'-. |
  r8 aes'8\f~ aes'4 r8 f'8~ f'4 |
  r8 g'8~ g'4 r8 e'8~ e'4 |
  r8 f'8~ f'4 r8 f'8~ f'4 |
  r8 d'8( c'4) r8 e'8~ e'4 |
  f'8\< a' d'' a' f' a' d'' a' |
  g'8 bes' c'' bes' g' bes' c'' bes'\! |
  d''4\ff bes' g' e' |
  bes8( a g a bes c' d' e') |
}

vla_sF = {
  f'8\f a' c'' a' f' a' c'' a' |
  f'8 bes' d'' bes' f' a' c'' a' |
  d'8 g' bes' g' d' g' bes' g' |
  e'8 g' c'' g' c' e' bes' e' |
  c'8 f' a' f' d' f' bes' f' |
  c'8 g' bes' g' c' f' a' f' |
  bes8 des' f' des' c'4 bes |
  a2\mf( c'4\> aes |
  aes2\p g4 f |
  bes2 aes4 ges |
  f2\> ges2 |
  ges1)\pp |
}

vla_sG = {
  r8 aes8\pp~ aes4 r8 aes8~ aes4 |
  r8 bes8~ bes4 r8 ges8~ ges4 |
  r8 aes8~ aes4 r8 aes8~ aes4 |
  r8 aes8\<~ aes4 r8 bes8~ bes4\! |
  c'8\p f' a' f' c' f' a' f' |
  d'8 f' a' f' d' f' a' f' |
  d'8 f' a' f' c' e' bes' e' |
  c'8\< f' a' f' c' f' a' f'\! |
  d'8\f f' bes' f' d' f' g' f' |
  c'8 f' a' f' des' f' bes' f' |
  c'8\> f' a' f' bes4 c' |
  a2\p( bes4 a |
  g2\pp f4 ees) |
  d'2\pp( des'2 |
  bes2 g2 |
  f1)\pp |
}

vla_sH = {
  r4 c'4-.\p r4 c'4-. |
  r4 aes4-. r4 a4-. |
  r4 f'4-.\< r4 f'4-. |
  d'4-. bes-. g'-. f'-.\! |
  a'8\f c'' f'' c'' a' c'' f'' c'' |
  g'8 bes' c'' bes' g' bes' c'' bes' |
  f'8-.\< g'-. a'-. bes'-. c''-. bes'-. c''-. d''-.\! |
  e''4-.\ff c''-. g'-. e'-. |
  f'8\ff a' c'' a' f' a' c'' a' |
  f'8 aes' des'' aes' f' bes' des'' bes' |
  f'8 a' c'' a' f' a' d'' a' |
  d'8 g' bes' g' c' e' bes' e' |
  f'4-. <f' c''>2-> f'4-. |
  f'4-. <des' g'>2-> e'4-. |
  f'4-. r <f c' a'>4-.\fff r |
  <f c' f'>2\fff-> r2 |
}

viola = {
  \clef alto
  \vla_sA
  \vla_sB
  \vla_sC
  \vla_sD
  \vla_sE
  \vla_sF
  \vla_sG
  \vla_sH
}

% ==============================================================================
% VIOLONCELLO
% ==============================================================================

vc_sA = {
  f,2\p( c4 d |
  ees2 d4 c |
  bes,2 a,4 g, |
  d,2 c,) |
  bes,1( |
  g,2 f,4 bes,) |
  g,2(\< bes,4 e,\!) |
  f,2\mf( d4 b, |
  c,1~\> |
  c,1~\p |
  c,1~\> |
  c,1)\pp\fermata |
}

vc_sB = {
  f,4\p^\markup { \italic "pizz." } r c r |
  bes,4 r d r |
  g,4 r bes, r |
  c4 r c, r |
  f,2\mf^\markup { \italic "arco" }( e,2 |
  d,2 bes,2 |
  g,2\> b,2 |
  c2\mp c,4) r |
  f,4\f( c a2~ |
  a4 f bes,2) |
  ees,2( g,4 bes, |
  c2 c,4) r |
  ees2(\< d2\! |
  des2\f c2 |
  bes,2 c,2) |
  f,4( c f,) r |
}

vc_sC = {
  d4\mf( f2 a4 |
  bes4. a8 g4 f8 e |
  d4) r ees,2( |
  d,2 gis,2) |
  e,1~\mf\< |
  e,1\f~ |
  e,2\> e2( |
  d2\mp cis4 b,) |
  e,1~\p |
  e,1~ |
  e,1\> |
  e,2.\pp r4 |
}

vc_sD = {
  \clef tenor
  cis'2\mp(\espressivo e'4 fis'8 gis' |
  a'2. gis'8 fis' |
  e'4 cis' d'4. b8 |
  cis'2.) b4( |
  a4\< cis' fis'4. e'8\! |
  d'4\mf b f'4. e'8 |
  e'4\> a' gis'4. e'8 |
  fis'2\p e'4) \clef bass e,4( |
  a,2.)\mp r4 |
  cis2\mf( e4 fis8 gis |
  a4 fis b, e |
  a,4\< e g,2)\! |
  fis,2\f( dis,2 |
  e,2 d,2 |
  e,2\> e,2) |
  a,4\mp( e a,) r |
  a,2\p~ a,4 e, |
  a,2~ a,4 e, |
  a,4\< cis d e\! |
  d,4\mf e, a,-. r |
  a,1~\p |
  a,1~ |
  a,1\> |
  a,2.\pp r4 |
}

vc_sE = {
  d,2\p( a,4 bes, |
  c2 bes,4 a, |
  g,2.) r4 |
  c2( f,2) |
  bes,2\mp( f4 ges |
  aes2 ges4 f |
  ees,2.\<) des,4( |
  d,2\f) d4-. r |
  R1*6 |
  d,4-.\ff f,8( e,) d,4-. a,-. |
  bes,4.( a,8) g,4-. f,8( e,) |
  f,4-. a,8( g,) f,4-. ees-. |
  d4-. bes,8( c) d4-. bes,-. |
  ees4-.\< g,-. aes,-. fis,-.\! |
  g,2\ff g,4-. b,-. |
  c,2\ff c4-. c-. |
  c,2 c4-. c-. |
  c,2 c4-. c-. |
  c,2 c4-. c-. |
  c,4\< c c, c |
  c,4 c c, c\! |
  c,8\ff c c, c c, c c, c |
  c,4 c-. g,-. c,-. |
}

vc_sF = {
  f,2\ff( c4 a, |
  bes,2 f,4 a, |
  g,2 bes,4 d |
  c2 c,4) r |
  ees2\f( d4 bes, |
  c2 d2 |
  bes,2 c2) |
  f,2\mf( f4\> c |
  des,1~\p |
  des,2 aes,2 |
  aes,1~\> |
  aes,2.)\pp r4 |
}

vc_sG = {
  des,2\pp( aes,2 |
  bes,2 ges,2 |
  aes,2 aes,2 |
  des,2\< c,2)\! |
  f,2.\mp r4 |
  \clef tenor
  a2\mf( c'4 d'8 e' |
  f'4 d' g' c' |
  f'4)\< \clef bass f,4( ees,2)\! |
  d2\f( b,2 |
  c2 bes,2 |
  c2\> c,2) |
  f,1~\p |
  f,1~ |
  f,1~\pp |
  f,1~ |
  f,2.\pp r4 |
}

vc_sH = {
  f,4\p^\markup { \italic "pizz." } r c, r |
  f,4 r c, r |
  f,4\mp^\markup { \italic "arco" }\< a, bes, f, |
  g,4 bes, c a,\! |
  d4-.\f c-. bes,-. a,-. |
  g,4-. c-. bes,-. c-. |
  f,4-.\< d-. c-. g,-.\! |
  c4-.\ff g,-. e,-. c,-. |
  f,2\ff a,4 f, |
  des,2 bes,2 |
  c2 d2 |
  bes,2 c,2 |
  f,4-. <f, c>2-> f,4-. |
  f,4-. <f, des>2-> c,4-. |
  f,4-. r <f, c a>4-.\fff r |
  <f, c f>2\fff-> r2 |
}

cello = {
  \clef bass
  \vc_sA
  \vc_sB
  \vc_sC
  \vc_sD
  \vc_sE
  \vc_sF
  \vc_sG
  \vc_sH
}

% ==============================================================================
% SCORE & OUTPUT
% ==============================================================================

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Violin I"
      shortInstrumentName = "Vn. I"
      midiInstrument = "violin"
    } << \globalKeys \globalMarks \violinOne >>

    \new Staff \with {
      instrumentName = "Violin II"
      shortInstrumentName = "Vn. II"
      midiInstrument = "violin"
    } << \globalKeys \violinTwo >>

    \new Staff \with {
      instrumentName = "Viola"
      shortInstrumentName = "Vla."
      midiInstrument = "viola"
    } << \globalKeys \viola >>

    \new Staff \with {
      instrumentName = "Violoncello"
      shortInstrumentName = "Vc."
      midiInstrument = "cello"
    } << \globalKeys \cello >>
  >>

  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }

  \midi { }
}