\version "2.24.0"

global = {
  \key a \minor
  \time 3/2
  \tempo "Largo"
}

flauto = \relative c'' {
  \global
  \repeat volta 2 {
    \partial 2 e2 |
    f2. g8( f) e2~ |
    e4 c a'2 f2 |
    e2 d4 c b4.\trill a8 |
    a1 c2 |
    d2. e8( f) e2 |
    f2. g8( a) g2 |
    c4 b a g8( f) e4 d\trill |
    c1
  }
  \repeat volta 2 {
    g'2 |
    a2. g8( f) g2 |
    e4 g c2. a4 |
    g2 f2 e4.\trill d8 |
    d1 f2~ |
    f4 g8( f) e2~ e4 f8( e) |
    d2~ d4 e8( d) c2 |
    a'2. g8( f) e4 d |
    e1 e2 |
    f2. g8( f) e2~ |
    e4 c a'2 f4. e8 |
    e2 d4 c b4.\trill a8 |
    a1\fermata
  }
}

cembalo = {
  \global
  \repeat volta 2 {
    \partial 2 <c' e' a'>2 |
    <b d' b'>1 <b e' b'~>2 |
    <c' e' b'>2 <c' e' a'>2 <a f' a'>2 |
    <c' a'~>2 <b e' a'>2 <b e' gis'>2 |
    <c' e' a'>1 <e' a'>2 |
    <d' g'>1 <e' g' c''>2 |
    <c' a' c''~>2 <d' f' c''>2 <d' g' b'>2 |
    <g' c''>2 <d' a' c''~>2 <g' c''>4 <d' g' b'>4 |
    <e' g' c''>1
  }
  \repeat volta 2 {
    <e' g'>2 |
    <d' f'>1 <d' f' g'>2 |
    <c' e' g'>2 <c' e' g'>2 <c' f'>2 |
    <d' g' d''>2 <d' a' d''>2 <e' a' cis''>2 |
    <f' a' d''>1 <d' f' a'>2 |
    <d' g' b'~>2 <e' g' b'>2 <c' f' a'~>2 |
    <d' f' a'>2 <b e' gis'>2 <c' e' a'>2 |
    <c' e' a'>1 <a a'~>2 |
    <b e' a'>2 <b e' gis'>2 <c' e' a'>2 |
    <b d' b'>1 <b e' b'~>2 |
    <c' e' b'>2 <c' e' a'>2 <a f' a'>2 |
    <c' a'~>2 <b e' a'>2 <b e' gis'>2 |
    <c' e' a'>1\fermata
  }
}

basso = \relative c' {
  \global
  \clef bass
  \repeat volta 2 {
    \partial 2 a2 |
    a1 gis2 |
    a2 c,2 d2 |
    e2 e,1 |
    a1 a'2 |
    b1 c2 |
    a2 d,2 g2 |
    e2 f2 g2 |
    c,1
  }
  \repeat volta 2 {
    c'2 |
    c1 b2 |
    c2 bes2 a2 |
    bes2 a2 a,2 |
    d1 d2 |
    g2 c,2 f2 |
    b,2 e2 a2 |
    g1 f2 |
    e1 a2 |
    a1 gis2 |
    a2 c,2 d2 |
    e2 e,1 |
    a1\fermata
  }
}

cifre = \figuremode {
  \repeat volta 2 {
    \partial 2 s2 |
    <4 2>1 <6>2 |
    <9>2 <6>2 <3>2 |
    <6 4>2 <5 4>2 <_+>2 |
    s1 s2 |
    <6>1 s2 |
    <6>2 <7>2 s2 |
    <6>2 <6 5>2 <6 4>4 <5 3>4 |
    s1
  }
  \repeat volta 2 {
    s2 |
    <4 2>1 <6 5>2 |
    s2 <4 2>2 <6>2 |
    <6>2 <6 4>2 <_+>2 |
    s1 s2 |
    <7>2 <7>2 <7>2 |
    <7>2 <7 _+>2 s2 |
    <4 2>1 <7>4 <6>4 |
    <5 4>2 <_+>2 s2 |
    <4 2>1 <6>2 |
    <9>2 <6>2 <3>2 |
    <6 4>2 <5 4>2 <_+>2 |
    s1
  }
}

% \simultaneous { ... } is used in place of the double-angle-bracket shorthand.
\score {
  \simultaneous {
    \new Staff \with {
      instrumentName = "Flute"
      midiInstrument = "flute"
    } \flauto
    \new PianoStaff \with {
      instrumentName = "B.c."
    } \simultaneous {
      \new Staff \with { midiInstrument = "harpsichord" } \cembalo
      \new Staff \with { midiInstrument = "harpsichord" } \basso
      \new FiguredBass \cifre
    }
  }
  \layout { }
  \midi { \tempo 2 = 52 }
}