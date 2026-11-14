\version "2.24.0"

\header {
  title = "String Quartet in G Major"
  subtitle = "I. Allegro (in the style of W. A. Mozart)"
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
  \key g \major
  \time 4/4
  \tempo "Allegro" 4 = 132

  % === EXPOSITION ===
  \repeat volta 2 {
    % Primary Theme (mm. 1-8)
    g''2\p( d''4 b') |
    c''4.( d''16 e'' a'4) r4 |
    fis''2( d''4 a') |
    c''4( b'8 a' b'4) r4 |
    e''4.( fis''8 g''4 e'') |
    d''4( g''8 d'' b'4 g') |
    e''8(\cresc c'' a' fis') g''( d'' b' a') |
    g'4\f r4 r8 d''\f( e'' fis'') |

    % Transition (mm. 9-20)
    g''4.( d''8 b'4-. g'-.) |
    e''4.( c''8 a'4-. fis'-.) |
    g'8 b'16 c'' d''8-. b'-. g''8 fis''16 e'' d''8-. c''-. |
    b'8 d''16 cis'' d''8-. fis''-. a''4-. e''-. |
    a''16( g'' fis''8) r4 fis''16( e'' d''8) r4 |
    d''16( cis'' b'8) r4 b''16( a'' g''8) r4 |
    f''2\sf( e''8 d'' b' gis') |
    a'8 b'16 cis'' d''8-. e''-. fis''-. gis''-. a''-. e''-. |
    d''8( fis'' b' d'') cis''( a' b' gis') |
    a'4-. e''-. cis''-. a'-. |
    e''4-. gis''-. a''-. e''-. |
    a'4-.\f a''-. a'-. r4 |

    % Secondary Theme in D Major (mm. 21-32)
    fis''2\p( g''8 fis'' e'' d'') |
    b'4( d''16 cis'' b'8 a'4) r4 |
    g''2( a''8 g'' fis'' e'') |
    g''4( fis''16 e'' d''8 a'4) r4 |
    fis''4\p( a''8 fis'' d''4 b') |
    d''4( cis''8 b' cis''4) fis''4\sf( |
    g''8 fis'' e'' d'' cis'' b' a' g') |
    fis'8(\cresc d'' cis'' d'' e'' d'' fis'' d'') |
    g''16(\f fis'' g'' a'' b''8-.) g''-. e''16( dis'' e'' fis'' g''8-.) e''-. |
    d''16( cis'' d'' e'' fis''8-.) d''-. a''16( gis'' a'' b'' a''8-.) fis''-. |
    g''8( fis''16 e'' d''8-. b'-.) e''4.\trill( d''16 e'') |
    d''4\f r4 r8 a'\p( b' cis'') |

    % Closing Theme (mm. 33-40)
    d''4-. fis''-. a'-. g''-. |
    fis''8( e'' d'' cis'' d''8) a'\f( b' cis'') |
    d''4-. fis''-. a''-. g''-. |
    fis''16( d'' a' fis'' e'' cis'' a' e'') d''4-. fis''-. |
    g''16( fis'' e'' d'' cis'' b' a' g') fis'8-. d''-. e''-. cis''-. |
    d''4-. a'16( b' cis'' d'' e''8-.) a'-. fis''-. a'-. |
    g''8-. a'-. e''-. a'-. fis''4-. d''-. |
    d''4-.\f <d' a' fis''>4-. d''4-. r4 |
  }

  % === DEVELOPMENT ===
  % Minor Shift & Dialogue (mm. 41-44)
  d''2\p( a'4 f') |
  gis'4.(\sf b'8 d''4) r4 |
  c''4(\f a' e'' c'') |
  c''4.(\sf a'8 fis'4) r4 |

  % Contrapuntal Core (mm. 45-52)
  e''2\f( b'4 g') |
  a'8( b' c'' d'' e'' d'' c'' b') |
  c''8( d'' e''4) r8 e''( a'' e'') |
  fis''2\f( c''4 a') |
  b'8( c'' d'' b') g''( f'' d'' b') |
  e''16( d'' c'' d'' e'' f'' g'' a'' b''8-.) g''-. c'''-. g''-. |
  a''16(\sf g'' fis'' e'' dis'' e'' fis'' dis'' e''8-.) c''-. a'-. fis'-. |
  dis'8(\f fis' b' dis'' fis''8-.) dis''-. b'-. a'-. |

  % Shadow Episode & German +6 (mm. 53-56)
  g'8\p( b' e'' b' g'' b' e'' b') |
  a'8( c'' fis'' c'' a'' c'' fis'' c'') |
  g''8(\cresc e'' b' g' e'' c'' g' e') |
  g''4(\f ees''4 cis''2\sf) |

  % Retransition on V Pedal (mm. 57-64)
  d''4(\f g''8 d'' c''4 a') |
  bes''4(\p g''8 d'' c''4 a') |
  fis''2\p( c''4 a') |
  g''4( b' a' c'') |
  fis''4( a'' g'' c'') |
  b'4-. d''-. fis''-. a''-. |
  c'''4(\p a''8 fis'' d''4 c''8 a') |
  b'8( c'' cis'' d'' dis'' e'' f'' fis'') |

  % === RECAPITULATION ===
  % Primary Theme (mm. 65-72)
  g''2\p( d''4 b') |
  c''4.( d''16 e'' a'4) r4 |
  fis''2( d''4 a') |
  c''4( b'8 a' b'4) r4 |
  e''4.( fis''8 g''4 e'') |
  d''4( g''8 d'' b'4 g') |
  e''8(\cresc c'' a' fis') g''( d'' b' a') |
  g'4\f r4 r8 d''\f( e'' fis'') |

  % Transition (mm. 73-84)
  g''4.( d''8 b'4-. g'-.) |
  e''4.( c''8 a'4-. fis'-.) |
  g'8 b'16 c'' d''8-. f''-. e''8 d''16 c'' b'8-. d''-. |
  c''8 e''16 d'' c''8-. e''-. d''4-. fis''-. |
  d''16( c'' b'8) r4 b''16( a'' g''8) r4 |
  g''16( fis'' e''8) r4 e''16( d'' c''8) r4 |
  bes''2\sf( a''8 g'' e'' cis'') |
  d''8 e''16 fis'' g''8-. a''-. b''-. cis'''-. d'''-. a''-. |
  g''8( b'' e'' g'') fis''( d'' e'' cis'') |
  d''4-. a''-. fis''-. d''-. |
  a''4-. cis'''-. d'''-. a''-. |
  d''4-.\f <d' a' fis''>4-. d''4-. r4 |

  % Secondary Theme in G Major (mm. 85-96)
  R1 |
  R1 |
  c'''2\p( d'''8 c''' b'' a'') |
  c'''4( b''16 a'' g''8 d''4) r4 |
  b'4\p( d''8 b' g'4 e') |
  g'4( fis'8 e' fis'4) b''4\sf( |
  c'''8 b'' a'' g'' fis'' e'' d'' c'') |
  b'8(\cresc g'' fis'' g'' a'' g'' b'' g'') |
  c''16(\f b' c'' d'' e''8-.) c''-. a''16( gis'' a'' b'' c'''8-.) a''-. |
  d''16( cis'' d'' e'' g''8-.) d''-. b''16( ais'' b'' c''' b''8-.) g''-. |
  c'''8( b''16 a'' g''8-. e''-.) a''4.\trill( g''16 a'') |
  g''4\f r4 r8 d''\p( e'' fis'') |

  % Closing Theme & Coda (mm. 97-108)
  g''4-. b''-. d''-. c'''-. |
  b''8( a'' g'' fis'' g''8) d''\f( e'' fis'') |
  g''4-. b''-. d'''-. c'''-. |
  b''16( g'' d'' b'' a'' fis'' d'' a'') g''4-. b''-. |
  c'''16( b'' a'' g'' fis'' e'' d'' c'') b'8-. g''-. a''-. fis''-. |
  g''4\f r4 r2 |
  g''2\p( d''4 b') |
  e''4( c'' ees''\sf c'') |
  b'8\f d''16 c'' b'8-. d''-. g''-. d''-. b''-. g''-. |
  c'''8-. a''-. fis''-. d''-. b'-. g''-. a'-. fis''-. |
  g''4-. d''16( e'' fis'' g'' a''8-.) d''-. b''-. d''-. |
  g''4-.\ff <g d' b' g''>4-. g'4-. r4 \bar "|."
}

violinTwo = {
  \clef treble
  \key g \major
  \time 4/4

  % === EXPOSITION ===
  \repeat volta 2 {
    % Primary Theme (mm. 1-8)
    r4 b'\p( g'2) |
    a'2( fis'4) r4 |
    r4 c''( a' fis') |
    a'4( g'8 fis' g'4) r4 |
    g'8 b' g' b' g' c'' g' c'' |
    g'8 b' d'' b' g'4 d' |
    a'2\cresc( g'4 fis') |
    g'4\f r4 r2 |

    % Transition (mm. 9-20)
    b'16\f d'' g' d'' b' d'' g' d'' d'4-. b'-. |
    c''16 e'' a' e'' c'' e'' a' e'' fis'4-. c''-. |
    b'4-. g'-. b'-. g'-. |
    g'4-. fis'-. g'16 a' g' a' e'8-. g'-. |
    fis''16( e'' d''8) r4 d''16( cis'' b'8) r4 |
    b'16( a' g'8) r4 d''16( cis'' b'8) r4 |
    b'2\sf( gis'8 b' gis' b') |
    cis''4-. a'-. a'-. e'-. |
    a'4-. fis'-. a'-. gis'-. |
    a'8 cis' e' cis' a' cis' e' cis' |
    gis'8 d' e' d' a' cis' e' cis' |
    cis''4-.\f cis''-. cis''-. r4 |

    % Secondary Theme in D Major (mm. 21-32)
    r8 a'\p( d'' a' b' a' g' fis') |
    g'4.( e'8 cis'4) r4 |
    r8 cis''( e'' cis'') cis''( b' a' g') |
    b'4( a'16 g' fis'8 fis'4) r4 |
    r4 d''\p( b' e'') |
    cis''2~ cis''4 r4 |
    r4 b'2\p( e''4) |
    a'4(\cresc g'2 fis'4) |
    b'8\f d'' b' d'' b' e'' b' e'' |
    a'8 fis' a' fis' d'' a' d'' a' |
    b'4-. g'-. g'8( a' g' a') |
    fis'4\f r4 r2 |

    % Closing Theme (mm. 33-40)
    r4 d''-.\p fis'-. e''-. |
    d''8( cis'' b' a' fis'4) r4 |
    fis'8\f a' d'' a' fis' a' e'' a' |
    a'4-. g'-. fis'-. d''-. |
    b'4-. cis''-. d''8-. a'-. g'-. g'-. |
    fis'4-. a'-. cis''-. d''-. |
    cis''4-. cis''-. d''-. a'-. |
    fis'4-.\f <d' a'>4-. fis'4-. r4 |
  }

  % === DEVELOPMENT ===
  % Minor Shift & Dialogue (mm. 41-44)
  r4 f'\p( d'2) |
  r4 f'(\sf d'2) |
  r4 e'(\f c'2) |
  r4 a'(\sf fis'2) |

  % Contrapuntal Core (mm. 45-52)
  g'8\p b' g' b' g' b' e' b' |
  e'8\f g' e' g' e'4-. g'-. |
  a''2\f( e''4 c'') |
  d''8( c'' a' fis') d'4-. c''-. |
  f''2\f( b'4 g') |
  c''8( d'' e'' c'') e''4-. c''-. |
  a'4.\sf( c''8 fis''4-. a'-.) |
  fis'4-.\f b'-. a'-. a'-. |

  % Shadow Episode & German +6 (mm. 53-56)
  e'2\p( g'4 b') |
  e'2( fis'4 a') |
  g'2(\cresc e''4 c'') |
  c''2(\f bes'2) |

  % Retransition on V Pedal (mm. 57-64)
  b'2(\f a'2) |
  bes'2(\p a'2) |
  r4 c''\p( a' fis') |
  b'4( d'' c'' a') |
  c''2( b'4 a') |
  b'4 r4 r2 |
  R1 |
  R1 |

  % === RECAPITULATION ===
  % Primary Theme (mm. 65-72)
  r8 b'\p( d'' b' g' b' d' g') |
  r8 a'( c'' a' fis' a' d' fis') |
  r8 a'( c'' a' fis' a' d' fis') |
  a'4( g'8 fis' g'4) r4 |
  g'8 b' g' b' g' c'' g' c'' |
  g'8 b' d'' b' g'4 d' |
  a'2\cresc( g'4 fis') |
  g'4\f r4 r2 |

  % Transition (mm. 73-84)
  b'16\f d'' g' d'' b' d'' g' d'' d'4-. b'-. |
  c''16 e'' a' e'' c'' e'' a' e'' fis'4-. c''-. |
  b'4-. g'-. g'-. f'-. |
  e'4-. g'-. fis'16 a' g' a' fis'8-. c''-. |
  b'16( a' g'8) r4 d''16( c'' b'8) r4 |
  e''16( d'' c''8) r4 c''16( b' c''8) r4 |
  e''2\sf( cis''8 e'' cis'' e'') |
  fis''4-. d''-. d''-. a'-. |
  d''4-. b'-. d''-. cis''-. |
  d''8 fis' a' fis' d'' fis' a' fis' |
  cis''8 g' a' g' d'' fis' a' fis' |
  fis'4-.\f <d' a'>4-. fis'4-. r4 |

  % Secondary Theme in G Major (mm. 85-96)
  b'2\p( c''8 b' a' g') |
  e'4( g'16 fis' e'8 d'4) r4 |
  r8 fis''\p( a'' fis'') fis''( e'' d'' c'') |
  e''4( d''16 c'' b'8 b'4) r4 |
  r4 g'\p( e' a') |
  fis'2~ fis'4 r4 |
  r4 e''2\p( a''4) |
  d''4(\cresc c''2 b'4) |
  e'8\f g' e' g' e' a' e' a' |
  b'8 g' b' g' d'' b' d'' b' |
  e''4-. c''-. c''8( d'' c'' d'') |
  b'4\f r4 r2 |

  % Closing Theme & Coda (mm. 97-108)
  r4 g''-.\p b'-. a''-. |
  g''8( fis'' e'' d'' b'4) r4 |
  b'8\f d'' g'' d'' b' d'' a'' d'' |
  d''4-. c''-. b'-. g''-. |
  e''4-. fis''-. g''8-. d''-. c''-. c''-. |
  b'4\f r4 r2 |
  r4 b'\p( f'2) |
  g'2( g'2\sf) |
  g'8\f b' g' b' b' g' d'' b' |
  e''4-. c''-. d''-. c''-. |
  b'4-. d''-. fis''-. g''-. |
  b'4-.\ff <g d' b'>4-. g'4-. r4 \bar "|."
}

viola = {
  \clef alto
  \key g \major
  \time 4/4

  % === EXPOSITION ===
  \repeat volta 2 {
    % Primary Theme (mm. 1-8)
    r4 d'\p( b2) |
    c'2( d'4) r4 |
    r4 d'( fis' d') |
    d'2~ d'4 r4 |
    e'2 c'2 |
    d'2. b4 |
    e'4(\cresc c' d' c') |
    b4\f r4 r2 |

    % Transition (mm. 9-20)
    d'8\f b d' b b4-. d'-. |
    c'8 e' c' e' d'4-. a-. |
    d'4-. g'-. g'-. c'-. |
    d'4-. a-. e'8 e' cis' cis' |
    fis8 a fis a fis4-. fis'-. |
    g8 b g b g4-. d'-. |
    d'8\sf f' d' f' d' e' d' e' |
    e'8 cis' e' cis' e' cis' e' cis' |
    fis'4-. d'-. e'-. d'-. |
    cis'8 a cis' a cis' a cis' a |
    b8 e b e cis' a cis' a |
    e'4-.\f e'-. e'-. r4 |

    % Secondary Theme in D Major (mm. 21-32)
    d'1\p |
    e'2~ e'4 r4 |
    e'1 |
    d'2~ d'4 r4 |
    a2\p( b2) |
    cis'2( fis'4) r4 |
    r4 d'2\p( b4) |
    fis'4(\cresc e'2 d'4) |
    d'8\f d' d' d' b b b b |
    fis'8 d' fis' d' fis' d' fis' d' |
    d'4-. d'-. cis'8( e' cis' e') |
    d'4\f r4 r2 |

    % Closing Theme (mm. 33-40)
    r4 a'-.\p d'-. a'-. |
    a'4( g' fis') r4 |
    d'8\f fis' a' fis' d' fis' cis' a' |
    d'4-. e'-. fis'-. a'-. |
    g'4-. e'-. fis'8-. fis'-. e'-. e'-. |
    d'4-. fis'-. g'-. fis'-. |
    e'4-. g'-. fis'-. fis'-. |
    a4-.\f <a fis'>4-. a4-. r4 |
  }

  % === DEVELOPMENT ===
  % Minor Shift & Dialogue (mm. 41-44)
  r4 a\p( f2) |
  r4 b(\sf gis2) |
  r4 c'(\f a2) |
  r4 c'(\sf a2) |

  % Contrapuntal Core (mm. 45-52)
  b4\p r4 b4 r4 |
  c''2\f( g'4 e') |
  c'8 e' c' e' a c' a c' |
  a8 fis a fis fis4-. d'-. |
  g'8 d' g' d' d'4-. g'-. |
  e'8 g' e' g' c'4-. g'-. |
  c'8\sf a c' a c'4-. fis'-. |
  fis'4-.\f fis'-. dis'-. fis'-. |

  % Shadow Episode & German +6 (mm. 53-56)
  b1\p |
  c'1 |
  b2(\cresc e'4 g') |
  g'2(\f g'2) |

  % Retransition on V Pedal (mm. 57-64)
  g'2(\f fis'2) |
  g'2(\p fis'2) |
  fis'4\p r4 fis'4 r4 |
  g'4 r4 fis'4 r4 |
  fis'2( g'4 fis') |
  g'4 r4 r2 |
  R1 |
  R1 |

  % === RECAPITULATION ===
  % Primary Theme (mm. 65-72)
  r4 d'\p( b2) |
  c'2( d'4) r4 |
  r4 d'( fis' d') |
  d'2~ d'4 r4 |
  e'2 c'2 |
  d'2. b4 |
  e'4(\cresc c' d' c') |
  b4\f r4 r2 |

  % Transition (mm. 73-84)
  d'8\f b d' b b4-. d'-. |
  c'8 e' c' e' d'4-. a-. |
  d'4-. b-. c'-. d'-. |
  e'4-. c'-. a8 d' a d' |
  d8 g d g d4-. b-. |
  c'8 e' c' e' c'4-. g'-. |
  g8\sf bes g bes g a g a |
  a8 fis a fis a fis a fis |
  b4-. g-. a-. g-. |
  fis'8 d' fis' d' fis' d' fis' d' |
  e'8 a e' a fis' d' fis' d' |
  a4-.\f <a fis'>4-. a4-. r4 |

  % Secondary Theme in G Major (mm. 85-96)
  r8 d'\p( g' d' e' d' c' b) |
  c'4.( a8 fis4) r4 |
  a'1\p |
  g'2~ g'4 r4 |
  d'2\p( e'2) |
  fis'2( b4) r4 |
  r4 g'2\p( e'4) |
  b'4(\cresc a'2 g'4) |
  c'8\f c' c' c' c' c' c' c' |
  g'8 d' g' d' g' d' g' d' |
  g'4-. g'-. fis'8( a' fis' a') |
  g'4\f r4 r2 |

  % Closing Theme & Coda (mm. 97-108)
  r4 d''-.\p g'-. d''-. |
  d''4( c'' b') r4 |
  g'8\f b' d'' b' g' b' fis' d'' |
  g'4-. a'-. b'-. d''-. |
  c''4-. a'-. b'8-. b'-. a'-. a'-. |
  g'4\f r4 r2 |
  r4 d'\p( b2) |
  c'2( c'2\sf) |
  d'8\f d' d' d' d' d' g' d' |
  e'4-. a'-. g'-. a'-. |
  g'4-. b'-. c''-. b'-. |
  g'4-.\ff <g d' b'>4-. b4-. r4 \bar "|."
}

cello = {
  \clef bass
  \key g \major
  \time 4/4

  % === EXPOSITION ===
  \repeat volta 2 {
    % Primary Theme (mm. 1-8)
    g2\p r2 |
    fis2 r2 |
    c2 r2 |
    b,2( g,4) r4 |
    c2( a,4 c) |
    b,2( g,4 b,) |
    c4(\cresc a, d d,) |
    g,4\f r4 r2 |

    % Transition (mm. 9-20)
    g,8\f g, g, g, g,4-. g-. |
    g,8 g, g, g, a,4-. d,-. |
    g,4-. b,-. d-. e-. |
    d4-. d,-. cis4-. a,-. |
    d4.\f( fis8 a4-. d'-.) |
    g4.( b8 d'4-. b-.) |
    gis,8\sf gis, gis, gis, gis, gis, gis, gis, |
    a,4-. a-. e-. cis-. |
    d4-. b,-. e-. e,-. |
    a,4-. r4 r2 |
    e,4-. r4 a,4-. r4 |
    a,4-.\f a,-. a,-. r4 |

    % Secondary Theme in D Major (mm. 21-32)
    d2\p r2 |
    a,2~ a,4 r4 |
    cis2( a,4) r4 |
    d2~ d4 r4 |
    d2\p( fis4 gis) |
    a2( ais4) r4 |
    b,2\p( e4) r4 |
    a,4(\cresc b, cis d) |
    g4-.\f g,-. e-. e,-. |
    a,8 a, a, a, a, a, a, a, |
    b,4-. g,-. a,2 |
    d4\f r4 r2 |

    % Closing Theme (mm. 33-40)
    d4\p r4 d4 r4 |
    d4( a, d) r4 |
    d4-.\f d'-. fis-. a-. |
    d'4-. a-. d-. d,-. |
    g4-. a-. b8-. fis-. g-. a-. |
    d4-. d'-. a-. d'-. |
    a4-. a,-. d-. fis-. |
    d4-.\f d,4-. d4-. r4 |
  }

  % === DEVELOPMENT ===
  % Minor Shift & Dialogue (mm. 41-44)
  d2\p r2 |
  b,2\sf r2 |
  a2\f( e4 c) |
  dis2\sf r2 |

  % Contrapuntal Core (mm. 45-52)
  e4\p r4 e,4 r4 |
  c4-.\f e-. g-. c-. |
  a,4-. c-. e-. a-. |
  d4-. fis-. a-. d-. |
  g,4-. b,-. d-. g-. |
  c'2\f( g4 e) |
  fis2\sf( a4 c') |
  b,4-.\f dis-. fis-. b,-. |

  % Shadow Episode & German +6 (mm. 53-56)
  e2\p( g2) |
  e2( dis2) |
  e2(\cresc c2) |
  ees2(\f ees2) |

  % Retransition on V Pedal (mm. 57-64)
  d8\f d d d d d d d |
  d8\p d d d d d d d |
  d4\p r4 d4 r4 |
  d4 r4 d4 r4 |
  d1~ |
  d4 r4 r2 |
  R1 |
  R1 |

  % === RECAPITULATION ===
  % Primary Theme (mm. 65-72)
  g2\p r2 |
  fis2 r2 |
  c2 r2 |
  b,2( g,4) r4 |
  c2( a,4 c) |
  b,2( g,4 b,) |
  c4(\cresc a, d d,) |
  g,4\f r4 r2 |

  % Transition (mm. 73-84)
  g,8\f g, g, g, g,4-. g-. |
  g,8 g, g, g, a,4-. d,-. |
  g,4-. b,-. c-. g,-. |
  c4-. e-. d-. d,-. |
  g,4.\f( b,8 d4-. g-.) |
  c4.( e8 g4-. e-.) |
  cis8\sf cis cis cis cis cis cis cis |
  d4-. d'-. a-. fis-. |
  g4-. e-. a-. a,-. |
  d4-. r4 r2 |
  a,4-. r4 d4-. r4 |
  d4-.\f d,4-. d4-. r4 |

  % Secondary Theme in G Major (mm. 85-96)
  g,2\p( g4) r4 |
  d,2( d4) r4 |
  fis2\p( d4) r4 |
  g2( g,4) r4 |
  g,2\p( b,4 cis) |
  d2( dis4) r4 |
  e2\p( a,4) r4 |
  d4(\cresc e fis g) |
  c4-.\f c,-. a,-. a-. |
  d8 d d d d d d d |
  e4-. c-. d2 |
  g,4\f r4 r2 |

  % Closing Theme & Coda (mm. 97-108)
  g4\p r4 g4 r4 |
  g4( d g,) r4 |
  g,4-.\f g-. b,-. d-. |
  g4-. d-. b,-. g,-. |
  c4-. d-. e8-. b,-. c-. d-. |
  g,4\f r4 r2 |
  g,1\p~ |
  g,1 |
  g,4-.\f g-. b,-. g,-. |
  c4-. c-. d-. d,-. |
  g,4-. g-. d-. g-. |
  g,4-.\ff <g, d b>4-. g,4-. r4 \bar "|."
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