\version "2.26.0"

% Prélude in F-sharp major, in the style of Alexander Scriabin.
%
% The harmony turns on the four dominants a minor third apart
% (C-sharp, E, G, B-flat), each followed by the French sixth a tritone
% away. The left hand plays wide triplet arpeggios against a duple melody.

\header {
  title = "Prélude"
  subtitle = "in the style of Alexander Scriabin"
  tagline = ##f
}

\paper {
  indent = 0
  ragged-last-bottom = ##f
}

global = {
  \key fis \major
  \time 3/4
  \set Timing.beamExceptions = #'()
  \tempo "Lento languido" 4 = 52
  s2.*8
  \set Score.tempoHideNote = ##t
  \tempo "Poco più mosso, affannato" 4 = 60
  s2.*3
  \tempo 4 = 50                 % allargando (playback only)
  s2.
  \tempo "Estatico" 4 = 48
  s2.*2
  \tempo 4 = 44                 % calando (playback only)
  s2.*2
  \tempo "Tempo I" 4 = 50
  s2.*2
  \tempo 4 = 40                 % smorzando (playback only)
  s2.*3
  \bar "|."
}

upper = {
  \clef treble

  % --- A: the theme on C-sharp, then a minor third higher on E ---
  r4 r8 ais'8(^\markup { \italic "accarezzevole" } dis''4~ |
  dis''8 d''8 cis''4. b'8 |
  ais'2) r8 dis''8( |
  gis''4. fis''8 dis''4) |

  r4 r8 cis''8( fis''4~ |
  fis''8 f''8 e''4. d''8 |
  cis''2) r8 fis''8( |
  <d'' b''>4. <c'' a''>8 <a' fis''>4) |

  % --- B: the cycle continues through G and B-flat ---
  r8 e''8( a''4~ a''8 aes''8 |
  g''2) r8 g''8( |
  c'''4. ces'''8 bes''4) |
  r4^\markup { \italic "allargando" }
  \tuplet 5/4 { gis'8[( d'' e'' gis'' ais''] } |

  % --- Climax: the theme returns an octave higher ---
  <dis''~ gis'' b'' dis'''~>2. |
  <dis'' dis'''>8 <d'' d'''>8 <cis'' eis'' b'' cis'''>4. <b' b''>8 |
  <ais' cis'' fis'' ais''>2)^\markup { \italic "calando" } r8 dis''8( |
  gis''4. fis''8 d''4 |

  % --- Coda over a tonic pedal ---
  cis''2) r8 ais''8( |
  dis'''2.~ |
  dis'''8^\markup { \italic "smorzando" } d'''8 cis'''2~ |
  cis'''2.) |
  <ais' cis'' dis'' fis'' ais''>2.\arpeggio\fermata |
}

dynamics = {
  s4. s8\p\< s4 |
  s8\! s8\> s2 |
  s2\! s4 |
  s4.\> s8 s4\! |

  s4. s8\mp\< s4 |
  s8\! s8\> s2 |
  s2\! s8 s8\< |
  s4. s8\! s4 |

  s8 s8\mf\< s2 |
  s2. |
  s2.\f |
  s4 s2\< |

  s2.\ff |
  s2.\> |
  s2\mp s4 |
  s4.\> s4. |

  s2.\pp |
  s2. |
  s8 s8\> s2 |
  s2. |
  % start the marking at the notehead so it clears the arpeggio sign
  \once \override DynamicText.self-alignment-X = #LEFT
  s2.\ppp |
}

lower = {
  \clef bass

  \tuplet 3/2 4 { cis,8_\markup { \italic "con Ped." } gis, eis  b dis' eis'  dis' b eis } |
  \omit TupletNumber
  \tuplet 3/2 4 { g,8 eis b  cis' eis' cis'  b eis cis } |
  \tuplet 3/2 4 { fis,8 cis gis  ais cis' dis'  cis' ais cis } |
  \tuplet 3/2 4 { b,,8 fis, dis  a cis' dis'  cis' a dis } |

  \tuplet 3/2 4 { e,8 b, gis  d' fis' gis'  fis' d' gis } |
  \tuplet 3/2 4 { bes,8 gis d'  e' gis' e'  d' gis e } |
  \tuplet 3/2 4 { a,8 e b  cis' e' fis'  e' cis' e } |
  \tuplet 3/2 4 { d,8 a, fis  c' e' fis'  e' c' fis } |

  \tuplet 3/2 4 { g,,8 d, b,  f a b  a f b, } |
  \tuplet 3/2 4 { des,8 b, f  g b g  f b, g, } |
  \tuplet 3/2 4 { bes,,8 f, d  aes c' d'  c' aes d } |
  \tuplet 3/2 4 { e,,8 e, d  gis ais d'  ais gis d } |

  \tuplet 3/2 4 { <cis,, cis,>8 gis, eis  b dis' eis'  dis' b eis } |
  \tuplet 3/2 4 { <g,, g,>8 eis b  cis' eis' cis'  b eis cis } |
  \tuplet 3/2 4 { fis,,8 cis, ais,  fis ais cis'  dis' cis' ais } |
  \tuplet 3/2 4 { b,,8 fis, d  gis b d'  b gis d } |

  \tuplet 3/2 4 { fis,8 cis gis  ais cis' dis'  cis' ais cis } |
  \tuplet 3/2 4 { fis,,8 cis, ais,  fis gis ais  cis' ais fis } |
  \tuplet 3/2 4 { fis,,8 fis, b,  eis g b  cis' b g } |
  \tuplet 3/2 4 { fis,,8 cis, fis,  ais, cis fis  ais cis' dis' } |
  <fis,, cis, fis,>2.\arpeggio_\fermata |
}

% One pedal per bar, for playback only.
pedalMidi = {
  s2.\sustainOn
  \repeat unfold 20 { s2.\sustainOff\sustainOn }
}

% Printed score
\score {
  \new PianoStaff \with { connectArpeggios = ##t } <<
    \new Staff = "upper" << \global \upper >>
    \new Dynamics \dynamics
    \new Staff = "lower" << \global \lower >>
  >>
  \layout { }
}

% Playback: the dynamics and pedal are fed to both hands
\score {
  \new PianoStaff <<
    \new Staff = "upper" \with { midiInstrument = "acoustic grand" } <<
      \global
      \new Voice = "rh" \upper
      \context Voice = "rh" \dynamics
      \context Voice = "rh" \pedalMidi
    >>
    \new Staff = "lower" \with { midiInstrument = "acoustic grand" } <<
      \global
      \new Voice = "lh" \lower
      \context Voice = "lh" \dynamics
      \context Voice = "lh" \pedalMidi
    >>
  >>
  \midi { }
}
