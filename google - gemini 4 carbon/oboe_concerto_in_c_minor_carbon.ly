\version "2.24.0"

#(set-global-staff-size 18)

\header {
  title = "Concerto in C Minor"
  subtitle = "for Oboe and Basso Continuo"
  subsubtitle = "I. Allegro"
  composer = "In the style of Antonio Vivaldi"
  tagline = ##f
}

\paper {
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 18\mm
  right-margin = 15\mm
  ragged-last-bottom = ##f
}

global = {
  \key c \minor
  \time 2/4
  \tempo "Allegro" 4 = 96
  \accidentalStyle modern
}

% ==============================================================================
% OBOE SOLO
% ==============================================================================
oboePart = {
  \global
  \clef treble

  % --- SECTION 1: RITORNELLO I (Tutti, C minor, mm. 1-18) ---
  % Soloist rests throughout the opening section
  R2 | R2 | R2 | R2 | % 1-4
  R2 | R2 | R2 | R2 | % 5-8
  R2 | R2 | R2 | R2 | % 9-12
  R2 | R2 | R2 | R2 | % 13-16
  R2 | R2 |           % 17-18

  % --- SECTION 2: SOLO EPISODE I (C minor -> Eb major, mm. 19-41) ---
  c''8.\f^\markup { \bold "Solo" } g''16 es''8.\trill d''32( es'') | % 19
  f''16( d'' b' g') g''8. f''16 | % 20
  es''32( d'' c''16) g''32( f'' es''16) as''8. g''32( f'') | % 21
  g''16( f'' es'' d'') d''8.\trill c''16 | % 22
  c''8 r16 g' c''( b' c'' d'') | % 23
  es''16( d'' es'' f'') g''( f'' es'' d'') | % 24
  c''16( as'' g'' f'') es''( d'' c'' bes') | % 25
  bes'8( bes''4) as''16( g'') | % 26
  as''16( f'' d'' bes') g''( f'' es'' d'') | % 27
  c''8( c'''4) bes''16( as'') | % 28
  g''16( bes' as'' bes' g'' bes' f'' bes') | % 29
  es''16( bes' g'' bes' f'' bes' es'' bes') | % 30
  c''16( f' d'' f' es'' f' c'' f') | % 31
  bes'16( d'' f'' bes'') d'''32( c''' bes'' as'' g'' f'' es'' d'') | % 32
  es''8. f''32( g'' as''8.) g''32( f'') | % 33
  g''16( bes'' es'' g'') bes'32( c'' d'' es'' f'' g'' as'' f'') | % 34
  g''16( e'' c'' bes'') as''( f'' c'' as'') | % 35
  f''16( d'' bes' as'') g''( es'' bes' g'') | % 36
  as''16( es'' c'' as'') ges''( es'' c'' ges'') | % 37
  f''16( d'' bes' f'') as''( f'' d'' bes') | % 38
  g''32( as'' bes''8.) f''32( g'' as''8.) | % 39
  g''16( es'' bes'' g'') c'''( as'' f'' es'') | % 40
  f''4.\trill es''16( f'') | % 41

  % --- SECTION 3: RITORNELLO II (Tutti, Eb major, mm. 42-51) ---
  es''8 r r4 | % 42
  R2 | R2 | R2 | % 43-45
  R2 | R2 | R2 | % 46-48
  R2 | R2 | R2 | % 49-51

  % --- SECTION 4: SOLO EPISODE II (Eb major -> F minor -> G minor, mm. 52-67) ---
  bes'8.\mf^\markup { \bold "Solo" } g''32( f'') es''16( d'' es'') bes'' | % 52
  g''16( f'' g'' as'') bes''( as'' g'' f'') | % 53
  c''8.\f as''32( g'') f''16( e'' f'') c''' | % 54
  as''16( g'' as'' bes'') c'''( bes'' as'' g'') | % 55
  f''4\< es''16(\! d'' es''8)~ | % 56
  es''4\< d''16(\! c'' d''8)~ | % 57
  d''4\< c''16(\! bes' c''8)~ | % 58
  c''16(\f a' fis' d') c'''( bes'' a'' g'') | % 59
  fis''16( d'' a'' fis'') c'''( a'' fis'' d'') | % 60
  bes''16( g'' d''' bes'') g''( d'' bes' g'') | % 61
  es''32( d'' c'' d'' es'' f'' g'' a'' bes''16) g'' e''( cis'') | % 62
  d''8. a''16 fis''8.\trill e''32( fis'') | % 63
  g''16( bes' es'' g'') a''( c'' es'' a'') | % 64
  bes''16( d'' g'' bes'') a''( c'' fis'' a'') | % 65
  g''32( a'' bes'' c''' d'''16) bes'' g''( es'' c'' a'') | % 66
  d''16( bes'' g'' bes'') a''8.\trill g''32( a'') | % 67

  % --- SECTION 5: RITORNELLO III (Tutti, G minor, mm. 68-77) ---
  g''8 r r4 | % 68
  R2 | R2 | R2 | % 69-71
  R2 | R2 | R2 | % 72-74
  R2 | R2 | R2 | % 75-77

  % --- SECTION 6: SOLO EPISODE III (G minor -> Ab major -> C minor, mm. 78-104) ---
  g'8.\f^\markup { \bold "Solo" } b'16 d''( f'' as'' f'') | % 78
  as''4~ as''16( g'' f'' es'') | % 79
  c''8. e''16 g''( bes'' des''' bes'') | % 80
  des'''4~ des'''16( c''' bes'' as'') | % 81
  bes''16( g'' es'' des''') c'''( as'' es'' c''') | % 82
  f''16( d'' bes' as'') g''( es'' bes' g'') | % 83
  as''32( g'' f'' es'' as''16) c'' d''( f'' b' d'') | % 84
  es''16(\f c'' as'' fis'') g''8 r | % 85
  es''8.\f g''16 c'''8. g''16 | % 86
  as''8.\trill g''32( as'') f''8. d''16 | % 87
  b'8.\trill a'32( b') g''8. f''16 | % 88
  es''16( d'' c'' b') c''8 r | % 89
  as''16( f'' c''' f'' as'' f'' c''' f'') | % 90
  g''16( es'' c''' es'' g'' es'' c''' es'') | % 91
  fis''16( d'' c''' d'' fis'' d'' c''' d'') | % 92
  g''16( d'' b'' d'' g'' d'' b'' g'') | % 93
  as''16(\ff f'' des'''8)~ des'''16( c''' bes'' as'') | % 94
  g''16( f''32 es'' d''16) c'' b'( d'' g'' b'') | % 95
  c'''16( g'' es'' c'') as''( f'' d'' c'') | % 96
  b'16(\p g' d'' g' f'' g' d'' g') | % 97
  es''16( c'' g'' c'' es'' c'' g'' c'') | % 98
  f''16(\mf d'' as'' d'' f'' d'' as'' d'') | % 99
  fis''16(\f es'' a'' es'' fis'' es'' c''' fis'') | % 100
  g''16(\ff d'' b'' g'') d'''32( c''' b'' a'' g'' f'' es'' d'') | % 101
  es''32( d'' c'' d'' es'' f'' g'' a'' b''16) d'' as''( f'') | % 102
  g''16( es'' c'' g'') as''( f'' d'' c'') | % 103
  d''4.\trill c''16( d'') | % 104

  % --- SECTION 7: RITORNELLO IV & CODA (C minor, mm. 105-122) ---
  c''8 r r4 | % 105
  R2 | R2 | R2 | % 106-108
  R2 | R2 | R2 | % 109-111
  r4 r8 r16 g'\p^\markup { \bold "col Tutti" } | % 112
  es''8( c'''4) a''16( fis'') | % 113
  g''16( d'' b' d'') g'8 r16 g''\ff | % 114
  as''8. f''32( d'') b'8. g''32( f'') | % 115
  es''16( d'' c'' b') c''( d'' es'' e'') | % 116
  f''8. g''32( as'') fis''8. a''32( c''') | % 117
  b''16( d''' g'' b'') d''( f'' as'' f'') | % 118
  es''32( d'' c'' d'' es'' f'' g'' a'' b'' c''' d'''16) c'''8 | % 119
  as''8. g''16 f''8. es''16 | % 120
  d''4.\trill c''16( d'') | % 121
  c''4\fermata r | % 122
  \bar "|."
}

% ==============================================================================
% BASSO CONTINUO - RIGHT HAND (Realization & Ripieno)
% ==============================================================================
continuoRH = {
  \global
  \clef treble

  % --- SECTION 1: RITORNELLO I (Tutti, C minor, mm. 1-18) ---
  <es' g' c''>8.\f^\markup { \bold "Tutti" } g''16 <f' as' c''>8. as''16 | % 1
  <d' f' b'>16 g'' f'' es'' <es' g' c''>8 <d' g' b'> | % 2
  <es' g' c''>16 c'' d'' es'' f''32( es'' d'' c'') d''16 b' | % 3
  <es' g' c''>8. d''32( es'' f''16) as' g'( f') | % 4
  <es' g' c''>8 g''16( f'' es'' d'' c'' bes') | % 5
  <c' f' as'>8 f''16( g'' as'' g'' f'' es'') | % 6
  <d' f' bes'>8 f''16( es'' d'' c'' bes' as') | % 7
  <bes' es'' g''>8 es''16( f'' g'' f'' es'' d'') | % 8
  <c' es' as'>8 es''16( des'' c'' bes' as' g') | % 9
  <c' f' as'>8 d''16( es'' f'' es'' d'' b') | % 10
  <g' c'' es''>8 es''4 d''16( c'') | % 11
  b'16( d'' g' b') d'8 r16 g'\p | % 12
  es''8 es''4 d''16( c'') | % 13
  b'16( d'' g' b') d'8 r16 g'\f | % 14
  as''8. f''32( d'') b'8. g''32( f'') | % 15
  es''16( d'' c'' b') c''( g' es' c') | % 16
  <f' as' c''>8. <es' g' c''>16 <d' f' b'>8 <b d' g'> | % 17
  <c' es' g' c''>8 c' r4 | % 18

  % --- SECTION 2: SOLO EPISODE I (C minor -> Eb major, mm. 19-41) ---
  <es' g'>8\mp^\markup { \bold "Solo" } r16 d'( es'8) <c' g'> | % 19
  <b d' g'>8 r16 c'( d' b' c'' d'') | % 20
  <c' es' g'>8 <c' g'> <c' f'>16( g' as'8) | % 21
  <c' es' g'>8 <c' f' as'> <b d' g'>16( f' es' d') | % 22
  <c' es'>16( d' es' f' g'8) <es' g'> | % 23
  <g' c''>8 <es' g'>16( f' g'8) <bes es' g'> | % 24
  <c' es' as'>8 <bes d' as'> <bes es' g'>16( f' g' as') | % 25
  <d' f' bes'>8 bes'16( c'' d'' es'' f'' g'') | % 26
  <d' f' as'>8 <d' f'> <es' g'> <bes es'> | % 27
  <c' es' as'>8 es'16( f' g' as' bes' c'') | % 28
  <es' g'>8 <d' f'> <es' g'> <bes d'> | % 29
  <bes es'>8. <bes g'>16 <bes d' as'>8 <bes es' g'> | % 30
  <c' es' f'>8. <bes d' f'>16 <a c' f'>8. <c' es' f'>16 | % 31
  <bes d' f'>8 <d' f' bes'> <d' f' as'>4 | % 32
  <bes es' g'>16( f' g' as' bes'8) <d' as'> | % 33
  <es' g'>8 <bes es'> <c' es' as'> <bes d' f'> | % 34
  <c' e' g'>8 <c' e'> <c' f' as'>16( g' f' es') | % 35
  <bes d'>8 <bes d' f'> <bes es' g'>16( f' es' des') | % 36
  <c' es' as'>8 <c' es'> <c' es' ges'> <a c' es'> | % 37
  <bes d' f'>8 <d' f'> <bes d' f'> <bes d' as'> | % 38
  <bes es' g'>8. <bes es'>16 <bes d' f'>8. <bes d'>16 | % 39
  <bes es'>8 <es' g'> <c' es' as'>8. <bes es' g'>16 | % 40
  <c' es' as'>8 <bes es' g'> <bes d' f'>8. <as bes d'>16 | % 41

  % --- SECTION 3: RITORNELLO II (Tutti, Eb major, mm. 42-51) ---
  <es' g' bes'>8.\f^\markup { \bold "Tutti" } bes''16 <f' as' c''>8. as''16 | % 42
  <d' f' as'>16 bes'' as'' g'' <bes d' g'>8 <bes d' f'> | % 43
  <bes es' g'>16 es'' f'' g'' as''32( g'' f'' es'') f''16 d'' | % 44
  <bes es' g'>8. f''32( g'' as''16) c'' bes'( as') | % 45
  <bes es' g'>8 bes''16( as'' g'' f'' es'' des'') | % 46
  <c' es' as'>8 as'16( bes' c'' bes' as' g') | % 47
  f''8. d''32( bes') as''8. f''32( d'') | % 48
  g''16( f'' es'' d'') es''( bes' g' es') | % 49
  <c' es' as'>8. <bes es' g'>16 <bes d' f'>8 <as bes d'> | % 50
  <bes es' g'>8 es' r4 | % 51

  % --- SECTION 4: SOLO EPISODE II (Eb major -> F minor -> G minor, mm. 52-67) ---
  <bes es' g'>8\p^\markup { \bold "Solo" } <bes es'>16( f' g'8) <bes es'> | % 52
  <bes es'>8.\mf <bes d'>16 <bes es'>8 <bes d' g'> | % 53
  <c' f' as'>16( g' as' bes' c''8) <c' f' as'> | % 54
  <c' f'>8.\f <c' e'>16 <c' f'>8 <c' e' g'> | % 55
  <bes' d''>16\mp g'( a' bes') g'( es' c'' g') | % 56
  <a' c''>16 f'( g' a') f'( d' bes' f') | % 57
  <g' bes'>16 es'( f' g') es'( c' a' es') | % 58
  <fis' a'>8\f <d' fis'> <d' g'> <c' fis' a'> | % 59
  <d' fis' a'>8. <d' g'>16 <d' fis' a'>8 <c' fis'> | % 60
  <d' g' bes'>8. <d' a'>16 <d' g' bes'>8 <bes d'> | % 61
  <c' es' g'>8 <c' es'> <cis' e' g'> <a cis' g'> | % 62
  <d' fis' a'>16( g' a'8) <c' d' a'>8. <c' fis' a'>16 | % 63
  <bes d' g'>8 <bes es' g'> <c' es' g'> <c' es' fis'> | % 64
  <bes d' g'>8 <bes d'> <a c' fis'> <a c' d'> | % 65
  <bes d' g'>8 <d' g'> <c' es' g'> <c' es'> | % 66
  <bes d' g'>8 <d' g'> <c' d' fis'>8. <c' fis' a'>16 | % 67

  % --- SECTION 5: RITORNELLO III (Tutti, G minor, mm. 68-77) ---
  <bes d' g'>8.\f^\markup { \bold "Tutti" } d''16 <c' es' g'>8. es''16 | % 68
  <c' fis' a'>16 d'' c'' bes' <bes d' g'>8 <a d' fis'> | % 69
  <bes d' g'>16 g' a' bes' c''32( bes' a' g') a'16 fis' | % 70
  <bes d' g'>8. a'32( bes' c''16) es' d'( c') | % 71
  <d' g' bes'>8 bes''4 a''16( g'') | % 72
  fis''16( a'' d'' fis'') a'8 r16 d'\f | % 73
  es''8. c''32( a') fis'8. d''32( c'') | % 74
  bes'16( a' g' fis') g'( d' bes g) | % 75
  <c' es' g'>8. <bes d' g'>16 <a c' fis'>8 <a c' d'> | % 76
  <bes d' g'>8 g r4 | % 77

  % --- SECTION 6: SOLO EPISODE III (G minor -> Ab major -> C minor, mm. 78-104) ---
  <b' d'' g''>8\mp^\markup { \bold "Solo" } <b' d''> <b' d'' f''> <g' b' d''> | % 78
  <b' d'' f''>8 b'32( c'' d'' es'' f''16) d'' es''8 | % 79
  <c' e' g'>8 <c' e'> <e' g' bes'> <c' e' g'> | % 80
  <e' g' bes'>8 e'32( f' g' as' bes'16) g' as'8 | % 81
  <es' g' bes'>8 <des' es' g'> <c' es' as'> <c' es'> | % 82
  <bes d' f'>8 <bes d'> <bes es'> <bes es' g'> | % 83
  <c' es' as'>8 <c' es'> <b' d'' f''> <b' d''> | % 84
  <c' es' as'>8\f <c' es' fis'> <b' d'' g''> r | % 85
  <c' es' g'>8\f <c' es'> <c' es' g'> <c' es'> | % 86
  <c' f' as'>8 <c' f'> <b d' f' as'> <b d' f'> | % 87
  <b d' g'>8 <b d'> <b d' g'> <b d' f'> | % 88
  <c' es' g'>8 <b d' g'> <c' es' g'>16( d' es' e') | % 89
  <c' f' as'>8. <c' f'>16 <c' f' as'>8. <c' f'>16 | % 90
  <c' es' g'>8. <c' es'>16 <c' es' g'>8. <c' es'>16 | % 91
  <c' d' fis'>8. <c' d'>16 <c' d' fis'>8. <c' d' a'>16 | % 92
  <b' d'' g''>8. <b' d''>16 <b' d'' g''>8. <b' d'' f''>16 | % 93
  <des' f' as'>8\ff <f' as' des''>16( c'' bes'8) <des' f' as'> | % 94
  <d' f' g' b'>8 <d' f' g'> <d' g' b'> <b d' g'> | % 95
  <c' es' g'>8 <c' es'> <c' f' as'>16( g' f' es') | % 96
  <b' d''>8\p <b' d''> <b' d'' f''> <b' d''> | % 97
  <g' c'' es''>8 <g' c''> <g' c'' es''> <g' c''> | % 98
  <g' b' d'' f''>8\mf <g' b' d''> <g' b' d'' f''> <g' b' d''> | % 99
  <fis' a' c'' es''>8\f <fis' a' c''> <fis' a' c'' es''> <fis' a' c''> | % 100
  <g' b' d''>8\ff <g' b' d''> <f' b' d''>4 | % 101
  <g' c'' es''>8 <g' c''> <g' b' d''> <f' b' d''> | % 102
  <es' g' c''>8 <c' es' g'> <c' f' as'> <c' d' f'> | % 103
  <b' d'' g''>8 <c'' es'' g''> <b' d'' f''>8. <b' d'' g''>16 | % 104

  % --- SECTION 7: RITORNELLO IV & CODA (C minor, mm. 105-122) ---
  <es' g' c''>8.\f^\markup { \bold "Tutti" } g''16 <f' as' c''>8. as''16 | % 105
  <d' f' b'>16 g'' f'' es'' <es' g' c''>8 <d' g' b'> | % 106
  <es' g' c''>16 c'' d'' es'' f''32( es'' d'' c'') d''16 b' | % 107
  <es' g' c''>8. d''32( es'' f''16) as' g'( f') | % 108
  <es' g' c''>8 g''16( f'' es'' d'' c'' bes') | % 109
  <c' f' as'>8 d''16( es'' f'' es'' d'' b') | % 110
  <g' c'' es''>8 es''4 d''16( c'') | % 111
  b'16( d'' g' b') d'8 r16 g'\p | % 112
  es''8 es''4 d''16( c'') | % 113
  b'16( d'' g' b') d'8 r16 g'\ff | % 114
  as''8. f''32( d'') b'8. g''32( f'') | % 115
  es''16( d'' c'' b') c''( g' es' c') | % 116
  <f' as' c''>8. <es' g' c''>16 <d' fis' a'>8. <c' fis' a'>16 | % 117
  <d' g' b'>8 <b d' g'> <b d' f' as'> <b d' f'> | % 118
  <c' es' g'>8 <es' g' c''> <f' as' c''> <es' g' c''> | % 119
  <f' c'' d''>8. <es' g' c''>16 <d' f' as' c''>8. <es' g' c''>16 | % 120
  <d' g' b'>8. <c' es' g'>16 <b d' f' g'>8. <b d' g'>16 | % 121
  <c' es' g' c''>4\fermata r | % 122
  \bar "|."
}

% ==============================================================================
% BASSO CONTINUO - LEFT HAND (Cello / Bass)
% ==============================================================================
continuoLH = {
  \global
  \clef bass

  % --- SECTION 1: RITORNELLO I (Tutti, C minor, mm. 1-18) ---
  c8.\f es16 f8. as16 | % 1
  g,8. b,16 c8 g, | % 2
  c8. c'16 g,8. g16 | % 3
  c8. c'16 d8 b, | % 4
  c16( d es f g8) c | % 5
  f,8 as16( g f es d c) | % 6
  bes,16( c d es f8) bes, | % 7
  es,8 g16( f es d c bes,) | % 8
  as,16( bes, c des es8) as, | % 9
  d,8 f16( es d c b, g,) | % 10
  c16 c' b c' fis8 fis | % 11
  g8 g,16 a, b,8 r16 g\p | % 12
  c'16 c b, c fis8 fis | % 13
  g8 g,16 a, b,8 r16 g\f | % 14
  as8. f32( d) b,8. g32( f) | % 15
  es16( d c b,) c( g, es, c,) | % 16
  f8. es16 d8 g, | % 17
  c8 c, r4 | % 18

  % --- SECTION 2: SOLO EPISODE I (C minor -> Eb major, mm. 19-41) ---
  c8\mp c'16( b c'8) es | % 19
  d8 g,16( a, b,8) g, | % 20
  c8. bes,16 as,16( bes, c d) | % 21
  es8 f g g, | % 22
  c8 c'16( d' es'8) c | % 23
  c'8 c16( d es8) es, | % 24
  as,8 bes, es16( d es f) | % 25
  bes,8 d16( es f g as bes) | % 26
  as8 as, g, es | % 27
  as,8 c16( d es f g as) | % 28
  bes8. c'16 bes8. as16 | % 29
  g8. es16 bes,8 es | % 30
  a,8. bes,16 c8. a,16 | % 31
  bes,16( c d es f8) bes, | % 32
  es8 es'16( d' c'8) bes | % 33
  es8. d16 c8 bes, | % 34
  c8 c, f16( g as f) | % 35
  bes,8 d es16( f g es) | % 36
  as8. g16 a8 f | % 37
  bes,16( c d es f8) bes, | % 38
  es16( f g es) bes,16( c d bes,) | % 39
  es8 des c8. g,16 | % 40
  as,8 g, bes,8. bes,16 | % 41

  % --- SECTION 3: RITORNELLO II (Tutti, Eb major, mm. 42-51) ---
  es8.\f g16 as8. f16 | % 42
  bes,8. d16 es8 bes, | % 43
  es8. es'16 bes,8. bes16 | % 44
  es8. es'16 f8 d | % 45
  es16( f g as bes8) es | % 46
  as,8 c'16( bes as g f es) | % 47
  f8. d32( bes,) as8. f32( d) | % 48
  g16( f es d) es( bes, g, es,) | % 49
  as,8. g,16 bes,8 bes, | % 50
  es8 es, r4 | % 51

  % --- SECTION 4: SOLO EPISODE II (Eb major -> F minor -> G minor, mm. 52-67) ---
  es8\p es'16( d' es'8) g | % 52
  es8.\mf bes32( as) g16( f g) es | % 53
  f8 f'16( e' f'8) as | % 54
  f8.\f c'32( bes) as16( g as) f | % 55
  g,16(\mp bes, d g) es( d c g,) | % 56
  f,16( a, c f) d( c bes, f,) | % 57
  es,16( g, bes, es) c( bes, a, g,) | % 58
  fis,8\f d,16( e, fis,8) d, | % 59
  d16( e fis g a8) d | % 60
  g,16( a, bes, c d8) bes, | % 61
  c8. bes,16 a,8 g, | % 62
  fis,8. d,16 a,8 d, | % 63
  es8. d16 c8. c16 | % 64
  d8 bes,16( c d8) d, | % 65
  es8 b, c8. cis16 | % 66
  d8. bes,16 d8. d,16 | % 67

  % --- SECTION 5: RITORNELLO III (Tutti, G minor, mm. 68-77) ---
  g,8.\f bes,16 c8. a,16 | % 68
  d8. fis16 g8 d | % 69
  g,8. g16 d,8. d16 | % 70
  g,8. g16 a,8 fis, | % 71
  g,16 g fis g cis8 cis | % 72
  d8 d,16 e, fis,8 r16 d\f | % 73
  es8. c32( a,) fis,8. d32( c) | % 74
  bes16( a g fis) g( d bes, g,) | % 75
  c8. bes,16 d8 d, | % 76
  g8 g, r4 | % 77

  % --- SECTION 6: SOLO EPISODE III (G minor -> Ab major -> C minor, mm. 78-104) ---
  g8.\mp g'16 b8 g | % 78
  b,8 g,32( a, b, c d16) b, c8 | % 79
  c8. c'16 e8 c | % 80
  e,8 c,32( d, e, f, g,16) e, f,8 | % 81
  g,8 es, as,16( bes, c as,) | % 82
  bes,8 bes, es16( f g es) | % 83
  as8. g16 f8. d16 | % 84
  as8\f as, g r | % 85
  c16(\f d es d c es g es) | % 86
  f,16( g, as, g, f, as, b, d) | % 87
  g,16( a, b, a, g, b, d f) | % 88
  es16( f g g,) c( d es c) | % 89
  f,8. g,16 as,8. f,16 | % 90
  es,8. f,16 g,8. es,16 | % 91
  d,8. e,16 fis,8. d,16 | % 92
  g,8. a,16 b,8. g,16 | % 93
  f,8.\ff f16 des8 f, | % 94
  g,8. g16 f8 d | % 95
  es8 c f,16( g, as, f,) | % 96
  g,16\p g g, g g, g g, g | % 97
  g,16 g g, g g, g g, g | % 98
  g,16\mf g g, g g, g g, g | % 99
  g,16\f g g, g g, g g, g | % 100
  g,16\ff g a, a b, b g, g | % 101
  c8 es g b, | % 102
  c8. bes,16 as,8 f, | % 103
  g,8. c16 g,8. g,16 | % 104

  % --- SECTION 7: RITORNELLO IV & CODA (C minor, mm. 105-122) ---
  c8.\f es16 f8. as16 | % 105
  g,8. b,16 c8 g, | % 106
  c8. c'16 g,8. g16 | % 107
  c8. c'16 d8 b, | % 108
  c16( d es f g8) c | % 109
  f,8 f16( es d c b, g,) | % 110
  c16 c' b c' fis8 fis | % 111
  g8 g,16 a, b,8 r16 g\p | % 112
  c'16 c b, c fis8 fis | % 113
  g8 g,16 a, b,8 r16 g\ff | % 114
  as8. f32( d) b,8. g32( f) | % 115
  es16( d c b,) c( g, es, c,) | % 116
  f8. es16 d8. c16 | % 117
  b,8 g,16( a, b,8) g, | % 118
  c8. d16 es8 c | % 119
  f8. es16 d8. c16 | % 120
  g,8. c16 g,8. g,16 | % 121
  <c, c>4\fermata r | % 122
  \bar "|."
}

% ==============================================================================
% SCORE & OUTPUT
% ==============================================================================
\score {
  <<
    \new Staff \with {
      instrumentName = "Oboe"
      shortInstrumentName = "Ob."
      midiInstrument = "oboe"
    } \oboePart

    \new PianoStaff \with {
      instrumentName = "Basso Continuo"
      shortInstrumentName = "B.c."
    } <<
      \new Staff = "continuoUpper" \with {
        midiInstrument = "harpsichord"
      } \continuoRH

      \new Staff = "continuoLower" \with {
        midiInstrument = "cello"
      } \continuoLH
    >>
  >>

  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }

  \midi { }
}