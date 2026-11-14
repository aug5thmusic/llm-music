\version "2.24.0"

globalAllegro = {
  \key a \minor
  \time 4/4
  \tempo "Allegro"
}

flautoAllegro = \relative c'' {
  \globalAllegro
  \repeat volta 2 {
    \partial 8 e8 |
    f8 g16( f) e8 c a'8 f e16 d c b |
    a4 r8 e'8 f16 e d c b8 g'8 |
    a8 b16( a) g8 e c'8 a g16 f e d |
    c4 r8 g'8 a16 g f e d8 g8 |
    g8 a16( g) e8 c fis8 g16( fis) d8 a |
    fis'8 g16( fis) d8 b e8 fis16( e) c8 g |
    e'8 fis16( e) c8 a dis8 e16( dis) b8 dis |
    e4 r8 b8 e16 fis g a b4 |
    c8 a g16 fis e g fis4.\trill e8 |
    e2. r8
  }
  \repeat volta 2 {
    b'8 |
    c8 d16( c) b8 g e'8 c b16 a g fis |
    e4 r8 e8 g16 f e d cis8 e8 |
    d16 e f g a8 f b,16 c d e f8 d |
    c16 d e f g8 e a,16 b c d e8 c |
    b16 c d e f8 d gis,16 a b c d8 b |
    c4 r8 e8 f16 e d c a8 d8 |
    e16 gis b gis e a c a e gis b gis e8 e8 |
    f8 g16( f) e8 c a'8 f e16 d c b |
    a16 c f a g e c e c e a c a e c e |
    f8 d c16 b a c b4.\trill a8 |
    a2.\fermata r8
  }
}

cembaloAllegro = {
  \globalAllegro
  \repeat volta 2 {
    \partial 8 <c' e' a'>8 |
    <b d' b'>4 <b e' b'>8 <c' e' a'>8 <c' e' a'>8 <a f' a'>8 <c' a'>8 <b e' gis'>8 |
    <c' e' a'>4 <c' e' a'>4 <d' a'>4 <b d' g'>4 |
    <d' f'>4 <d' g'>8 <e' g'>8 <c' g'>8 <c' f' a'>8 <c' e'>8 <b d'>8 |
    <c' e' g'>4 <c' g'>4 <a f'>4 <b d'>4 |
    <c' c''>4 <c' e' c''>4 <d' fis' c''>4 <d' fis' c''>4 |
    <d' g' b'>4 <d' g' b'>4 <c' g' b'>4 <c' g' b'>4 |
    <c' fis' a'>4 <c' fis' a'>4 <b a'>4 <b a'>4 |
    <b e' g'>4 <g' b'>4 <g' b'>4 <e' g' b'>4 |
    <e' a'>4 <c' e' fis'>4 <e' b'>4 <dis' a'>4 |
    <b e' g'>2. r8
  }
  \repeat volta 2 {
    <g' b'>8 |
    <fis' a' fis''>4 <fis' b' fis''>8 <g' b' e''>8 <g' b' e''>8 <e' c'' e''>8 <g' e''>8 <b' dis''>8 |
    <g' b' e''>4 <e' g' b'>4 <e' g' a'>4 <e' g' a'>4 |
    <f' a'>4 <d' f' a'>4 <d' g' b'>4 <d' g' b'>4 |
    <e' g' b'>4 <e' g' b'>4 <c' f' a'>4 <c' f' a'>4 |
    <d' f' a'>4 <d' f' a'>4 <b e' gis'>4 <b e' gis'>4 |
    <a e' a'>4 <c' e' a'>4 <a a'>4 <a a'>4 |
    <b e' gis'>4 <c' e' a'>4 <b e' gis'>4 <b e' gis'>8 <c' e' a'>8 |
    <b d' b'>4 <b e' b'>8 <c' e' a'>8 <c' e' a'>8 <a f' a'>8 <c' a'>8 <e' gis'>8 |
    <c' a'>4 <c' e' c''>4 <c' e' a'>4 <c' e' a'>4 |
    <a d' a'>4 <b f' a'>4 <b a'>4 <b d' gis'>4 |
    <c' e' a'>2.\fermata r8
  }
}

bassoAllegro = \relative c' {
  \globalAllegro
  \clef bass
  \repeat volta 2 {
    \partial 8 a8 |
    a4 gis8 a c,8 d e e, |
    a4 a'8 g f4 g |
    c4 b8 c e,8 f g g, |
    c4 e f g |
    a4 a, d d, |
    g'4 g, c c, |
    fis'4 fis, b' b, |
    e4 e' e d |
    c4 a b b, |
    e2. r8
  }
  \repeat volta 2 {
    e'8 |
    e4 dis8 e g,8 a b b, |
    e4 e8 d cis4 a |
    d4 d, g' g, |
    c4 c, f' f, |
    b4 b' e, e, |
    a4 a'8 g f4 f |
    e4 e, e' e,8 a' |
    a4 gis8 a c,8 d e e, |
    f'4 e a g |
    f4 d e e, |
    a2.\fermata r8
  }
}

cifreAllegro = \figuremode {
  \repeat volta 2 {
    \partial 8 s8 |
    <4 2>4 <6>8 s8 <6>8 s8 <6 4>8 <_+>8 |
    s4 s4 <6>4 s4 |
    <4 2>4 <6>8 s8 <6>8 s8 <6 4>8 <5 3>8 |
    s4 <6>4 s4 s4 |
    <7>4 s4 <7 _+>4 s4 |
    <7+>4 s4 <7>4 s4 |
    <7>4 s4 <7 _+>4 s4 |
    s4 s4 s4 <4 2>4 |
    <6>4 <6+ 5>4 <4>4 <7 _+>4 |
    s2. s8
  }
  \repeat volta 2 {
    s8 |
    <4 2+>4 <6 _+>8 s8 <6>8 s8 <6 4>8 <_+>8 |
    s4 s4 <6 5>4 <7 _+>4 |
    s4 s4 <7>4 s4 |
    <7>4 s4 <7>4 s4 |
    <7>4 s4 <7 _+>4 s4 |
    s4 s4 <6>4 <6>4 |
    <_+>4 <6 4>4 <_+>4 <_+>8 s8 |
    <4 2>4 <6>8 s8 <6>8 s8 <6 4>8 <_+>8 |
    s4 <6>4 s4 <4 2>4 |
    <6>4 <6 5>4 <5 4>4 <7 _+>4 |
    s2. s8
  }
}

% \simultaneous { ... } is used in place of the double-angle-bracket shorthand.
\score {
  \simultaneous {
    \new Staff \with {
      instrumentName = "Flute"
      midiInstrument = "flute"
    } \flautoAllegro
    \new PianoStaff \with {
      instrumentName = "B.c."
    } \simultaneous {
      \new Staff \with { midiInstrument = "harpsichord" } \cembaloAllegro
      \new Staff \with { midiInstrument = "harpsichord" } \bassoAllegro
      \new FiguredBass \cifreAllegro
    }
  }
  \layout { }
  \midi { \tempo 4 = 96 }
}