\version "2.24.0"

\header {
  title = "String Quartet in G Major"
  subtitle = "II. Andante cantabile (in the style of W. A. Mozart)"
  composer = "Mozartian Style"
  tagline = ##f
}

\paper {
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  ragged-last-bottom = ##f
}

violinOne = {
  \clef treble
  \key c \major
  \time 3/4
  \tempo "Andante cantabile" 4 = 66

  % === EXPOSITION ===
  % Primary Theme (mm. 1-8)
  e''4\p( g''8. e''16 c''8. b'16) |
  b'8( a') a'4( c''8.\sf a'16) |
  g'4( c''8. e''16 a'16 c'' b' a') |
  a'8( g') g'4 r4 |
  e''4\p( g''8. e''16 a''8.\sf g''16) |
  g''16( f'') d''8 r16 a''( g'' f'') b'16( d'' g'' f'') |
  e''8.( f''32 g'' a''8) d''16( c'') b'8.\trill( a'32 b') |
  c''4 r4 r4 |

  % Transition (mm. 9-14)
  R2. |
  r4 g''4\p( fis''8 e'') |
  dis''8(\sf e'') b'4( cis''16 d'' e'' cis'') |
  d''4( a'4) c''!8.(\sf b'16) |
  b'8(\cresc e'') d''16( fis'' a'' fis'') e''8.\trill( d''32 e'') |
  d''4\f r8 d''8\p( c''!16 b' a' c'') |

  % Secondary Theme in G Major (mm. 15-24)
  b'4\p( d''8) r8 g''8.( fis''16) |
  fis''8( a'' c''4 b'8) r8 |
  r4 a''4( c''8. a'16) |
  g'8( b') d''4( b''8.\sf gis''16) |
  a''8( e'' c''8. a'16 g'8 fis') |
  g'4(\p b'16 d'' g'' b'' d'''8.\sf b''16) |
  c'''8(\cresc g'' e'' c'' bes'\sf g') |
  g'8(\p b'16 d'' g'' fis'' e'' d'' c'' b' a' g') |
  b'4( a'4.\trill g'16 a') |
  g'4 r4 r4 |

  % Codetta (mm. 25-28)
  e''8(\p d'') fis''4( g''8) r8 |
  a''8( c'') c''4( b'8) r8 |
  d''8( b' c'' a' g'4) |
  g'4 r8 g''8(\p f''!8 d'') |

  % === MIDDLE EPISODE & RETRANSITION ===
  % Dramatic Minor Episode (mm. 29-38)
  ees''4(\p c''4) r4 |
  r4 g''4\f( aes''!8. f''16) |
  e''!4( g''8 bes'' des'''16\sf c''' bes'' g'') |
  bes''8(\p aes'') f''4 r4 |
  r4 aes''4\p( g''8 f'') |
  f''8( ees'') bes'4 c''4~\cresc( |
  c''8 f'' d''8. c''16) b'!8.\trill( a'!32 b'!) |
  c'''4~\fp( c'''16 bes'' aes'' g'' f'' ees'' d'' c'') |
  b'!8( c'') ees''4(\cresc fis''!8. c'''16) |
  c'''4\f( g''8. ees''16 d''8. b'!16) |

  % Retransition on Dominant Pedal (mm. 39-44)
  g'4 r8 aes''!\p( g'' f''!) |
  f''8( ees'') d''8 d''( ees''!16 d'' cis'' d'') |
  f''8( e''!) d''8 g''( a''!16 g'' fis'' g'') |
  a''8(\cresc e'' f'' d'' g'' f'') |
  e''8(\p d'') d''8( dis'' e'' f''!) |
  fis''8( g'' gis'' a'' f''! d'') |

  % === RECAPITULATION ===
  % Primary Theme Ornamented (mm. 45-52)
  e''4\p( g''16 a'' g'' f'' e'' d'' c'' b') |
  b'8( a') a'8( c''16 f'' ees''\sf d'' c'' a') |
  g'4( e''16 d'' c'' b' a' c'' b' a') |
  a'8( g') g'4 r4 |
  e''4\p( g''16 bes'' a'' g'' a''\sf g'' f'' e'') |
  g''16( f'' d''8) r16 a''( g'' f'') b'16( d'' g'' f'') |
  e''8.( f''32 g'' a''16 f'' d'' c'') b'8.\trill( a'32 b') |
  c''4 r4 r4 |

  % Transition (mm. 53-58)
  R2. |
  r4 c'''4\p( b''8 a'') |
  gis''8(\sf a'') e''4( fis''16 g'' a'' fis'') |
  g''4( d''4) f''!8.(\sf e''16) |
  e''8(\cresc a'') g''16( b'' d''' b'') a''8.\trill( g''32 a'') |
  g''4\f r8 g''8\p( f''!16 e'' d'' f'') |

  % Secondary Theme in C Major (mm. 59-68)
  e''4\p( g''8) r8 c'''8.( b''16) |
  b''8( d''' f''4 e''8) r8 |
  r4 d'''4( f''8. d''16) |
  c''8( e'') g''4( bes''!8.\sf g''16) |
  a''8( f'' d''8. c''16 c''8 b') |
  c''4(\p c'''16 b'' a'' g'' g''8.\sf e''16) |
  f''8(\cresc a'' c''' f'' ees''!\sf c'') |
  c''8(\p e''16 g'' c''' b'' a'' g'' f'' e'' d'' c'') |
  e''4( d''4.\trill c''16 d'') |
  c''4 r4 r4 |

  % === CODA (mm. 69-78) ===
  r4 f''4\p( c'''8.\sf aes''!16) |
  g''4( e''8 c'' d'' b') |
  \tuplet 3/2 { c''8(\p e'' g'' } \tuplet 3/2 { a'' f'' c'' } \tuplet 3/2 { ees''!\sf c'' a') } |
  g'4(\p d''8. b'16 f''8. d''16) |
  c''4 r4 r4 |
  R2. |
  R2. |
  c''4\pp( e''8. c''16 g''8. e''16) |
  c'''4 r4 d''8(\pp b') |
  c''2.\fermata \bar "|."
}

violinTwo = {
  \clef treble
  \key c \major
  \time 3/4

  % === EXPOSITION ===
  % Primary Theme (mm. 1-8)
  c'8\p( g' e' g' c' g') |
  c'8( f' a' f' ees'\sf c') |
  e'8( g' c'' g') d'4 |
  d'4( b f'!) |
  e'8\p( g' c'' g') g'(\sf e') |
  f'8( a' d'' a' g' d') |
  g'4( f' d'8 f') |
  e'4 g'8(\p c'' g' e') |

  % Transition (mm. 9-14)
  r16 g'(\p c'' g') r16 g'( d'' g') r16 g'( b' g') |
  r16 g'( c'' g') e'4 r4 |
  r16 g'(\p b' g') r16 g'( b' g') r16 a'( cis'' a') |
  r16 a'( d'' a') r16 a'( d'' a') r16 a'(\sf fis' a') |
  g'8(\cresc b') fis'4 g'4 |
  fis'4\f r4 fis'8(\p a') |

  % Secondary Theme in G Major (mm. 15-24)
  g'4\p( b'8) r8 b'8.( a'16) |
  a'8( c'' fis'4 g'8) r8 |
  e''4( c''8 a' fis' d') |
  b'8( g') g'4( f'!4\sf) |
  e'4( a' fis') |
  g'4(\p b'8 a' g'4) |
  g'8(\cresc e' c' e' g'\sf e') |
  g'4(\p g' a') |
  g'4( fis'2) |
  g'4 \tuplet 3/2 { r8 d'(\p g' } \tuplet 3/2 { b' g' d') } |

  % Codetta (mm. 25-28)
  \tuplet 3/2 { d'8( fis' a' } \tuplet 3/2 { c'' a' fis') } \tuplet 3/2 { g'8( b' d'') } |
  \tuplet 3/2 { d'8( c' a } \tuplet 3/2 { fis' d' c') } \tuplet 3/2 { b8( d' g') } |
  b'8( g' a' fis' g'4) |
  g'4 r4 b'4\p |

  % === MIDDLE EPISODE & RETRANSITION ===
  % Dramatic Minor Episode (mm. 29-38)
  c''8(\p g' ees' g' c' g') |
  f'2(\f ees'4) |
  e'!4( g'2\sf) |
  f'4(\p c'4) f''4~( |
  f''8 d'' bes'4 aes'8 f') |
  g'4( ees'4) ees''4~\cresc( |
  ees''8 d'') aes'4( g'4) |
  c''8(\fp aes' ees' aes' c'' aes') |
  fis'!8(\cresc ees' c' ees' fis' ees') |
  g'2\f( f'!4) |

  % Retransition on Dominant Pedal (mm. 39-44)
  f'!4(\p fis'! g') |
  aes'!2( g'4) |
  g'2( f'!4) |
  e'!4(\cresc f'4. d'8) |
  g'8(\p f') f'4 r4 |
  b'4\pp( c'' d''8 b') |

  % === RECAPITULATION ===
  % Primary Theme Ornamented (mm. 45-52)
  c''16(\p g' e' g' c'' g' e' g' c'' g' c' g') |
  c'16( f' a' f' c' f' a' f' ees'\sf c' a' c') |
  e'16( g' c'' g' e' g' c'' g' d' fis' a' d') |
  g'8( d') d'4( f'!4) |
  e'16(\p g' c'' g' e' g' c'' g' g'\sf e' cis' e') |
  f'16( a' d'' a' f' a' d'' a' g' d' b d') |
  g'4( f' d'8 f') |
  e'4 g'8(\p c'' g' e') |

  % Transition (mm. 53-58)
  r16 g'(\p bes'! g') r16 a'( c'' a') r16 c''( f'' c'') |
  r16 a'( c'' a') f'4 r4 |
  r16 c''(\p e'' c'') r16 c''( e'' c'') r16 d''( fis'' d'') |
  r16 d''( g'' d'') r16 d''( g'' d'') r16 d''(\sf b' d'') |
  c''8(\cresc a') b'4 c''4 |
  b'4\f r4 b'8(\p d'') |

  % Secondary Theme in C Major (mm. 59-68)
  c''4\p( e''8) r8 e''8.( d''16) |
  d''8( f'' b'4 c''8) r8 |
  a''4( f''8 d'' b' g') |
  e''8( c'') c''4( g'4\sf) |
  a'4( d'' b') |
  a'4(\p e''8 d'' c''4) |
  c''8(\cresc a' f' a' c''\sf a') |
  c''4(\p c'' d'') |
  c''4( b'2) |
  c''4 \tuplet 3/2 { r8 g'(\p c'' } \tuplet 3/2 { bes'! c'' g') } |

  % === CODA (mm. 69-78) ===
  \tuplet 3/2 { a'8( c'' f'' } \tuplet 3/2 { c'' a' f') } \tuplet 3/2 { aes'!8(\sf c'' f'') } |
  \tuplet 3/2 { g'8( c'' e'' } \tuplet 3/2 { c'' g' e') } \tuplet 3/2 { g'8( b' d'') } |
  g'4(\p a' a'\sf) |
  g'2(\p f'4) |
  e'4 r4 r4 |
  R2. |
  g'4\pp( c''8. g'16 e'4) |
  e'2.~ |
  e'4 r4 f'4\pp |
  e'2.\fermata \bar "|."
}

viola = {
  \clef alto
  \key c \major
  \time 3/4

  % === EXPOSITION ===
  % Primary Theme (mm. 1-8)
  g4\p( c'2) |
  c'2( c'4\sf) |
  c'4( g c') |
  c'8( b) b4( g4) |
  g2\p( a4\sf) |
  a2( b4) |
  c'4( c'8 a g4) |
  g4 e'8(\p g' e' c') |

  % Transition (mm. 9-14)
  e'4(\p f' d') |
  c'8( g) c'4 r4 |
  b2\p( e'4) |
  d'2( b4\sf) |
  b4\cresc d'4 cis'4 |
  d'4\f r4 d'4\p |

  % Secondary Theme in G Major (mm. 15-24)
  r16 b(\p d' b) r16 b( d' b) r16 d'( g' d') |
  r16 d'( fis' d') r16 d'( fis' d') r16 d'( g' d') |
  r16 c'( e' c') r16 c'( e' c') r16 c'( fis' c') |
  b8( d' g' d' b\sf d') |
  c'4( a c') |
  b2(\p d'4) |
  c'4(\cresc e' e'\sf) |
  d'4(\p b e') |
  d'2( c'4) |
  b4 r4 r4 |

  % Codetta (mm. 25-28)
  a2(\p g4) |
  fis2( g4) |
  d4( c b,) |
  b,4 r4 g'4\p |

  % === MIDDLE EPISODE & RETRANSITION ===
  % Dramatic Minor Episode (mm. 29-38)
  ees'4(\p g' c') |
  d'8(\f f' aes'! f' ees' c') |
  g8( bes e'! bes g\sf c') |
  f8(\p aes c' aes c' aes) |
  f8( bes d' bes f' bes) |
  ees'8( bes g bes g\cresc c') |
  aes4( c' d') |
  ees'8(\fp c' aes c' ees' c') |
  ees'8(\cresc c' aes c' ees' c') |
  ees'2\f( b!4) |

  % Retransition on Dominant Pedal (mm. 39-44)
  r16 b!(\p d' b) r16 c'( ees' c') r16 b!( d' b) |
  r16 c'( ees' c') r16 b!( d' b) r16 b( d' b) |
  r16 c'( e'! c') r16 b( d' b) r16 b( d' b) |
  c'4(\cresc a b) |
  c'8(\p b) b4 r4 |
  r4 r4 f'4\pp |

  % === RECAPITULATION ===
  % Primary Theme Ornamented (mm. 45-52)
  e'4\p( c' g) |
  a2( c'4\sf) |
  c'4( g c') |
  c'8( b) b4( g4) |
  g2\p( a4\sf) |
  a2( b4) |
  c'4( c'8 a g4) |
  g4 e'8(\p g' e' c') |

  % Transition (mm. 53-58)
  e'4(\p g'8 f' bes a) |
  a4( f4) r4 |
  e'2\p( a'4) |
  g'2( e'4\sf) |
  e'4\cresc g'4 fis'4 |
  g'4\f r4 g4\p |

  % Secondary Theme in C Major (mm. 59-68)
  r16 e'(\p g' e') r16 e'( g' e') r16 g'( c'' g') |
  r16 g'( b' g') r16 g'( b' g') r16 g'( c'' g') |
  r16 f'( a' f') r16 f'( a' f') r16 f'( b' f') |
  e'8( g' c'' g' e'\sf g') |
  f'4( d' f') |
  e'2(\p g'4) |
  f'4(\cresc a' a'\sf) |
  g'4(\p e' a') |
  g'2( f'4) |
  e'4 r4 g'4\p( |

  % === CODA (mm. 69-78) ===
  a'2 aes'!4\sf) |
  g'2( f'4) |
  c'2.\p |
  c'4(\p b8 c' d' b) |
  c'4 r4 r4 |
  e'4\p( g'8. e'16 c'4) |
  g2.\pp~ |
  g2.~ |
  g4 r4 g4\pp |
  g2.\fermata \bar "|."
}

cello = {
  \clef bass
  \key c \major
  \time 3/4

  % === EXPOSITION ===
  % Primary Theme (mm. 1-8)
  c2\p( e4) |
  f2( fis4\sf) |
  g2( fis4) |
  g4( g,4) r4 |
  c2\p( cis4\sf) |
  d2( f4) |
  e4( f g) |
  c4 r4 r4 |

  % Transition (mm. 9-14)
  c'4\p( b8 a g f) |
  e8( c) c4 r4 |
  e2\p( g4) |
  fis2( dis4\sf) |
  e4\cresc a4 a,4 |
  d4\f r4 r4 |

  % Secondary Theme in G Major (mm. 15-24)
  g4\p r4 b,4 |
  c2( b,4) |
  a,2( d4) |
  g,2( gis,4\sf) |
  a,4( c d) |
  e2\p( f!4) |
  e4(\cresc c cis\sf) |
  d4(\p e c) |
  d2( d,4) |
  g,4 r4 r4 |

  % Codetta (mm. 25-28)
  g,2.\p~ |
  g,2( g4) |
  d4( d, g,) |
  g,4 r4 r4 |

  % === MIDDLE EPISODE & RETRANSITION ===
  % Dramatic Minor Episode (mm. 29-38)
  c4\p c'4\f( ees'8. c'16) |
  b4( d'8 b c' g) |
  c2( bes,4\sf) |
  aes,2\p( f,4) |
  bes,2( aes,4) |
  g,2( c4\cresc) |
  f2( g,4) |
  aes,2.\fp |
  aes,2.\cresc |
  g,2\f( g4) |

  % Retransition on Dominant Pedal (mm. 39-44)
  g,4\p r4 g,4 |
  g,4 r4 g,4 |
  g,4 r4 g,4 |
  g,2.\cresc |
  g,4\p r4 r4 |
  r4 r4 g,4\pp |

  % === RECAPITULATION ===
  % Primary Theme Ornamented (mm. 45-52)
  c2\p( e4) |
  f2( fis4\sf) |
  g2( fis4) |
  g4 g8(\p f! e d) |
  c2( cis4\sf) |
  d2( f4) |
  e4( f g) |
  c4 r4 r4 |

  % Transition (mm. 53-58)
  c'4\p( bes!8 a g f) |
  f4( f,4) r4 |
  a,2\p( c4) |
  b,2( gis,4\sf) |
  a,4\cresc d4 d,4 |
  g,4\f r4 r4 |

  % Secondary Theme in C Major (mm. 59-68)
  c4\p r4 e4 |
  f2( e4) |
  d2( g,4) |
  c2( cis4\sf) |
  d4( f g) |
  a,2\p( bes,!4) |
  a,4(\cresc f fis\sf) |
  g4(\p a, f) |
  g2( g,4) |
  c4 r4 c4~\p |

  % === CODA (mm. 69-78) ===
  c2.~ |
  c2. |
  e4(\p f fis\sf) |
  g2(\p g,4) |
  c4\p( e8. c16 g,4) |
  c2.\>~ |
  c2.\pp~ |
  c2.~ |
  c4 r4 c4\pp |
  c2.\fermata \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Violin I"
      shortInstrumentName = "Vln. I"
      midiInstrument = "violin"
    } \violinOne

    \new Staff \with {
      instrumentName = "Violin II"
      shortInstrumentName = "Vln. II"
      midiInstrument = "violin"
    } \violinTwo

    \new Staff \with {
      instrumentName = "Viola"
      shortInstrumentName = "Vla."
      midiInstrument = "viola"
    } \viola

    \new Staff \with {
      instrumentName = "Violoncello"
      shortInstrumentName = "Vc."
      midiInstrument = "cello"
    } \cello
  >>

  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }

  \midi { }
}