\version "2.24.0"

\header {
  title = "Finale in G Major"
  subtitle = "for String Quartet (in the Style of W. A. Mozart)"
  composer = "Style of W. A. Mozart"
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
  \time 2/4
  \tempo "Allegro assai"

  % --- SECTION A: Main Refrain (mm. 1-16) ---
  g''8-.(\p d''-. b'-. g'-.) | e''16( d'' c'' b') a'8-. r | fis''8-.( d''-. a'-. fis'-.) | g''16( fis'' e'' d'') b'8-. r |
  c''8(\< e'') g''-. e''-. | b'8(\mf d'') g''-. b'-. | a'16(\> b' cis'' d'' e'' fis'' g'' e'') | fis''8-.\p d''-. r4 |
  r4 r8 b''-.(\p | c'''16 b'' a'' g'') fis''8-. r | r4 r8 a''-.( | b''16 a'' g'' fis'') g''8-. d''-.\f |
  e''16( fis'' g'' e'') c'''8-. a''-. | g''16( fis'' g'' a'') b''8-. e''-. | d''8-. b''16( g'') a''8-. fis''-.\trill | g''8-. g'-. r4 |

  % --- TRANSITION (mm. 17-28) ---
  r8 g''-.\f g''-.( g''-.) | gis''16( a'' b'' gis'' e''8-.) d''-. | c''8-. a''-. a''-.( a''-.) | ais''16( b'' cis''' ais'' fis''8-.) e''-. |
  d''8-. b''-. b''-.( fis''-.) | gis''16( a'' b'' gis'' e''8-.) d''-. | cis''8-.\fp a''16( gis'' a''8-.) g''!-. | fis''8-.\fp a''16( gis'' a''8-.) fis''-. |
  e''16(\f fis'' gis'' a'' b'' cis''' d''' b'') | a''8-. e''16( cis'') a'8-. e''16( cis'') | a'8-. <a e' cis'' a''>-. <a e' cis'' a''>-. r | R2 |

  % --- SECTION B: Second Theme in D Major (mm. 29-48) ---
  fis''4(\p g''16 fis'' e'' d'') | b''4( a''8) r | g''4( a''16 g'' fis'' e'') | g''8( fis'') fis''-. r |
  fis''8(\< d'''4) b''8-. | a''16(\mf gis'' a'' b'' a''8-.) fis''-. | g''16(\> fis'' e'' d'' cis'' d'' e'' cis'') | d''4\p r |
  r16 a''(\p gis'' a'' fis''8-.) r | r16 g''( fis'' g'' fis''8-.) r | r16 b''( a'' gis'' a''8-.) cis''-. | d''16(\< e'' fis'' g'' a'' b'' cis''' d''') |
  b''8-.\f g''16( e'') a''8-. fis''16( d'') | g''16( fis'' e'' d'' cis'' b' a' g'') | fis''8-. b''16( g'') fis''8-. e''-.\trill | d''8-. d'-. r4 |
  r8 d''-.(\p cis''-. d''-.) | c''!4( a'8) r | r8 c''-.( b'-. a'-.) | fis'16( g' a' b' c'' d'' e'' fis'') |

  % --- SECTION A': First Return of Refrain (mm. 49-64) ---
  g''8-.(\p d''-. b'-. g'-.) | e''16( d'' c'' b') a'8-. r | fis''8-.( d''-. a'-. fis'-.) | g''16( fis'' e'' d'') b'8-. r |
  c''8(\< e'') g''16( fis'' g'' e'') | b'8(\mf d'') g''16( fis'' g'' b') | a'16(\> b' cis'' d'' e'' fis'' g'' e'') | fis''8-.\p d''-. r4 |
  r4 r8 b''-.(\p | c'''16 b'' a'' g'') fis''8-. r | r4 r8 a''-.( | b''16 a'' g'' fis'') e''8-. d''-. |
  e''16( d'' c'' b') a'8-. fis''-. | g''8-. d''-. b'-. r | r8 c''-.(\pp b'-. a'-.) | g'8-. r r4 |

  % --- SECTION C: Fugato & Development (mm. 65-96) ---
  R2*12 |
  b'4\f d''8-. fis''-. | eis''4( fis''8) d''-. | g''8-. e''-. cis''-. ais'-. | b'16( cis'' d'' cis'' b'8-.) e''-. |
  c''16( b' a' b' c''8-.) a''-. | fis''4( d''8) c'''!-. | b''16( a'' g'' a'' b''8-.) g''-. | e''4( g''8) bes''-. |
  b''8-.\ff g''16( d'') b'8-. g''-. | e''16( fis'' g'' a'' b''8-.) cis'''-. | d'''8-. a''16( fis'') d''8-. a'-. | d''8-. d'-. r4 |
  r8 d''-.(\p cis''-. d''-.) | c''!4( a'8) r | R2*3 | r8 c''-.(\pp b'-. a'-.) | fis'4\fermata r | d''16(\p e'' fis'' g'' a'' b'' c''' a'') |

  % --- SECTION A'': Recapitulation & Transition (mm. 97-108) ---
  g''8-.(\p d''-. b'-. g'-.) | e''16( d'' c'' b') a'8-. r | fis''8-.( d''-. a'-. fis'-.) | g''16( fis'' e'' d'') b'8-. g'-.\f |
  e''16( d'' c'' d'' e'' fis'' g'' e'') | g''16( fis'' e'' fis'' g'' a'' bes'' g'') | fis''8-.\fp d'''16( cis''' d'''8-.) c'''!-. | b''8-.\fp d'''16( cis''' d'''8-.) b''-. |
  a''16(\f b'' cis''' d''' e'''! g'' fis'' e'') | d''8-. a''16( fis'') d''8-. a''16( fis'') | d''8-. <d' a' fis''>-. <d' a' fis''>-. r | R2 |

  % --- SECTION B': Second Theme in Tonic G Major (mm. 109-124) ---
  b'4(\p c''16 b' a' g') | e''4( d''8) r | c''4( d''16 c'' b' a') | c''8( b') b'-. r |
  b'8(\< g''4) e''8-. | d''16(\mf cis'' d'' e'' d''8-.) b'-. | c''16(\> b' a' g' fis' g' a' fis') | g'4\p r |
  r16 d''(\p cis'' d'' b'8-.) r | r16 c''( b' c'' b'8-.) r | r16 e''( d'' cis'' d''8-.) fis''-. | g'16(\< a' b' c'' d'' e'' fis'' g'') |
  e''8-.\f c'''16( a'') d''8-. b''16( g'') | e''16( d'' c'' b' a' g' fis' c'') | b'8-. e''16( c'') b'8-. a'-.\trill | g'8-. r r4 |

  % --- CODA (mm. 125-144) ---
  R2*3 | g''8-.(\mf\< d''-. b'-. g'-.) |
  e''16(\f fis'' g'' a'' b'' c''' d''' b'') | c'''16( b'' a'' g'' fis'' g'' a'' fis'') | g''16( d'' b' d'') g''( e'' c'' e'') | d''8-. b''16( g'') a''8-. fis''-.\trill |
  g''8-.\ff fis''16( g'' a''8-.) fis''-. | g''8-. fis''16( g'' a''8-.) fis''-. | g''8-. b''16( g'') d'''8-. b''16( g'') | g''8-. r r4 |
  g''8-.(\pp d''-. b'-. g'-.) | e''8-. r r4 | fis''8-.(\pp d''-. a'-. fis'-.) | a'8(\pp g') r4 |
  <b' g''>8-.\ff r <a' fis''>-. r | <b' g''>8-. r <a' fis''>-. r | <b' g''>4-. <d' b' g''>-. | <g d' b' g''>4-. r \bar "|."
}

violinTwo = {
  \clef treble
  \key g \major
  \time 2/4

  % --- SECTION A: Main Refrain (mm. 1-16) ---
  r8 b'-.(\p d''-. b'-.) | c''8-.( g'-. fis'-.) r | r8 a'-.( c''-. a'-.) | b'8-.( a'-. g'-.) r |
  g'8(\< c'') e''-. c''-. | g'8(\mf b') d''-. g'-. | g'8-.(\> fis'-. e'-. cis''-.) | d''8-.\p a'-. r4 |
  g''8-.(\p d''-. b'-. g'-.) | e''16( d'' c'' b') a'8-. r | fis''8-.( d''-. a'-. fis'-.) | g''16( fis'' e'' d'') b'8-. b'-.\f |
  c''16( d'' e'' c'') e''8-. c''-. | b'8-. d''-. d''-. c''-. | b'8-. d''-. c''-. a'-. | b'8-. g'-. r4 |

  % --- TRANSITION (mm. 17-28) ---
  r8 b'-.\f b'-.( b'-.) | b'8-. e''-. gis'-. b'-. | a'8-. c''-. c''-.( c''-.) | cis''8-. fis''-. ais'-. cis''-. |
  b'8-. d''-. d''-.( d''-.) | b'8-. e''-. b'-. gis'-. | a'8-.\fp cis''-. cis''-. e''-. | d''8-.\fp fis''-. fis''-. d''-. |
  b'8-.\f e''-. gis''-. e''-. | cis''8-. a'-. cis''-. a'-. | a'8-. <a e' cis''>-. <a e' cis''>-. r | R2 |

  % --- SECTION B: Second Theme in D Major (mm. 29-48) ---
  r8 a'-.(\p d''-. a'-.) | r8 cis''-.( d''-. a'-.) | r8 cis''-.( e''-. cis''-.) | r8 d''-.( a'-.) r |
  d''16(\< b' d'' b' g'' d'' g'' d'') | fis''16(\mf d'' fis'' d'' fis'' d'' d'' b') | b'8-.(\> b'-. a'-. g'-.) | fis'4\p r |
  r8 fis''-.(\p d''-.) r | r8 e''-.( d''-.) r | r8 d''-.( cis''-.) a'-. | fis'16(\< g' a' b' cis'' d'' e'' fis'') |
  g''8-.\f e''16( cis'') fis''8-. d''16( a') | b'8-. b'-. a'-. cis''-. | d''8-. d''-. d''-. cis''-. | d''8-. fis'-. r4 |
  r8 fis'-.(\p eis'-. fis'-.) | fis'4( fis'8) r | r8 a'-.( g'-. fis'-.) | c''8-. r r4 |

  % --- SECTION A': First Return of Refrain (mm. 49-64) ---
  r8 b'-.(\p d''-. b'-.) | c''8-.( g'-. fis'-.) r | r8 a'-.( c''-. a'-.) | b'8-.( a'-. g'-.) r |
  g'8(\< c'') e''-. c''-. | g'8(\mf b') d''-. g'-. | g'8-.(\> fis'-. e'-. cis''-.) | d''8-.\p a'-. r4 |
  g''8-.(\p d''-. b'-. g'-.) | e''16( d'' c'' b') a'8-. r | fis''8-.( d''-. a'-. fis'-.) | g''16( fis'' e'' d'') c''!8-. b'-. |
  c''8-. g'-. fis'-. c''-. | b'8-. b'-. g'-. r | r8 a'-.(\pp g'-. fis'-.) | g'8-. r r4 |

  % --- SECTION C: Fugato & Development (mm. 65-96) ---
  R2*8 |
  e'4\f g'8-. b'-. | ais'4( b'8) g'-. | c''8-. a'-. fis'-. dis'-. | e'16( fis' g' fis' e'8-.) cis'-. |
  d'8-. fis'-. b'-. a'-. | b'4( fis'8) fis'-. | e'8-. g'-. e'-. e'-. | d'8-. fis'-. e'-. d'!-. |
  c'8-. e'-. a'-. c''-. | c''4( a'8) d''-. | b'8-. d''-. d''-. b'-. | c''4( bes'8) g'-. |
  d''8-.\ff b'-. g'-. d''-. | c''!8-. e''-. d''-. g''-. | fis''8-. fis''16( d'') a'8-. fis'-. | d'8-. d'-. r4 |
  R2 | r8 fis'-.(\p eis'-. fis'-.) | d'4( c'!8) r | R2*2 | r8 a'-.(\pp g'-. fis'-.) | c'4\fermata r | R2 |

  % --- SECTION A'': Recapitulation & Transition (mm. 97-108) ---
  r8 b'-.(\p d''-. b'-.) | c''8-.( g'-. fis'-.) r | r8 a'-.( c''-. a'-.) | b'8-.( a'-. g'-.) g'-.\f |
  c''8-. g'-. c''-. c''-. | e''8-. cis''-. e''-. e''-. | d''8-.\fp fis''-. fis''-. a''-. | g''8-.\fp b''-. b''-. g''-. |
  e''8-.\f a''-. cis''-. cis''-. | d''8-. fis''-. d''-. fis''-. | d''8-. <d' a'>-. <d' a'>-. r | R2 |

  % --- SECTION B': Second Theme in Tonic G Major (mm. 109-124) ---
  r8 d'-.(\p g'-. d'-.) | r8 fis'-.( g'-. d'-.) | r8 fis'-.( a'-. fis'-.) | r8 g'-.( d'-.) r |
  g'16(\< e' g' e' c'' g' c'' g') | b'16(\mf g' b' g' b' g' g' e') | e'8-.(\> e'-. d'-. c'-.) | b4\p r |
  r8 b'-.(\p g'-.) r | r8 a'-.( g'-.) r | r8 g'-.( fis'-.) d''-. | b16(\< c' d' e' fis' g' a' b') |
  c''8-.\f e''-. b'-. d''-. | c''8-. g'-. fis'-. a'-. | g'8-. g'-. g'-. fis'-. | g'8-. r r4 |

  % --- CODA (mm. 125-144) ---
  R2*2 | g'8-.(\p\< d'-. b-. g-.) | b'8-.( b'-. d''-. b'-.) |
  c''8-.\f e''-. g''-. d''-. | e''8-. c''-. a'-. c''-. | b'8-. b'-. c''-. c''-. | b'8-. d''-. c''-. a'-. |
  b'8-.\ff d''-. c''-. a'-. | b'8-. d''-. c''-. a'-. | b'8-. d''-. g''-. d''-. | b'8-. r r4 |
  r8 b'-.(\pp d''-. b'-.) | c''8-. r r4 | r8 a'-.(\pp c''-. a'-.) | fis'8(\pp g') r4 |
  <g' d''>8-.\ff r <fis' c''>-. r | <g' d''>8-. r <fis' c''>-. r | <g' d''>4-. <b' g''>-. | <g d' b'>4-. r \bar "|."
}

viola = {
  \clef alto
  \key g \major
  \time 2/4

  % --- SECTION A: Main Refrain (mm. 1-16) ---
  r8 g-.(\p b-. g-.) | g8-.( e'-. d'-.) r | r8 fis-.( a-. c'-.) | b8-.( c'-. d'-.) r |
  e'2\< | d'2\mf | cis'8-.(\> d'-. b-. a-.) | a8-.\p fis-. r4 |
  b4(\p d') | g8-.( c'-. d'-.) r | a4( c') | b8-.( a-. g-.) g'-.\f |
  g'8-. g'-. e'-. fis'-. | g'8-. d'-. g'-. g'-. | g'8-. g'-. fis'-. d'-. | d'8-. b-. r4 |

  % --- TRANSITION (mm. 17-28) ---
  g8-.\f d'-. g'-. d'-. | e'8-. b-. e'-. e'-. | e'8-. e'-. a'-. e'-. | fis'8-. cis'-. fis'-. fis'-. |
  fis'8-. fis'-. b'-. fis'-. | e'8-. e'-. e'-. e'-. | e'8-.\fp e'-. a'-. a'-. | a'8-.\fp a'-. a'-. a'-. |
  b'8-.\f b'-. e'-. e'-. | e'8-. cis'-. e'-. cis'-. | cis'8-. <a e'>-. <a e'>-. r | R2 |

  % --- SECTION B: Second Theme in D Major (mm. 29-48) ---
  r8 fis'-.(\p a'-. fis'-.) | r8 g'-.( fis'-. d'-.) | r8 e'-.( a'-. g'-.) | r8 a'-.( fis'-.) r |
  b'4(\< g') | fis'4(\mf d') | e'8-.(\> g'-. e'-. a'-.) | fis'8-.\p d'-. r4 |
  fis'4(\p g'16 fis' e' d') | g'4( fis'8) r | gis'4( a'8) e'-. | a4(\< d') |
  d'8-.\f b'-. a'-. a'-. | g'8-. g'-. e'-. a'-. | a'8-. g'-. a'-. g'-. | fis'8-. d'-. r4 |
  a2(\p | d'4) r | r8 d'-.( d'-. c'-.) | a8-. r r4 |

  % --- SECTION A': First Return of Refrain (mm. 49-64) ---
  r8 g-.(\p b-. g-.) | g8-.( e'-. d'-.) r | r8 fis-.( a-. c'-.) | b8-.( c'-. d'-.) r |
  e'8(\< g') c''-. g'-. | d'8(\mf g') b'-. d'-. | cis'8-.(\> d'-. b-. a-.) | a8-.\p fis-. r4 |
  b4(\p d') | g8-.( c'-. d'-.) r | a4( c') | b8-.( a-. g-.) g-. |
  g8-. e'-. d'-. a-. | b8-. g'-. d'-. r | r8 d'-.(\pp d'-. c'-.) | b8-. r r4 |

  % --- SECTION C: Fugato & Development (mm. 65-96) ---
  R2*4 |
  b4\f d'8-. fis'-. | eis'4( fis'8) d'-. | g'8-. e'-. cis'-. ais-. | b16( cis' d' cis' b8-.) a!-. |
  g8-. b-. e'-. d'!-. | g'4( fis'8) e'-. | c'8-. e'-. dis'-. a-. | g8-. b-. ais-. ais-. |
  b8-. d'-. fis'-. d'-. | d'4( cis'8) d'-. | b8-. b-. ais-. cis'-. | d'8-. b-. b-. gis-. |
  a8-. c'-. e'-. e'-. | fis'4( d'8) fis'-. | g'8-. d'-. g'-. d'-. | e'4( g'8) e'-. |
  d'8-.\ff g'-. d'-. b'-. | g'8-. g'-. g'-. e'-. | d'8-. d'-. d'-. fis'-. | fis'8-. fis'-. r4 |
  R2*2 | r8 a-.(\p gis-. a-.) | fis4( d8) r | R2 | r8 d'-.(\pp d'-. c'-.) | a4\fermata r | R2 |

  % --- SECTION A'': Recapitulation & Transition (mm. 97-108) ---
  r8 g-.(\p b-. g-.) | g8-.( e'-. d'-.) r | r8 fis-.( a-. c'-.) | b8-.( c'-. d'-.) f'!-.\f |
  e'8-. e'-. g'-. g'-. | bes'8-. a'-. bes'-. a'-. | a'8-.\fp a'-. d'-. d'-. | d'8-.\fp d'-. d'-. d'-. |
  e'8-.\f e'-. a'-. g'-. | fis'8-. a'-. fis'-. a'-. | fis'8-. <d' a'>-. <d' a'>-. r | R2 |

  % --- SECTION B': Second Theme in Tonic G Major (mm. 109-124) ---
  r8 b-.(\p d'-. b-.) | r8 c'-.( b-. g-.) | r8 a-.( d'-. c'-.) | r8 d'-.( b-.) r |
  e'4(\< c') | b4(\mf g) | a8-.(\> c'-. a-. d'-.) | b8-.\p g-. r4 |
  b4(\p c'16 b a g) | c'4( b8) r | cis'4( d'8) a-. | d'4(\< g') |
  g'8-.\f g'-. g'-. g'-. | e'8-. e'-. d'-. d'-. | d'8-. e'-. d'-. c'-. | b8-. r r4 |

  % --- CODA (mm. 125-144) ---
  R2 | d'8-.(\p a-. fis-. d-.) | b8-.(\< g-. d'-. b-.) | d'8-.( g'-. g'-. d'-.) |
  g'8-.\f g'-. g'-. g'-. | g'8-. e'-. d'-. d'-. | d'8-. g'-. g'-. g'-. | g'8-. g'-. fis'-. d'-. |
  d'8-.\ff d'-. d'-. d'-. | d'8-. d'-. d'-. d'-. | d'8-. g'-. b'-. g'-. | d'8-. r r4 |
  r8 g-.(\pp b-. g-.) | g8-. r r4 | r8 fis-.(\pp a-. c'-.) | c'8(\pp b) r4 |
  <d' g'>8-.\ff r <d' a'>-. r | <d' g'>8-. r <d' a'>-. r | <d' g'>4-. <g d' b'>-. | <g d' b'>4-. r \bar "|."
}

cello = {
  \clef bass
  \key g \major
  \time 2/4

  % --- SECTION A: Main Refrain (mm. 1-16) ---
  g,8-.\p r r4 | c8-. r d-. r | d,8-. r r4 | g,8-. r g-. r |
  c4(\< c') | b,4(\mf e) | cis4(\> a,) | d8-.\p d,-. r4 |
  g4(\p b) | c'8-.( e-. d-.) r | d4( fis) | g8-. d-. g,-. b-.\f |
  c'8-. b-. a-. d-. | b,8-. g,-. g-. c-. | d8-. d-. d,-. d-. | g,8-. g,-. r4 |

  % --- TRANSITION (mm. 17-28) ---
  g,8-.\f b,-. d-. b,-. | e,8-. gis,-. b,-. gis,-. | a,8-. c-. e-. c-. | fis,8-. ais,-. cis-. ais,-. |
  b,8-. d-. fis-. d-. | gis,8-. e,-. gis,-. e,-. | a,8-.\fp a,-. a,-. a,-. | a,8-.\fp a,-. a,-. a,-. |
  gis,8-.\f e,-. e-. e,-. | a,8-. a-. a,-. a-. | a,8-. a,-. a,-. r | R2 |

  % --- SECTION B: Second Theme in D Major (mm. 29-48) ---
  d4(\p fis) | e4( fis) | e4( a,) | d4( d,8) r |
  b4(\< g) | fis4(\mf b,) | e,4(\> a,) | d8-.\p a,-. d,-. r |
  d'4(\mp e'16 d' cis' b) | cis'4( d'8) r | b4( e8) a-. | d4(\< fis) |
  g8-.\f e-. fis-. d-. | e8-. g,-. a,-. a,-. | d8-. g,-. a,-. a,-. | d,8-. d,-. r4 |
  d2(\p | d4) r | d,2( | d,8) r r4 |

  % --- SECTION A': First Return of Refrain (mm. 49-64) ---
  g,8-.\p r r4 | c8-. r d-. r | d,8-. r r4 | g,8-. r g-. r |
  c4(\< c') | b,4(\mf e) | cis4(\> a,) | d8-.\p d,-. r4 |
  g4(\p b) | c'8-.( e-. d-.) r | d4( fis) | g8-. d-. e-. b,-. |
  c8-. e-. d-. d,-. | g,8-. b,-. g,-. r | r8 d-.(\pp d,-. d,-.) | g,8-. r r4 |

  % --- SECTION C: Fugato & Development (mm. 65-96) ---
  e4\f g8-. b-. | ais4( b8) g-. | c'8-. a-. fis-. dis-. | e16( fis g fis e8-.) cis-. |
  d8-. b,-. b-. a-. | gis4( fis8) b-. | e8-. cis-. fis-. e-. | d8-. b,-. e-. dis-. |
  e8-. d!-. c-. b,-. | cis4( dis8) e-. | a,8-. fis,-. b,-. b,-. | e8-. d-. cis-. fis,-. |
  b,8-. a,-. gis,-. fis,-. | gis,4( ais,8) b,-. | e8-. cis-. fis,-. fis,-. | b,8-. d-. e-. e,-. |
  a,4\f c8-. e-. | d4 fis8-. a-. | g4 b,8-. d-. | c4( cis8) cis-. |
  d8-.\ff d-. d-. d-. | c!8-. c-. b,-. a,-. | d8-. fis,-. a,-. d-. | d8-. d,-. r4 |
  R2*3 | d4(\p c!8-.) b,-. | a,8-.( g,-. fis,-. e,-.) | d,4\pp r | d,4\fermata r | R2 |

  % --- SECTION A'': Recapitulation & Transition (mm. 97-108) ---
  g,8-.\p r r4 | c8-. r d-. r | d,8-. r r4 | g,8-. r r b,-.\f |
  c8-. c-. c-. c-. | cis8-. cis-. cis-. cis-. | d8-.\fp d-. d-. d-. | d8-.\fp d-. d-. d-. |
  cis8-.\f a,-. a,-. a,-. | d8-. d,-. d-. d,-. | d8-. d,-. d,-. r | R2 |

  % --- SECTION B': Second Theme in Tonic G Major (mm. 109-124) ---
  g,4(\p b,) | a,4( b,) | a,4( d,) | g,4( g,8) r |
  e4(\< c) | b,4(\mf e,) | a,4(\> d) | g,8-.\p d,-. g,-. r |
  g4(\mp a16 g fis e) | fis4( g8) r | e4( a,8) d-. | g,4(\< b,) |
  c8-.\f a,-. b,-. g,-. | c8-. c-. d-. d,-. | b,8-. c-. d-. d,-. | g,8-. r r4 |

  % --- CODA (mm. 125-144) ---
  g8-.(\p d-. b,-. g,-.) | d8-.( d,-. g,-.) r | b,4(\< d) | g,8-.( b,-. d-. g-.) |
  c'8-.\f c'-. b-. g-. | c8-. c-. d-. d,-. | g,8-. g-. e-. c-. | d8-. d-. d,-. d-. |
  g,8-.\ff b,-. d-. d,-. | g,8-. b,-. d-. d,-. | g,8-. g-. b-. g-. | g8-. r r4 |
  R2 | c8-.\pp r r4 | d,8-.\pp r r4 | g,8-.\pp r r4 |
  g,8-.\ff r d-. r | g,8-. r d-. r | g,4-. g-. | g,4-. r \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Violino I"
      shortInstrumentName = "Vl. I"
      midiInstrument = "violin"
    } \violinOne

    \new Staff \with {
      instrumentName = "Violino II"
      shortInstrumentName = "Vl. II"
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

  \midi {
    \tempo 4 = 128
  }
}