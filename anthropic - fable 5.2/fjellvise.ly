\version "2.24.0"

% Fjellvise (Mountain Air)
% An original lyric piece for solo piano in the style of Edvard Grieg.
%
% Form:  A  (E minor)  song over a chromatically falling bass
%        B  (E major)  springar: drone fifths, Lydian A-sharp, octave echo
%        A' (E minor)  reprise with flowing left hand and an octave climax
%        Coda          plagal close, dying away

\header {
  title = "Fjellvise"
  subtitle = "Mountain Air"
  subsubtitle = "Lyric piece in the style of Edvard Grieg"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 14\mm
  right-margin = 14\mm
  ragged-last-bottom = ##f
}

%% ------------------------------------------------------------------
%% Right-hand material
%% ------------------------------------------------------------------

% Bars 1-8 (and 53-60). Entered after a slurred upbeat b'4; ends before
% the next upbeat. Opens with the falling "Grieg motif" (8-7-5).
themePhraseOne = {
  e''4. d''8 b'4) |
  g'2( a'8 b') |
  d''4.(\< b'8 g'4) |
  e'2( fis'8 g') |
  \acciaccatura d''8 c''4.(\mf\> b'8 g'4) |
  a'4( fis'2) |
  g'4.( fis'8 e'4)\! |
  fis'2
}

% Bars 9-16: the answer, rising to a Lydian-tinged climax over C.
themePhraseTwo = {
  e''4. d''8 b'4) |
  g'2( a'8 b') |
  d''4.( b'8 g'4) |
  e'2(\< g'8 b') |
  <g' c'' e''>2(\f fis''8 g'') |
  fis''4.(\> e''8 c''4) |
  b'4.(^\markup { \italic "poco rit." } g'8 fis'4) |
  e'2.\p |
}

% Bars 61-68: the answer again, in octaves.
themeOctaves = {
  <e'' e'''>4. <d'' d'''>8 <b' b''>4) |
  <g' g''>2( <a' a''>8 <b' b''>) |
  <d'' d'''>4.(\< <b' b''>8 <g' g''>4) |
  <e' e''>2( <g' g''>8 <b' b''>) |
  <e'' g'' c''' e'''>2(\ff <fis'' fis'''>8 <g'' g'''>) |
  <fis'' fis'''>4.(\> <e'' e'''>8 <c'' c'''>4) |
  <b' b''>4.( <g' g''>8 <fis' fis''>4) |
  <e' e''>2
}

% The springar tune (8 bars), with the raised fourth (A-sharp).
springarTune = {
  b'8-. e''-. \acciaccatura fis''8 gis''4-> fis''8( e'') |
  dis''8-. e''-. fis''4-> b'4 |
  ais'8-. b'-. cis''4-> e''8( dis'') |
  \tuplet 3/2 { cis''8( b' ais') } b'2-> |
  b'8-. e''-. \acciaccatura fis''8 gis''4-> fis''8( e'') |
  dis''8-. e''-. fis''4-> b''4 |
  \tuplet 3/2 { gis''8( fis'' e'') } dis''4-> fis''4 |
  e''2.-> |
}

% The same tune fortissimo in octaves.
springarOctaves = {
  <b' b''>8-. <e'' e'''>-. <gis'' gis'''>4-> <fis'' fis'''>8( <e'' e'''>) |
  <dis'' dis'''>8-. <e'' e'''>-. <fis'' fis'''>4-> <b' b''>4 |
  <ais' ais''>8-. <b' b''>-. <cis'' cis'''>4-> <e'' e'''>8( <dis'' dis'''>) |
  \tuplet 3/2 { <cis'' cis'''>8( <b' b''> <ais' ais''>) } <b' b''>2-> |
  <b' b''>8-. <e'' e'''>-. <gis'' gis'''>4-> <fis'' fis'''>8( <e'' e'''>) |
  <dis'' dis'''>8-. <e'' e'''>-. <fis'' fis'''>4-> <b'' b'''>4 |
  \tuplet 3/2 { <gis'' gis'''>8( <fis'' fis'''> <e'' e'''>) }
    <dis'' dis'''>4-> <fis'' fis'''>4 |
  <e'' e'''>2.-> |
}

upper = {
  \clef treble
  \key e \minor
  \time 3/4
  \tempo "Andante espressivo" 4 = 66
  \partial 4
  b'4\p( |

  %% ---- A: bars 1-16 ----
  \themePhraseOne b'4\mp( |
  \themePhraseTwo
  \bar "||"

  %% ---- B: bars 17-48, springar ----
  \key e \major
  \tempo "Allegretto, alla springar" 4 = 138
  <>\mf \springarTune

  % 25-32: echo an octave higher
  \ottava #1
  <>\pp^\markup { \italic "come un'eco" }
  \transpose c c' \springarTune
  \ottava #0

  % 33-40: the tune's head in C-sharp minor and F-sharp minor,
  % then gathering over a dominant drone
  gis'8-.\mp cis''-. e''4-> dis''8( cis'') |
  bis'8-. cis''-. dis''4-> gis'4 |
  cis''8-.\< fis''-. a''4-> gis''8( fis'') |
  eis''8-. fis''-. gis''4-> cis''4 |
  fis''8-.\mf b''-. dis'''4-> cis'''8( b'') |
  a''8-. b''-. cis'''4-> fis''4 |
  fis''8-.\< b''-. dis'''4-> cis'''8( b'') |
  a''4-> fis''-> dis''-> |

  % 41-48: full statement
  <>\ff \springarOctaves
  \bar "||"

  %% ---- Retransition: bars 49-52 ----
  \key e \minor
  \tempo "Poco meno mosso" 4 = 104
  b'8(\p e'' g''4) fis''8( e'') |
  dis''8( e'' fis''4) b'4 |
  b'8(\pp^\markup { \italic "rit." } e'' g''2) |
  fis''2\fermata
  \tempo "Tempo I" 4 = 66
  b'4\p( |

  %% ---- A': bars 53-68 ----
  \themePhraseOne b'4\mf( |
  \themeOctaves b'4\p( |

  %% ---- Coda: bars 69-76 ----
  e''4. d''8 b'4) |
  a'4(^\markup { \italic "poco rit." } fis'2) |
  e'2.\pp |
  \ottava #1
  e'''4.(\ppp^\markup { \italic "tranquillo" } d'''8 b''4 |
  a''2.) |
  \ottava #0
  <b' e'' g''>2.^\markup { \italic "morendo" } |
  <g' b' e''>2. |
  <e' g' b'>2.\fermata |
  \bar "|."
}

%% ------------------------------------------------------------------
%% Left hand
%% ------------------------------------------------------------------

lower = {
  \clef bass
  \key e \minor
  \time 3/4
  \partial 4
  r4 |

  %% ---- A: bars 1-8, chromatically falling bass E - D# - D - C# - C - B ----
  << { r4 <g b> <g b> } \\ { e2._\markup { \italic "con Ped." } } >> |
  << { r4 <g b> <g b> } \\ { dis2. } >> |
  << { r4 <g b> <g b> } \\ { d2. } >> |
  << { r4 <g b> <g b> } \\ { cis2. } >> |
  << { r4 <g c' e'> <g c' e'> } \\ { c2. } >> |
  << { r4 <fis a dis'> <fis a dis'> } \\ { b,2. } >> |
  << { r4 <e a c'> <e a c'> } \\ { a,2. } >> |
  << { r4 <fis b e'> <fis b dis'> } \\ { b,2. } >> |

  % bars 9-16, the same bass in octaves
  <e, e>4 <g b e'> <g b e'> |
  <dis, dis>4 <g b dis'> <g b dis'> |
  <d, d>4 <g b d'> <g b d'> |
  <cis, cis>4 <g b> <g b> |
  <c, c>4 <g c' e'> <g c' e'> |
  <a,, a,>4 <e a c'> <e a c'> |
  <b,, b,>4 <g b e'> <fis a dis'> |
  <e, e>4 <g b>2 |

  %% ---- B: bars 17-24, open-fifth drone ----
  \key e \major
  <e b>2-> <e b>4-. |
  <e b>2 <e b>4 |
  <e b>2 <e b>4 |
  <e b>2 <e b>4 |
  <e b>2 <e b>4 |
  <e b>2 <e b>4 |
  <e b>2 <e b>4 |
  <e b>2. |

  % 25-32: drone an octave higher under the echo
  \clef treble
  <e' b'>2 <e' b'>4 |
  <e' b'>2 <e' b'>4 |
  <e' b'>2 <e' b'>4 |
  <e' b'>2 <e' b'>4 |
  <e' b'>2 <e' b'>4 |
  <e' b'>2 <e' b'>4 |
  <e' b'>2 <e' b'>4 |
  <e' b'>2. |
  \clef bass

  % 33-40: the drone moves vi - ii - V
  <cis gis>2 <cis gis>4 |
  <cis gis>2 <cis gis>4 |
  <fis, cis>2 <fis, cis>4 |
  <fis, cis>2 <fis, cis>4 |
  <b, fis>2 <b, fis>4 |
  <b, fis>2 <b, fis>4 |
  <b, fis>2 <b, fis>4 |
  <b, fis a>4-> <b, fis a>-> <b, fis a>-> |

  % 41-48: stamping bass; F-sharp major over the E pedal in bar 43
  <e, b,>4-> <b e' gis'> <b e' gis'> |
  <e, b,>4 <b e' gis'> <b e' gis'> |
  <e, b,>4 <ais cis' fis'> <ais cis' fis'> |
  <e, b,>4 <b e' gis'> <b e' gis'> |
  <e, b,>4 <b e' gis'> <b e' gis'> |
  <e, b,>4 <b e' gis'> <b e' gis'> |
  <e, b,>4 <a dis' fis'> <a dis' fis'> |
  <e, b,>4 <b e' gis'>2 |

  %% ---- Retransition: bars 49-52 ----
  \key e \minor
  <e b>2. |
  <e b>2. |
  <c g e'>2. |
  <b, fis a>2\fermata r4 |

  %% ---- A': bars 53-60, the falling bass in flowing eighths ----
  e8 g b e' b g |
  dis8 g b dis' b g |
  d8 g b d' b g |
  cis8 g b cis' b g |
  c8 g c' e' c' g |
  b,8 fis a dis' a fis |
  a,8 e a c' a e |
  b,8 fis b e' dis' b |

  % 61-68: wider arpeggios; deceptive cadence onto C in bar 68
  e,8 b, e g b g |
  dis,8 b, dis g b g |
  d,8 b, d g b g |
  cis,8 b, e g b g |
  c,8 g, e g c' e' |
  a,,8 e, c e a c' |
  b,,8 b, e g <fis a dis'>4 |
  c,8 g, e g c'4 |

  %% ---- Coda: bars 69-76 ----
  b,,8 b, e g b g |
  b,,8 b, fis a dis' a |
  e,8 b, e g b g |
  e,8 b, e g b g |
  e,8 c e a c' a |
  e,8 b, e g b4 |
  <e, b,>2. |
  <e,, e,>2.\fermata |
}

%% ------------------------------------------------------------------

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
