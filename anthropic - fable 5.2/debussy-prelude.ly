\version "2.24.0"

% Prélude  (… Lanternes sur l'eau)
% An original piano prelude in the manner of Claude Debussy.
%
% Plan:
%   bars  1-10  D-flat pentatonic melody over a rocking stack of fifths,
%               drifting into the Lydian mode (G natural)
%   bars 11-20  whole-tone episode (D-flat E-flat F G A B) over a pedal A
%   bars 21-26  climax: parallel major triads over a pedal A-flat
%   bars 27-32  the melody returns an octave higher, "lointain"
%   bars 33-38  coda: the opening interval shrinks (6th, 5th, 4th) and fades

\header {
  title = "Prélude"
  subtitle = \markup { \italic "à la manière de Claude Debussy" }
  tagline = ##f
}

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  #(set-paper-size "a4")
  top-margin = 14\mm
  bottom-margin = 14\mm
  left-margin = 16\mm
  right-margin = 16\mm
  last-bottom-spacing.basic-distance = #10
}

global = {
  \key des \major
  \time 6/8
  \set Score.tempoHideNote = ##t
}

upper = {
  \global
  \clef treble
  \tempo "Lent et flottant" 4. = 44

  % ---- 1-2: the water alone, then a first glint of light
  R2. |
  r4. \ottava 1 \acciaccatura { aes''8 } <ees''' aes'''>4.\ppp \ottava 0 |

  % ---- 3-6: pentatonic melody
  aes'8\p(^\markup { \italic "doux et expressif" } f''4~ f''8 ees'' des'' |
  bes'4.~ bes'8 aes' f') |
  ges'8( ees''4~ ees''8 des'' bes' |
  aes'4.) \ottava 1 \acciaccatura { aes''8 } <ees''' aes'''>4.\pp \ottava 0 |

  % ---- 7-10: the same melody in open fifths and octaves, rising into Lydian
  <aes' ees'' aes''>8\mp( <f'' c''' f'''>4~ <f'' c''' f'''>8
    <ees'' bes'' ees'''> <des'' aes'' des'''> |
  <bes' f'' bes''>4.~ <bes' f'' bes''>8 <des'' aes'' des'''> <ees'' bes'' ees'''>) |
  \ottava 1
  <des''' f'''>4.\>( <ees''' g'''>4. |
  <f''' a'''>4.~ <f''' a'''>4) r8\! |
  \ottava 0

  % ---- 11-20: whole-tone episode
  \tempo "Un peu animé" 4. = 54
  a'16\pp(^\markup { \italic "léger, comme un reflet" }
    b' des'' ees'' f'' g'' a'' g'' f'' ees'' des'' b') |
  b''8.( a''16 g''8~ g''8 f'' ees'') |
  b'16( des'' ees'' f'' g'' a'' b'' a'' g'' f'' ees'' des'') |
  des'''8.( b''16 a''8~ a''8 g'' f'') |
  f''16(^\markup { \italic "murmuré" } a'' g'' b'' f'' a'' g'' b'' f'' a'' g'' b'') |
  g''16( b'' a'' des''' g'' b'' a'' des''' g'' b'' a'' des''') |
  f''16\p\<(^\markup { \italic "en animant" }
    g'' a'' b'' des''' ees''' f''' ees''' des''' b'' a'' g'') |
  \ottava 1
  a''16( b'' des''' ees''' f''' g''' a''' g''' f''' ees''' des''' b'') |
  <ees'' g'' b''>8\mf\<( <f'' a'' des'''> <g'' b'' ees'''>
    <a'' des''' f'''> <b'' ees''' g'''> <des''' f''' a'''>) |
  a'''16( g''' f''' ees''' des''' b'' \ottava 0 a'' g'' f'' ees'' des'' b') |

  % ---- 21-26: climax in parallel triads, then dissolving
  \tempo "Large et sonore" 4. = 40
  \voiceOne  % stems up: the left hand shares this staff in bars 21 and 23
  <ges' bes' des''>8\f( <ees'' g'' bes''>4--~ <ees'' g'' bes''>8
    <des'' f'' aes''> <ces'' ees'' ges''> |
  <aes' c'' ees''>4.\<~ <aes' c'' ees''>8 <ges' bes' des''> <ees' g' bes'>) |
  <aes' c'' ees''>8\ff( <f'' aes'' c'''>4--~ <f'' aes'' c'''>8
    <ees'' g'' bes''> <des'' f'' aes''> |
  <bes' des'' f''>4.\>~ <bes' des'' f''>8 <aes' c'' ees''> <f' aes' c''>) |
  \oneVoice
  <ges' bes' ees''>4.\mf\>(^\markup { \italic "en retenant" } <ges' bes' des''>4.) |
  ees''8\p( des'' bes' aes'4.)\fermata |

  % ---- 27-32: reprise, far away
  \tempo "Au mouvement" 4. = 44
  aes''8\pp(^\markup { \italic "lointain" } f'''4~ f'''8 ees''' des''' |
  bes''4.~ bes''8 aes'' f'') |
  ges''8( ees'''4~ ees'''8 des''' bes'' |
  aes''4.) \ottava 1 \acciaccatura { aes''8 } <ees''' aes'''>4.\ppp \ottava 0 |
  <des'' f''>4.\pp( <ees'' g''>4. |
  <f'' a''>4. <f'' aes''>4.) |

  % ---- 33-38: coda
  \tempo "Très lent" 4. = 36
  r8 aes'8( f''8~ f''4.) |
  r8 aes'8( ees''8~ ees''4.) |
  r8 aes'8\ppp( des''8~ des''4.) |
  r4. des'16(^\markup { \italic "en s'effaçant" } f' aes' bes' ees'' aes'') |
  <f'' bes'' ees''' aes'''>2.\arpeggio |
  r4. \ottava 1 \acciaccatura { aes''8 } <ees''' aes'''>4.\fermata \ottava 0 |
  \bar "|."
}

lower = {
  \global
  \clef bass

  % ---- 1-6: rocking stacks of fifths
  des,8^\pp(_\markup { \italic "(les deux pédales)" } aes, ees aes ees aes,) |
  des,8( aes, ees aes ees aes,) |
  des,8( aes, ees aes ees aes,) |
  des,8( aes, ees aes ees aes,) |
  ces,8( ges, des ges des ges,) |
  aes,,8( ees, bes, ees bes, ees,) |

  % ---- 7-10
  des,8( aes, ees aes ees aes,) |
  bes,,8( f, c f c f,) |
  des,8( aes, ees aes ees aes,) |
  des,8( a, f a f a,) |

  % ---- 11-20: augmented triads over a pedal A
  <a,, a,>4. <g b ees'>4. |
  <a,, a,>4. <f a des'>4. |
  <a,, a,>4. <a des' f'>4. |
  <a,, a,>4. <g b ees'>4. |
  << { r8 ees'8.(^\markup { \italic "un peu en dehors" } des'16 b8 a g) }
     \\ { a,,2. } >> |
  << { r8 f'8.( ees'16 des'8 b a) } \\ { a,,2. } >> |
  <a, des f>4.( <b, ees g>4. |
  <des f a>4. <ees g b>4.) |
  <des' f' a'>8( <b ees' g'> <a des' f'> <g b ees'> <f a des'> <ees g b>) |
  <a,, a,>2. |

  % ---- 21-26: pedal A-flat under the planing triads
  <<
    {
      % the left hand's higher triads are written on the upper staff
      \change Staff = "up" \voiceTwo
      s8 <ees' g' bes'>4~ <ees' g' bes'>8 <des' f' aes'> <ces' ees' ges'> |
      \change Staff = "down" \voiceOne
      <aes c' ees'>4.~ <aes c' ees'>8 <ges bes des'> <ees g bes> |
      \change Staff = "up" \voiceTwo
      s8 <f' aes' c''>4~ <f' aes' c''>8 <ees' g' bes'> <des' f' aes'> |
      \change Staff = "down" \voiceOne
      <bes des' f'>4.~ <bes des' f'>8 <aes c' ees'> <f aes c'> |
      r8 <ges bes ees'>4 <ges bes des'>4. |
      s2. |
    }
    \\
    {
      <aes,, aes,>2.~ |
      <aes,, aes,>2. |
      <aes,, aes,>2.~ |
      <aes,, aes,>2. |
      <aes,, aes,>2.~ |
      <aes,, aes,>4.~ <aes,, aes,>4.\fermata |
    }
  >>

  % ---- 27-32: the ostinato now flows in sixteenths
  des,16( aes, ees aes des' ees' aes' ees' des' aes ees aes,) |
  des,16( aes, ees aes des' ees' aes' ees' des' aes ees aes,) |
  ces,16( ges, des ges ces' des' ges' des' ces' ges des ges,) |
  aes,,16( ees, aes, bes, ees ges bes ges ees bes, aes, ees,) |
  des,16( aes, f g des' f' g' f' des' g f aes,) |
  des,16( a, f a des' f' aes' f' des' aes f aes,) |

  % ---- 33-38: coda
  <des, aes, ees>2.\arpeggio |
  <ces, ges, des>2.\arpeggio |
  <ges,, des, bes,>2.\arpeggio |
  des,16( aes, des f aes bes) r4. |
  <des,, des,>2.~ |
  <des,, des,>4.~ <des,, des,>4.\fermata |
  \bar "|."
}

% Sustain pedal for MIDI playback only (Debussy left pedalling to the player,
% so nothing is printed).  One pedal per bar, half-bar changes in the climax.
pedBar  = { s16*11\sustainOn s16\sustainOff }
pedHalf = { s16*5\sustainOn s16\sustainOff }
pedal = {
  \repeat unfold 20 \pedBar
  \repeat unfold 8 \pedHalf
  \repeat unfold 12 \pedBar
  s2.\sustainOn s8*5 s8\sustainOff
}

% Engraved score
\score {
  \new PianoStaff <<
    \new Staff = "up" \upper
    \new Staff = "down" \lower
  >>
  \layout {
    \context {
      \Score
      \override TextScript.font-size = #-0.5
    }
  }
}

\markup {
  \vspace #2
  \fill-line { \null \italic \larger "(… Lanternes sur l'eau)" }
}

% Playback: both staves share one channel so the pedal sustains both hands,
% and dynamics are heard by the whole PianoStaff rather than one voice.
\score {
  \new PianoStaff <<
    \new Staff = "up" \upper
    \new Staff = "down" << \lower \new Voice \pedal >>
  >>
  \midi {
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
    \context {
      \PianoStaff
      \consists "Dynamic_performer"
    }
  }
}
