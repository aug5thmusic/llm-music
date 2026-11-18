\version "2.24.0"

% Mazurka in A minor, in the style of Chopin.
% Form:  A (repeated) - B - A  |  Trio in A major  |  A - Coda

\header {
  title = "Mazurka"
  subtitle = "A minor"
  composer = "in the style of F. Chopin"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  indent = 0\mm
}

global = {
  \key a \minor
  \time 3/4
}

% ---------------------------------------------------------------
% A: the main theme (seven bars; the eighth differs at each return)
% ---------------------------------------------------------------

themeRH = {
  a''8.( gis''16 a''4) c'''4->( |
  b''8. a''16 f''4 d''4) |
  e''8.( fis''16 gis''4 b''4->) |
  \acciaccatura b''8 a''2 e''4 |
  % the answer, ornamented, turning to the Neapolitan
  \tuplet 3/2 { a''8( b'' a'' } gis''8 a''8) c'''4->( |
  d'''8. c'''16 bes''4-> f''4) |
  e''8.( gis''16 d'''4-> b''4) |
}

themeLH = {
  a,4\sustainOn <e a c'>4 <e a c'>4\sustainOff |
  d4\sustainOn <f a d'>4 <f a d'>4\sustainOff |
  e,4\sustainOn <e gis d'>4 <e gis d'>4\sustainOff |
  a,4\sustainOn <e a c'>4\sustainOff r4 |
  a,4\sustainOn <e a c'>4 <e a c'>4\sustainOff |
  d4\sustainOn <f bes d'>4 <f bes d'>4\sustainOff |
  e,4\sustainOn <e gis d'>4 <e gis d'>4\sustainOff |
}

% ---------------------------------------------------------------
% B: relative major, rising sequence, augmented sixth back to V
% ---------------------------------------------------------------

middleRH = {
  e''8.(\f g''16 c'''4) e'''4-> |
  d'''8.( b''16 g''4 f''4) |
  e''8.( g''16 c'''4) e'''4-> |
  e'''8.( cis'''16 a''4 g''4) |
  f''8.(\< a''16 d'''4) f'''4->\! |
  e'''8.(\> dis'''16 b''4 a''4)\! |
  \tuplet 3/2 { c'''8(\p^\markup { \italic "poco rit." } d''' c''' } b''4 a''4) |
  gis''2 e''4 |
}

middleLH = {
  c4\sustainOn <e g c'>4 <e g c'>4\sustainOff |
  g,4\sustainOn <f g b>4 <f g b>4\sustainOff |
  c4\sustainOn <e g c'>4 <e g c'>4\sustainOff |
  cis4\sustainOn <e g a>4 <e g a>4\sustainOff |
  d4\sustainOn <f a d'>4 <f a d'>4\sustainOff |
  f4\sustainOn <a b dis'>4 <a b dis'>4\sustainOff |
  e4\sustainOn <a c' e'>4 <a c' e'>4\sustainOff |
  e,4\sustainOn <e gis d'>4\sustainOff r4 |
}

% ---------------------------------------------------------------
% Trio: A major over a bagpipe drone, with the Lydian fourth (D sharp)
% ---------------------------------------------------------------

trioRH = {
  \tuplet 3/2 { cis'''8(\p_\markup { \italic "dolce" } dis''' e''' } e'''4->) cis'''4 |
  \tuplet 3/2 { b''8( cis''' dis''' } dis'''4->) b''4 |
  \tuplet 3/2 { cis'''8( dis''' e''' } fis'''4-> e'''4) |
  \acciaccatura e'''8 cis'''4 a''2 |
  \tuplet 3/2 { cis'''8( dis''' e''' } e'''4->) cis'''4 |
  \tuplet 3/2 { b''8( cis''' dis''' } dis'''4->) b''4 |
  d'''8.( cis'''16 b''4-> gis''4) |
  a''2. |
}

trioLH = {
  <a, e>2\sustainOn <a, e>4 |
  <a, e>2 <a, e>4 |
  <a, e>2 <a, e>4 |
  <a, e>2 <a, e>4\sustainOff |
  <a, e>2\sustainOn <a, e>4 |
  <a, e>2 <a, e>4\sustainOff |
  e,4\sustainOn <e gis d'>4 <e gis d'>4\sustainOff |
  a,4\sustainOn <e a cis'>4\sustainOff r4 |
}

trioEndRH = {
  cis'''8.(\mf b''16 a''4->) fis''4 |
  gis''8.( a''16 b''4->) gis''4 |
  a''8.(\< b''16 cis'''4) fis'''4->\! |
  e'''4(\>^\markup { \italic "poco rit." } d'''4 b''4)\! |
  \tuplet 3/2 { cis'''8(\p^\markup { \italic "a tempo" } dis''' e''' } e'''4->) cis'''4 |
  \tuplet 3/2 { b''8( cis''' dis''' } dis'''4->) b''4 |
  d'''8.( cis'''16 b''4-> gis''4) |
  a''2 e''4\pp |
}

trioEndLH = {
  fis,4\sustainOn <fis a cis'>4 <fis a cis'>4\sustainOff |
  cis4\sustainOn <eis gis b>4 <eis gis b>4\sustainOff |
  fis,4\sustainOn <fis a cis'>4 <fis a cis'>4\sustainOff |
  e,4\sustainOn <e gis d'>4 <e gis d'>4\sustainOff |
  <a, e>2\sustainOn <a, e>4 |
  <a, e>2 <a, e>4\sustainOff |
  e,4\sustainOn <e gis d'>4 <e gis d'>4\sustainOff |
  a,4\sustainOn <e a cis'>4\sustainOff r4 |
}

% ---------------------------------------------------------------
% Coda: the theme dissolving over a tonic pedal
% ---------------------------------------------------------------

codaRH = {
  a''2 e''4 |
  a''8.( gis''16 a''4) c'''4->( |
  b''8. a''16 f''4 d''4) |
  e''8.(_\markup { \italic "smorzando" } dis''16 e''4 c''4) |
  b'2(^\markup { \italic "rit." } gis'4) |
  a'2.\ppp\fermata |
}

codaLH = {
  a,4\sustainOn <e a c'>4\sustainOff r4 |
  a,4\sustainOn <e a c'>4 <e a c'>4\sustainOff |
  a,4\sustainOn <f a d'>4 <f a d'>4\sustainOff |
  a,4\sustainOn <e a c'>4 <e a c'>4\sustainOff |
  e,4\sustainOn <e gis d'>2\sustainOff |
  <a, e a c'>2.\arpeggio\fermata\sustainOn |
}

% ---------------------------------------------------------------
% Assembly
% ---------------------------------------------------------------

upper = {
  \global
  \clef treble
  \tempo "Lento, ma non troppo" 4 = 126
  \partial 4 e''4\p |
  \repeat volta 2 { \themeRH }
  \alternative {
    { a''2 e''4 | }
    { a''2 g''4 | }
  }
  \middleRH
  \tempo "a tempo"
  \themeRH
  a''2 r4 |
  \key a \major
  \set Score.tempoHideNote = ##t
  \tempo "Poco più mosso" 4 = 138 \pageBreak
  \repeat volta 2 { \trioRH }
  \trioEndRH
  \bar "||"
  \key a \minor
  \tempo "Tempo I" 4 = 126
  << \themeRH { s4_\markup { \italic "sotto voce" } } >>
  \codaRH
  \bar "|."
}

lower = {
  \global
  \clef bass
  \partial 4 r4 |
  \repeat volta 2 { \themeLH }
  \alternative {
    { a,4\sustainOn <e a c'>4\sustainOff r4 | }
    { a,4\sustainOn <e a c'>4\sustainOff <f g b>4 | }
  }
  \middleLH
  \themeLH
  a,4\sustainOn <e a c'>4\sustainOff r4 |
  \key a \major
  \repeat volta 2 { \trioLH }
  \trioEndLH
  \bar "||"
  \key a \minor
  \themeLH
  \codaLH
  \bar "|."
}

music = \new PianoStaff <<
  \new Staff = "upper" \upper
  \new Staff = "lower" \lower
>>

% Engraved score
\score {
  \music
  \layout { }
}

% MIDI, with the repeats played out
\score {
  \unfoldRepeats \music
  \midi { }
}
