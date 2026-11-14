\version "2.24.0"

\header {
  title = "Sonata in C Minor"
  subtitle = "I"
  composer = "In the style of L. van Beethoven"
  tagline = ##f
}

global = {
  \key c \minor
  \time 2/2
  \tempo "Allegro con brio" 2 = 88
}

% ==============================================================================
% EXPOSITION
% ==============================================================================

% Primary Theme (Bars 1-12)
expPRH = {
  <c' es' g' c''>4.\f c'8 es'4. g'8 |
  <es' g' c''>2(\sf <d' g' b'>4)\p r4 |
  <b d' f' g'>4.\f b8 d'4. g'8 |
  <f' b' d''>2(\sf <es' g' c''>4)\p r4 |
  e'4.(\p g'8\cresc c''4. bes'8) |
  <f' as'>2(\sf f'4)\p r4 |
  fis'4.(\cresc a'8 es''4. c''8) |
  <g' c'' es''>2(\f <g' b' d''>4) r4 |
  c''8(\p d'' es'' d'' c'' bes' as' g') |
  f'8(\cresc g' as' g' fis' g' a' b') |
  c''4\f <f' as' d''>4 <es' g' c''>4 <d' g' b'>4 |
  <es' g' c''>4 r4 r2 |
}

expPLH = {
  <c, c>2 r2 |
  <g,, g,>2( g,4) r4 |
  <g,, g,>2 r2 |
  <b, g>2( c4) r4 |
  c8 g bes g c g bes g |
  f,8 c as, c f, c as, c |
  a,8 es fis es a, es fis es |
  g,8 c es c g, b, d b, |
  as,2( f,2) |
  d,2( g,2) |
  c4 f,4 g,4 g,,4 |
  <c,, c,>4 r4 r2 |
}

% Transition (Bars 13-22)
expTRRH = {
  r8\p <es' g'>8 r8 <es' g'>8 r8 <es' g'>8 r8 <es' g'>8 |
  r8\sf <f' as'>8 r8\p <f' as'>8 r8 <f' as'>8 r8 <f' as'>8 |
  r8\cresc <es' g'>8 r8 <es' g'>8 r8 <es' bes'>8 r8 <es' bes'>8 |
  r8\sf <es' fis' c''>8 r8 <es' fis' c''>8 r8 <es' fis' c''>8 r8 <es' fis' c''>8 |
  <d' bes'>8\f f' bes' c'' d'' es'' f'' d'' |
  es''8(\sf c'' a' f' es' c' a f) |
  <d' bes'>8\f f' bes' c'' d'' f'' bes'' d'' |
  es''8(\sf c'' a' f' es' c' a f) |
  <d' f' bes'>4\ff r4 <d' f' bes'>4 r4 |
  <d' f' bes'>4 r4 r2 |
}

expTRLH = {
  c,4. c8 es4. g8 |
  bes,,2( bes,4) r4 |
  es,4. es8 g4. bes8 |
  a,,2( a,4) r4 |
  <bes,, bes,>4 <bes, d f>4 <bes, d f>4 <bes, d f>4 |
  <bes,, bes,>2. r4 |
  <bes,, bes,>4 <bes, d f>4 <bes, d f>4 <bes, d f>4 |
  <f,, f,>2. r4 |
  <bes,, bes,>4 r4 <bes,, bes,>4 r4 |
  <bes,, bes,>4 r4 r2 |
}

% Secondary Theme in E-flat Major (Bars 23-38)
expSRH = {
  bes'2(\p_\markup { \italic "dolce" } g''4. es''8 |
  d''4 c''8 bes' as'4) r8 f'8( |
  as'2 f''4. d''8 |
  c''4 bes'8 as' g'4) r4 |
  g'4(\cresc c''4 e''4. g''8 |
  as''2\sf f''4) d''4(\p |
  es''4 c''4 a'4. c''8 |
  c''2 bes'4) r4 |
  bes'4(\p es''8 g'' bes''4. es''8 |
  d''4 c''8 bes' as'4) r8 as'8( |
  as'4\pp ces''8 es'' as''4. ces''8 |
  bes'4\cresc es''4 g''4. bes''8) |
  <c'' fis'' a''>2(\f <es'' c'''>4 <c'' a''>4) |
  <bes' g''>4( es''8 f'' g'' as'' bes'' g'') |
  f''8( es'' d'' es'' f''4 <as' d''>4) |
  <g' es''>4 r8\f bes'8( es'' d'' es'' f'' |
}

expSLH = {
  es8 bes g bes es bes g bes |
  f8 bes as bes d bes as bes |
  d8 bes as bes d bes as bes |
  es8 bes g bes es bes g bes |
  c8 g e g c g e g |
  f8 as c' as f as d' as |
  f8 a c' a f a es' a |
  bes,8 d f d bes,4 r4 |
  es8 bes g bes es bes g bes |
  f8 bes as bes d bes as bes |
  ces8 es as es ces es as es |
  bes,8 es g es bes, es g es |
  a,8 es fis es a, es fis es |
  bes,8 es g es bes, es g es |
  bes,8 d f d bes,4 <bes,, bes,>4 |
  <es, es>4 r4 r2 |
}

% Closing Theme (Bars 39-46)
expCRH = {
  g''4) <bes' g''>4\sf <as' f''>4\sf <f' d''>4 |
  es''4 r8 bes'8( es'' d'' es'' f'' |
  g''4) <bes' g''>4\sf <as' f''>4\sf <f' d''>4 |
  es''8\ff bes' g' bes' es'' bes' g' bes' |
  as''8 es'' c'' es'' d'' bes' as' f' |
  <g' bes' es''>4 <bes' es'' g''>4 <g' bes' es''>4 r4 |
  <g' bes' es''>2.(\p <f' as' d''>4 |
  <g' bes' es''>2) r2 |
}

expCLH = {
  es,8 es g es bes, bes as bes |
  es8 bes, g, bes, es,4 r4 |
  es,8 es g es bes, bes as bes |
  <es, es>2 <g, g>2 |
  <as, as>2 <bes, bes>2 |
  <es, es>4 <es, g, bes,>4 <es,, es,>4 r4 |
  es,4. es8 g4. bes8 |
  es2( es,4) r4 |
}

% ==============================================================================
% DEVELOPMENT (Bars 49-78)
% ==============================================================================

devRH = {
  <as' c'' f''>4.\p f'8 as'4. c''8 |
  <g' bes' des''>2(\sf <g' bes' c''>4)\p r4 |
  <fis' a' c'' d''>4.\f d'8 fis'4. a'8 |
  <g' bes' es''>2(\sf <g' bes' d''>4)\p r4 |
  g'4.(\p bes'8\cresc d''4. g''8 |
  fis''2 a''4) r4 |
  bes'4.( d''8 g''4. f''8 |
  es''2\f c''4) r4 |
  es''2(\p_\markup { \italic "espressivo" } c'''4. as''8 |
  g''4 f''8 es'' des''4) r4 |
  des''2(\cresc bes''4. g''8 |
  g''4\f f''8 g'' as''4) f''4 |
  f''2(\ff bes''4. des''8) |
  des''2(\sf c''8 bes' as' g') |
  as'2(\sf es''4. c''8) |
  c''2(\sf b'8 a' g' fis') |
  g'8\ff b' d'' g'' b'' g'' d'' b' |
  as'8\sf b' d'' f'' as'' f'' d'' b' |
  g'8 b' d'' g'' b'' g'' d'' b' |
  as'8\sf b' d'' f'' as'' f'' d'' b' |
  <c'' es''>2(\p <b' d''>4) r4 |
  <d'' f''>2( <b' d''>4) r4 |
  <es'' g''>2(\cresc <d'' f''>4) r4 |
  <f'' as''>2( <d'' f''>4) r4 |
  <es'' g''>4(\f <d'' f''>4) <c'' es''>4( <b' d''>4) |
  <as' c''>4( <g' b'>4) <f' as'>4( <d' f'>4) |
  g8(\f a8\cresc b c' d' es' f' g' |
  as'8 b' c'' d'' es'' f'' g'' as'' |
  <b' d'' f'' b''>4)\ff r4 <b' d'' f'' g''>4 r4 |
  g''4\ff f''4 d''4 b'4 |
}

devLH = {
  <f,, f,>2 r2 |
  <e, c>2( c,4) r4 |
  <d,, d,>2 r2 |
  <g, d>2( g,4) r4 |
  r2 g,4. bes,8 |
  d4. fis8 a4. c'8 |
  bes4 r4 b,4. d8 |
  es4. c8 g,4. c,8 |
  as,8 c es c as, c es c |
  bes,8 es des es g, es des es |
  e,8 g, bes, g, e, g, bes, g, |
  f,8 as, c as, f, as, c as, |
  bes,8 des f des bes, des f des |
  es,8 g, bes, g, es, g, bes, g, |
  as,8 c es c as, c es c |
  d,8 f, as, f, d, fis, a, fis, |
  <g,, g,>2 <g, b, d>2 |
  <g,, g,>2 <g, b, d f>2 |
  <g,, g,>2 <g, b, d>2 |
  <g,, g,>2 <g, b, d f>2 |
  g,8 g g, g g, g g, g |
  g,8 g g, g g, g g, g |
  g,8 g g, g g, g g, g |
  g,8 g g, g g, g g, g |
  g,8 g g, g g, g g, g |
  g,8 g g, g g, g g, g |
  <g,, g,>1~ |
  <g,, g,>2 <g,, g,>2 |
  <g,, g,>4 r4 <g,, g,>4 r4 |
  g4 f4 d4 g,4 |
}

% ==============================================================================
% RECAPITULATION (Bars 79-124)
% ==============================================================================

% Primary Theme (Bars 79-90)
recPRH = {
  <c' es' g' c''>4.\ff c'8 es'4. g'8 |
  <es' g' c''>2(\sf <d' g' b'>4)\p r4 |
  <b d' f' g'>4.\ff b8 d'4. g'8 |
  <f' b' d''>2(\sf <es' g' c''>4)\p r4 |
  e'4.(\p g'8\cresc c''4. bes'8) |
  <f' as'>2(\sf f'4)\p r4 |
  fis'4.(\cresc a'8 es''4. c''8) |
  <g' c'' es''>2(\f <g' b' d''>4) r4 |
  c''8(\p d'' es'' d'' c'' bes' as' g') |
  f'8(\cresc g' as' g' fis' g' a' b') |
  c''4\f <f' as' d''>4 <es' g' c''>4 <d' g' b'>4 |
  <es' g' c''>4 r4 r2 |
}

recPLH = {
  <c,, c,>2 r2 |
  <g,, g,>2( g,4) r4 |
  <g,, g,>2 r2 |
  <b, g>2( c4) r4 |
  c8 g bes g c g bes g |
  f,8 c as, c f, c as, c |
  a,8 es fis es a, es fis es |
  g,8 c es c g, b, d b, |
  as,2( f,2) |
  d,2( g,2) |
  c4 f,4 g,4 g,,4 |
  <c,, c,>4 r4 r2 |
}

% Re-routed Transition to V of C (Bars 91-100)
recTRRH = {
  r8\p <es' g'>8 r8 <es' g'>8 r8 <es' g'>8 r8 <es' g'>8 |
  r8\sf <e' g' c''>8 r8\p <e' g' c''>8 r8 <e' g' c''>8 r8 <e' g' c''>8 |
  r8\cresc <f' as'>8 r8 <f' as'>8 r8 <f' c''>8 r8 <f' c''>8 |
  r8\sf <es' a' c''>8 r8 <es' a' c''>8 r8 <es' a' c''>8 r8 <es' a' c''>8 |
  <b g'>8\f d' g' a' b' c'' d'' b' |
  es''8(\sf c'' a' fis' es' c' a fis) |
  <b g'>8\f d' g' a' b' d'' g'' b' |
  es''8(\sf c'' a' fis' es' c' a fis) |
  <b' d'' g''>4\ff r4 <b' d'' g''>4 r4 |
  <b' d'' g''>4 r4 r2 |
}

recTRLH = {
  c,4. c8 es4. g8 |
  bes,,2( bes,4) r4 |
  as,,4. f,8 as,4. c8 |
  fis,,2( fis,4) r4 |
  <g,, g,>4 <g, b, d>4 <g, b, d>4 <g, b, d>4 |
  <g,, g,>2. r4 |
  <g,, g,>4 <g, b, d>4 <g, b, d>4 <g, b, d>4 |
  <d,, d,>2. r4 |
  <g,, g,>4 r4 <g,, g,>4 r4 |
  <g,, g,>4 r4 r2 |
}

% Secondary Theme: C Major turning to C Minor (Bars 101-116)
recSRH = {
  g'2(\p_\markup { \italic "dolce" } e''4. c''8 |
  b'4 a'8 g' f'4) r8 d'8( |
  f'2 d''4. b'8 |
  a'4 g'8 f' e'4) r4 |
  e'4(\cresc a'4 cis''4. e''8 |
  f''2\sf d''4) b'4(\p |
  c''4 a'4 fis'4. a'8 |
  a'2 g'4) r4 |
  g'4(\pp c''8 es'' g''4. c''8 |
  b'4 as'8 g' f'4) r8 f'8( |
  f'4\cresc as'8 c'' f''4. as'8 |
  g'4 c''4 es''4. g''8) |
  <a' es'' fis''>2(\f <c'' a''>4 <a' fis''>4) |
  <g' es''>4( c''8 d'' es'' f'' g'' es'') |
  d''8( c'' b' c'' d''4 <f' b'>4) |
  <es' c''>4 r8\f g'8( c'' b' c'' d'' |
}

recSLH = {
  c8 g e g c g e g |
  d8 g f g b, g f g |
  b,8 g f g b, g f g |
  c8 g e g c g e g |
  a,8 e cis e a, e cis e |
  d8 f a f d f b f |
  d8 fis a fis d fis c' fis |
  g,8 b, d b, g,4 r4 |
  c8 g es g c g es g |
  d8 g f g b, g f g |
  as,8 c f c as, c f c |
  g,8 c es c g, c es c |
  fis,8 c es c fis, c es c |
  g,8 c es c g, c es c |
  g,8 b, d b, g,4 <g,, g,>4 |
  <c, c>4 r4 r2 |
}

% Closing Theme with Deceptive Pivot to Coda (Bars 117-124)
recCRH = {
  es''4) <g' es''>4\sf <f' d''>4\sf <d' b'>4 |
  c''4 r8 g'8( c'' b' c'' d'' |
  es''4) <g' es''>4\sf <f' d''>4\sf <d' b'>4 |
  c''8\ff g' es' g' c'' g' es' g' |
  f''8 c'' as' c'' b' g' f' d' |
  <es' as' c''>2.\sf <es' as' c''>4 |
  <es' a' c'' fis''>2.\sf <es' a' c'' fis''>4 |
  <es' g' c'' es''>2\ff <d' f' g' b'>2 |
}

recCLH = {
  c,8 c es c g, g f g |
  c8 g, es, g, c,4 r4 |
  c,8 c es c g, g f g |
  <c, c>2 <es, es>2 |
  <f, f>2 <g, g>2 |
  <as,, as,>2. <as,, as,>4 |
  <fis,, fis,>2. <fis,, fis,>4 |
  <g,, g,>2 <g,, g,>2 |
}

% ==============================================================================
% CODA (Bars 125-140)
% ==============================================================================

codaRH = {
  <c' e' g' bes'>4.\ff c'8 e'4. g'8 |
  <f' as' des''>2(\sf <f' as' c''>4) r4 |
  <c' es' fis' a'>4.\ff c'8 es'4. a'8 |
  <fis' a' es''>2(\sf <es' g' c''>4) r4 |
  c'4(\p es'4 g'4 c''4 |
  b'4 d''4 f''4 as''4 |
  g''4)\cresc es''4( c''4 g'4 |
  <f' as' d''>2\f <d' g' b'>2) |
  c'8\ff es' g' c'' es'' g'' c''' g'' |
  f''8 d'' b' g' f' d' b d' |
  c'8 es' g' c'' es'' g'' c''' g'' |
  <as' c'' f''>2\sf <g' b' d'' g''>2\sf |
  <c'' es'' g'' c'''>4\ff r4 <d' f' g' b'>4 r4 |
  <es' g' c''>4 r4 <d' f' g' b'>4 r4 |
  <c' es' g' c''>4 r4 <es' g' c'' es''>4 r4 |
  <c' es' g' c''>2 r2 \bar "|."
}

codaLH = {
  <c,, c,>8 c, c, c, c, c, c, c, |
  c,8 c, c, c, c, c, c, c, |
  c,8 c, c, c, c, c, c, c, |
  c,8 c, c, c, c, c, c, c, |
  c,2( g,2 |
  f,2 d,2 |
  es,2 c,2 |
  f,,2 g,,2) |
  <c,, c,>4 <c, es, g,>4 <c, es, g,>4 <c, es, g,>4 |
  <c,, c,>4 <g,, g,>4 <g,, g,>4 <g,, g,>4 |
  <c,, c,>4 <c, es, g,>4 <c, es, g,>4 <c, es, g,>4 |
  <f,, f,>2 <g,, g,>2 |
  <c,, c,>4 r4 <g,, g,>4 r4 |
  <c, c>4 r4 <g,, g,>4 r4 |
  <c,, c,>4 r4 <c,, c,>4 r4 |
  <c,, c,>2 r2 \bar "|."
}

% ==============================================================================
% SCORE ASSEMBLY
% ==============================================================================

upper = {
  \global
  \clef treble
  \repeat volta 2 {
    \expPRH
    \expTRRH
    \expSRH
    \expCRH
  }
  \alternative {
    {
      <b' d'' f'' g''>1\ff~ |
      <b' d'' f'' g''>4 r4 r2 |
    }
    {
      <bes' c'' e'' g''>1\ff~ |
      <bes' c'' e'' g''>4 r4 r2 |
    }
  }
  \devRH
  \recPRH
  \recTRRH
  \recSRH
  \recCRH
  \codaRH
}

lower = {
  \global
  \clef bass
  \repeat volta 2 {
    \expPLH
    \expTRLH
    \expSLH
    \expCLH
  }
  \alternative {
    {
      <g,, g,>4. g,8 b,4. d8 |
      g4 r4 r2 |
    }
    {
      <c,, c,>4. c,8 e,4. g,8 |
      c4 r4 r2 |
    }
  }
  \devLH
  \recPLH
  \recTRLH
  \recSLH
  \recCLH
  \codaLH
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}