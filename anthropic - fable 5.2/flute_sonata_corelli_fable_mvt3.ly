\version "2.24.0"

globalTerzo = {
  \key f \major
  \time 4/4
  \tempo "Largo"
}

flautoTerzo = \relative c'' {
  \globalTerzo
  c4 d8.( e32 d) c4 c8 a |
  f'4 d c8 bes16 a g8.\trill f16 |
  f4 r8 c'8 f2~ |
  f4 f8.( g32 f) e4 g8. f16 |
  e8 d16 c f8 e16 d d4.\trill c8 |
  c4 r8 e8 f c e a~ |
  a4 bes~ bes8.( c32 bes) a4~ |
  a8.( bes32 a) g4~ g8.( a32 g) f4~ |
  f8.( g32 f) e4 g4.\trill f8 |
  f4 r8 c8 d4 e8.( d16) |
  c4 d8.( e32 d) c4 c8 a |
  f'4 d8.( e32 d) c8 bes16 a g8.\trill f16 |
  f4 r8 d'8 c8. b16 b8.\trill a16 |
  a4 c8 e~ e4 d\trill |
  e1\fermata
  \bar "|."
}

cembaloTerzo = {
  \globalTerzo
  <c' a'>4 <g bes g'>4 <g c' g'>4 <a c' g'>8 <a c' f'>8 |
  <a c' f'>4 <f d' f'>4 <a f'>4 <c' e'>4 |
  <a c' f'>4 <a c' f'>4 <a d' f'>4 <a d' f'>4 |
  <g d' g'>4 <g d' g'>4 <g c' e'>4 <g c' e'>4 |
  <a c' e'>4 <a c' d'>4 <g c' d'>4 <g b d'>4 |
  <g c' e'>4 <g' c''>4 <f' c''>4 <e' g' a'>4 |
  <f' d''>4 <f' d''>4 e'4 e'4 |
  d'4 d'4 c'4 c'4 |
  bes4 bes4 <g c' e'>4 <g bes e'>4 |
  <a c' f'>4 <c' f'>4 <bes f'>4 <g e'>4 |
  <a c'>4 <g bes g'>4 <g c' g'>4 <a c' g'>8 <a c' f'>8 |
  <a c' f'>4 <f d' f'>4 <a f'>4 <c' e'>4 |
  <a f'>4 <a d'>4 <a e'>4 <gis b e'>4 |
  <a c' e'>4 <a c' e'>4 <a a'>2 |
  <b e' a'>2 <b e' gis'>2\fermata
  \bar "|."
}

bassoTerzo = \relative c {
  \globalTerzo
  \clef bass
  f4 f e f |
  a,4 bes c c, |
  f4 a8 f d'4 d8 c |
  b4. g8 c4 e |
  a,4 f g g |
  c4 c'8 bes a4 cis |
  d4 d,8 d' c4 c,8 c' |
  bes4 bes,8 bes' a4 a,8 a' |
  g4 g,8 g' c,4 c, |
  f4 a bes c |
  f4 f e f |
  a,4 bes c c |
  d4 f e e, |
  a4 a'8 g f2 |
  e1\fermata
  \bar "|."
}

cifreTerzo = \figuremode {
  s4 <4 2>4 <6>4 <9>8 <8>8 |
  <6>4 s4 <6 4>4 <5 3>4 |
  s4 <6>8 s8 s4 s4 |
  <6 5>4. <7 _!>8 s4 <6>4 |
  s4 <6 5>4 <4>4 <_!>4 |
  s4 s8 <4 2>8 <6>4 <6 5>4 |
  s4 <6>4 <7>4 <6>4 |
  <7>4 <6>4 <7>4 <6>4 |
  <7>4 <6>4 s4 <7>4 |
  s4 <6>4 s4 s4 |
  s4 <4 2>4 <6>4 <9>8 <8>8 |
  <6>4 s4 <6 4>4 <5 3>4 |
  s4 <6>4 <6 4>4 <5! _+>4 |
  s4 s8 <4 2>8 <7>4 <6>4 |
  <5! 4>2 <_+>2
}

% \simultaneous { ... } is used in place of the double-angle-bracket shorthand.
\score {
  \simultaneous {
    \new Staff \with {
      instrumentName = "Flute"
      midiInstrument = "flute"
    } \flautoTerzo
    \new PianoStaff \with {
      instrumentName = "B.c."
    } \simultaneous {
      \new Staff \with { midiInstrument = "harpsichord" } \cembaloTerzo
      \new Staff \with { midiInstrument = "harpsichord" } \bassoTerzo
      \new FiguredBass \cifreTerzo
    }
  }
  \layout { }
  \midi { \tempo 4 = 46 }
}