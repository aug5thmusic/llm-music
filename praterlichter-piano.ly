\version "2.26.0"
\language "nederlands"

% Praterlichter
% A waltz chain for piano. Original music in the manner of Johann Strauss II.
% No theme, harmony plan or title is taken from him.
%
% FORM
% Introduction  Andantino, D major, 21 bars. The head of the first waltz
%               (a long note, its chromatic lower neighbour, a leap up the
%               chord) is heard first in the middle voice. A swing to B flat
%               and a diminished seventh, then a crescendo over a tremolo
%               on A to an A7 fermata and a falling cadenza.
% Walzer Nr. 1  D major. Two-bar vamp.
%               A  dolce: the neighbour-note figure climbing to E6, a
%                  turn to the subdominant through D7, then the minor-iv
%                  colour of E half-diminished 7 before the cadence.
%               B  energico: quarter + accented half, every leap a sixth,
%                  starting on B minor; hemiola cadence in bars 13-14.
% Walzer Nr. 2  G major.
%               A  grazioso: long tied notes answered by eighth-note turns;
%                  A7 as V of V before the close.
%               B  scherzando: staccato runs and grace notes, a sudden
%                  minor iv (C minor 6) under a high E flat.
% Walzer Nr. 3  B flat major (the flat submediant of the home key).
%               Two-bar vamp on F7.
%               A  con slancio: dotted rise, then a sixth up to a full chord;
%                  the bass climbs B flat, D, E flat, E, F.
%               B  leggiero: running eighths circling the chord tones.
% Coda          The waltz-1 head in B flat and G minor, an augmented second
%               onto A7, Walzer Nr. 1 A in octaves (f), a quiet Meno mosso
%               memory of Walzer Nr. 2 that stops on A7, then Piu mosso:
%               Walzer Nr. 1 B enters deceptively on B minor, hemiola,
%               drum-roll tremolo, and the closing chords.
%
% NOTATION
% Absolute pitches, nederlands note names. No double angle brackets:
% simultaneous music is written with \simultaneous { ... }.
% Expression words that share a dynamic (p dolce, f energico, ...) are
% tagged 'print; plain dynamics for the MIDI are tagged 'midi.
% The MIDI score unfolds the repeats, adds a sustain-pedal voice (change on
% every downbeat) to the left hand, and carries the accelerando, the
% fermatas and the ritardandos as hidden tempo changes.
%
% PERFORMANCE
% Pedal on each downbeat. The second beat may come a hair early in the
% Viennese way, but only in the A strains. Keep the left-hand chords light.
%
% BUILD (from this directory)
% lilypond -o output/pdf/praterlichter praterlichter.ly

\header {
  title = "Praterlichter"
  subtitle = "Walzer"
  subsubtitle = "For piano"
  composer = "Original composition"
  poet = "In the style of Johann Strauss II"
  tagline = ##f
}

#(set-global-staff-size 19)

\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 16\mm
  right-margin = 16\mm
  indent = 0\mm
  markup-system-spacing.basic-distance = #12
  system-system-spacing.basic-distance = #13
  system-system-spacing.minimum-distance = #10
  ragged-last-bottom = ##f
}

% ---------------------------------------------------------------------------
% Dynamics with expression words (print only)

pDolce = -\tweak self-alignment-X #LEFT #(make-dynamic-script #{ \markup { \dynamic p \normal-text \italic "dolce" } #})
pGrazioso = -\tweak self-alignment-X #LEFT #(make-dynamic-script #{ \markup { \dynamic p \normal-text \italic "grazioso" } #})
pScherzando = -\tweak self-alignment-X #LEFT #(make-dynamic-script #{ \markup { \dynamic p \normal-text \italic "scherzando" } #})
pLeggiero = -\tweak self-alignment-X #LEFT #(make-dynamic-script #{ \markup { \dynamic p \normal-text \italic "leggiero" } #})
fEnergico = -\tweak self-alignment-X #LEFT #(make-dynamic-script #{ \markup { \dynamic f \normal-text \italic "energico" } #})
ffSlancio = -\tweak self-alignment-X #LEFT #(make-dynamic-script #{ \markup { \dynamic ff \normal-text \italic "con slancio" } #})
pDim = -\tweak self-alignment-X #LEFT #(make-dynamic-script #{ \markup { \dynamic p \normal-text \italic "dim." } #})
dolce = -\tweak self-alignment-X #LEFT #(make-dynamic-script #{ \markup { \normal-text \italic "dolce" } #})
grazioso = -\tweak self-alignment-X #LEFT #(make-dynamic-script #{ \markup { \normal-text \italic "grazioso" } #})

% ---------------------------------------------------------------------------
% Right hand

upper = {
  \clef treble
  \key d \major
  \time 3/4
  \sectionLabel "Introduction"
  \tempo "Andantino" 4 = 76

  % ---- Introduction ----
  a'2( gis'4 |                                          % i1   D
  a'4 d'' fis'') |                                      % i2
  g''2( fis''4 |                                        % i3   A7
  e''4 cis'' a') |                                      % i4
  b'2( ais'4 |                                          % i5   Bm
  b'4 d'' g'') |                                        % i6   G
  g''4( fis'' e'' |                                     % i7   Em7
  e''2 cis''4) |                                        % i8   A7
  d''2( cis''4 |                                        % i9   Bb
  d''4 f'' bes'') |                                     % i10
  bes''2( a''4 |                                        % i11  Gm
  bes''4 g'' e'') |                                     % i12  C#dim7
  fis''2( a''4 |                                        % i13  D/A
  g''4 e'' cis'') |                                     % i14  A7
  \tag #'midi \tempo 4 = 84
  <d'' fis''>2(^\markup \italic "poco a poco accel." <cis'' eis''>4 |  % i15 pedal A
  \tag #'midi \tempo 4 = 94
  <d'' fis''>4 <fis'' a''> <a'' d'''>) |                % i16
  \tag #'midi \tempo 4 = 104
  <e'' g'' bes''>2( <e'' g'' a''>4 |                    % i17  A7b9 - A7
  \tag #'midi \tempo 4 = 112
  <cis'' e'' g''>4 <e'' g'' cis'''> <g'' cis''' e'''>) |  % i18
  \tag #'midi \tempo 4 = 40
  <a'' cis''' e''' g'''>2.\fermata |                    % i19
  \tag #'midi \tempo 4 = 72
  g'''8(^\markup \italic "rit." e''' cis''' a'' g'' e'' |  % i20
  \tag #'midi \tempo 4 = 56
  cis''8 a' g' e'
  \tag #'midi \tempo 4 = 30
  cis'4)\fermata |                                      % i21

  % ---- Walzer Nr. 1 ----
  \break
  \section
  \sectionLabel "Walzer Nr. 1"
  \tempo "Tempo di Valse" 2. = 63
  R2. |                                                 % v1
  r2 a'4 |                                              % v2
  \repeat volta 2 {
    fis''2( eis''4 |                                    % 1A-1  D
    fis''4 a'' d''') |                                  % 2
    d'''2( cis'''4 |                                    % 3     A7
    b''4 a'' g'') |                                     % 4
    e''2( dis''4 |                                      % 5     Em
    e''4 g'' cis''') |                                  % 6     A7
    e'''2( d'''4 |                                      % 7     D
    a''4) r a'4 |                                       % 8
    fis''2( eis''4 |                                    % 9     D
    fis''4 a'' c''') |                                  % 10    D7
    c'''2( b''4 |                                       % 11    G
    bes''4 g'' e'') |                                   % 12    E half-dim7
    a''2( fis''4 |                                      % 13    D/A
    e''4 g'' cis'' |                                    % 14    A7
    d''2.) |                                            % 15    D
    \alternative {
      { r2 a'4 | }
      { r4 r8 a'( b' cis'') | }
    }
  }
  \repeat volta 2 {
    <d' d''>4 <b' d'' fis'' b''>2-> |                   % 1B-1  Bm
    <ais' ais''>4( <b' b''> <fis' fis''>) |             % 2
    <g' g''>4 <e'' g'' b'' e'''>2-> |                   % 3     Em
    <dis'' dis'''>4( <e'' e'''> <b' b''>) |             % 4
    <e' e''>4 <cis'' e'' g'' cis'''>2-> |               % 5     A7
    <bis' bis''>4( <cis'' cis'''> <g' g''>) |           % 6
    <fis' fis''>4 <d'' fis'' a'' d'''>2-> |             % 7     D
    <cis'' cis'''>4( <d'' d'''> <a' a''>) |             % 8
    <d' d''>4 <b' d'' fis'' b''>2-> |                   % 9     Bm
    <ais' ais''>4( <b' b''> <fis' fis''>) |             % 10
    <g' g''>4 <e'' g'' b'' e'''>2-> |                   % 11    Em
    <dis'' dis'''>4( <e'' e'''> <d'' d'''>) |           % 12    E7
    <d'' fis'' a'' d'''>2-> <e'' g'' cis''' e'''>4~ |   % 13    hemiola: D/A
    <e'' g'' cis''' e'''>4 <cis'' e'' g'' cis'''>2-> |  % 14    A7
    <d'' fis'' a'' d'''>2. |                            % 15    D
    \alternative {
      { r4 r8 a'( b' cis'') | }
      { r2 d''4 | }
    }
  }

  % ---- Walzer Nr. 2 ----
  \break
  \section
  \key g \major
  \sectionLabel "Walzer Nr. 2"
  \repeat volta 2 {
    <d'' b''>2.~ |                                      % 2A-1  G
    <d'' b''>4 a''8( g'' fis'' g'') |                   % 2
    <e'' c'''>2.~ |                                     % 3     Am
    <e'' c'''>4 b''8( a'' gis'' a'') |                  % 4
    <fis'' d'''>2.~ |                                   % 5     D7
    <fis'' d'''>4 c'''8( a'' fis'' a'') |               % 6
    b''2( g''4 |                                        % 7     G
    d''2) d''4 |                                        % 8
    <d'' b''>2.~ |                                      % 9     G
    <d'' b''>4 a''8( g'' f'' g'') |                     % 10    G7
    <g'' e'''>2.~ |                                     % 11    C
    <g'' e'''>4 d'''8( cis''' b'' cis''') |             % 12    A7
    d'''2( b''4 |                                       % 13    G/D
    a''4 c''' fis'' |                                   % 14    D7
    g''2.) |                                            % 15    G
    \alternative {
      { r2 d''4 | }
      { R2. | }
    }
  }
  \repeat volta 2 {
    r8 a''-.( b''-. c'''-. d'''4-.) |                   % 2B-1  D7
    \acciaccatura b''8 c'''4-. a''-. fis''-. |          % 2
    r8 b''-.( c'''-. cis'''-. d'''4-.) |                % 3     G
    b''4-. g''-. d''-. |                                % 4
    r8 gis''-.( a''-. ais''-. b''4-.) |                 % 5     E7
    \acciaccatura d'''8 c'''4-. a''-. e''-. |           % 6     Am
    r8 fis''-.( a''-. c'''-. e'''4-.) |                 % 7     D7
    d'''4-. b''-. g''-. |                               % 8     G
    r8 a''-.( b''-. c'''-. d'''4-.) |                   % 9     D7
    \acciaccatura b''8 c'''4-. a''-. fis''-. |          % 10
    r8 b''-.( c'''-. cis'''-. d'''4-.) |                % 11    G
    b''4-. g''-. f''-. |                                % 12    G7
    r8 e''-.( g''-. c'''-. e'''4->) |                   % 13    C
    es'''4-> c'''-. a''-. |                             % 14    Cm6
    g''4-. b''-. a''-. |                                % 15    G/D  D7
    g''4-. r r |                                        % 16    G
  }

  % ---- Walzer Nr. 3 ----
  \break
  \section
  \key bes \major
  \sectionLabel "Walzer Nr. 3"
  R2. |                                                 % v1    F7
  r2 f'4 |                                              % v2
  \repeat volta 2 {
    <d' bes'>4.( <es' c''>8 <f' d''>4 |                 % 3A-1  Bb
    <bes' d'' f'' bes''>2.) |                           % 2
    <es' c''>4.( <f' d''>8 <g' es''>4 |                 % 3     Cm7
    <c'' es'' a'' c'''>2.) |                            % 4     F7
    <es'' es'''>4.( <d'' d'''>8 <c'' c'''>4 |           % 5
    <a' a''>2 <c'' c'''>4) |                            % 6
    <d'' f'' bes'' d'''>2. |                            % 7     Bb
    <d'' d'''>4 r f'4 |                                 % 8
    <d' bes'>4.( <es' c''>8 <f' d''>4 |                 % 9     Bb
    <as' d'' f'' as''>2.) |                             % 10    Bb7/D
    <bes' g''>4.( <c'' as''>8 <es'' bes''>4 |           % 11    Eb
    <c'' e'' g'' c'''>2 <bes' bes''>4) |                % 12    C7/E
    <d'' f'' bes'' d'''>2( <bes' bes''>4 |              % 13    Bb/F
    <c'' c'''>4 <es'' es'''> <a' a''> |                 % 14    F7
    <bes' d'' f'' bes''>2.) |                           % 15    Bb
    \alternative {
      { r2 f'4 | }
      { R2. | }
    }
  }
  \repeat volta 2 {
    f''8( g'' f'' e'' f'' bes'') |                      % 3B-1  Bb
    d'''8( c''' bes'' a'' bes'' f'') |                  % 2
    es''8( f'' es'' d'' es'' a'') |                     % 3     F7
    c'''8( bes'' a'' g'' a'' es'') |                    % 4
    f''8( g'' f'' e'' f'' c''') |                       % 5
    es'''8( d''' c''' bes'' a'' g'') |                  % 6
    f''8( bes'' d''' f''' d''' bes'') |                 % 7     Bb
    f''4-. r r |                                        % 8
    f''8( g'' f'' e'' f'' bes'') |                      % 9     Bb
    as''8( g'' f'' es'' d'' f'') |                      % 10    Bb7/D
    g''8( as'' g'' fis'' g'' es''') |                   % 11    Eb
    des'''8( c''' bes'' g'' e'' g'') |                  % 12    Edim7
    f''8( d''' c''' bes'' a'' bes'') |                  % 13    Bb/F
    c'''8( a'' f'' es'' c'' a') |                       % 14    F7
    bes'4-. d''-. f''-. |                               % 15    Bb
    bes''4-. r r |                                      % 16
  }

  % ---- Coda ----
  \break
  \section
  \sectionLabel "Coda"
  d''2( cis''4 |                                        % c1    Bb
  d''4 f'' bes'') |                                     % c2
  d''2( cis''4 |                                        % c3    Gm/Bb
  d''4 g'' bes'') |                                     % c4    Gm6/Bb
  \key d \major
  cis'''2( bis''4 |                                     % c5    A7
  cis'''4 g'' e'') |                                    % c6
  a'8( cis'' e'' g'' a'' cis''' |                       % c7
  e'''4) r <a a'>4 |                                    % c8
  <fis' fis''>2( <eis' eis''>4 |                        % c9    D   (Walzer 1 A)
  <fis' fis''>4 <a' a''> <d'' d'''>) |                  % c10
  <d'' a'' d'''>2( <cis'' g'' cis'''>4 |                % c11   A7
  <b' b''>4 <a' a''> <g' g''>) |                        % c12
  <e' e''>2( <dis' dis''>4 |                            % c13   Em
  <e' e''>4 <g' g''> <cis'' cis'''>) |                  % c14   A7
  <e'' a'' e'''>2( <d'' a'' d'''>4 |                    % c15   D
  <a' a''>4) r a'4 |                                    % c16
  <fis' fis''>2( <eis' eis''>4 |                        % c17   D
  <fis' fis''>4 <a' a''> <c'' c'''>) |                  % c18   D7/F#
  <c'' g'' c'''>2( <b' g'' b''>4 |                      % c19   G
  <bes' bes''>4 <g' g''> <e' e''>) |                    % c20   E half-dim7
  <a' d'' a''>2( <fis' d'' fis''>4 |                    % c21   D/A
  <e' e''>4 <g' g''> <cis' cis''> |                     % c22   A7
  <fis' a' d''>2.) |                                    % c23   D
  r2 d''4 |                                             % c24   D7
  \break
  \section
  \key g \major
  \tempo "Meno mosso" 2. = 54
  <d'' b''>2.~ |                                        % c25   G   (Walzer 2 A)
  <d'' b''>4 a''8( g'' fis'' g'') |                     % c26
  <e'' c'''>2.~ |                                       % c27   Am
  <e'' c'''>4 b''8( a'' gis'' a'') |                    % c28
  <gis'' d'''>2.~ |                                     % c29   E7
  <gis'' d'''>4 c'''8( b'' a'' gis'') |                 % c30
  \tag #'midi \tempo 2. = 46
  <e'' g''>2.~^\markup \italic "rit." |                 % c31   A7
  \tag #'midi \tempo 2. = 34
  <e'' g''>2 r4\fermata |                               % c32
  \break
  \section
  \key d \major
  \tempo "Più mosso" 2. = 72
  <d' d''>4 <b' d'' fis'' b''>2-> |                     % c33   Bm  (Walzer 1 B)
  <ais' ais''>4( <b' b''> <fis' fis''>) |               % c34
  <g' g''>4 <e'' g'' b'' e'''>2-> |                     % c35   Em
  <dis'' dis'''>4( <e'' e'''> <b' b''>) |               % c36
  <e' e''>4 <cis'' e'' g'' cis'''>2-> |                 % c37   A7
  <bis' bis''>4( <cis'' cis'''> <g' g''>) |             % c38
  <fis' fis''>4 <d'' fis'' a'' d'''>2-> |               % c39   D
  <cis'' cis'''>4( <d'' d'''> <a' a''>) |               % c40
  <d' d''>4 <b' d'' fis'' b''>2-> |                     % c41   Bm
  <ais' ais''>4( <b' b''> <fis' fis''>) |               % c42
  <g' g''>4 <e'' g'' b'' e'''>2-> |                     % c43   Em
  <dis'' dis'''>4( <e'' e'''> <d'' d'''>) |             % c44   E7
  <d'' fis'' a'' d'''>2-> <e'' g'' cis''' e'''>4~ |     % c45   hemiola
  <e'' g'' cis''' e'''>4 <cis'' e'' g'' cis'''>2-> |    % c46
  <d'' fis'' a'' d'''>4-> <a' d'' fis'' a''>-. <fis' a' d'' fis''>-. |  % c47 D
  <d' fis' a' d''>4-. r r |                             % c48
  \repeat tremolo 6 { <fis'' a''>16 d'''16 } |          % c49   D
  \repeat tremolo 6 { <g'' a''>16 cis'''16 } |          % c50   A7
  \tag #'midi \tempo 2. = 64
  <d'' fis'' a'' d'''>4-> r r |                         % c51   D
  <e'' g'' a'' cis'''>4-> r r |                         % c52   A7
  <d'' fis'' a'' d'''>4-> r r |                         % c53   D
  <d' fis' a' d''>4-> r r |                             % c54
  \bar "|."
}

% ---------------------------------------------------------------------------
% Left hand

lower = {
  \clef bass
  \key d \major
  \time 3/4

  % ---- Introduction ----
  d,8( a, d fis a fis) |                                % i1
  d,8( a, d fis a fis) |                                % i2
  a,,8( e, a, cis g e) |                                % i3
  a,,8( e, a, cis g e) |                                % i4
  b,,8( fis, b, d fis d) |                              % i5
  g,,8( d, g, b, d b,) |                                % i6
  e,8( b, d g b g) |                                    % i7
  a,,8( e, a, cis g e) |                                % i8
  bes,,8( f, bes, d f d) |                              % i9
  bes,,8( f, bes, d f d) |                              % i10
  g,,8( d, g, bes, d bes,) |                            % i11
  cis,8( e, g, bes, e bes,) |                           % i12
  a,,8( fis, a, d fis d) |                              % i13
  a,,8( e, a, cis g e) |                                % i14
  \repeat tremolo 12 { a,,32 a,32 } |                   % i15
  \repeat tremolo 12 { a,,32 a,32 } |                   % i16
  \repeat tremolo 12 { a,,32 a,32 } |                   % i17
  \repeat tremolo 12 { a,,32 a,32 } |                   % i18
  <a,, a,>2.\fermata |                                  % i19
  R2. |                                                 % i20
  r2 a,,4\fermata |                                     % i21

  % ---- Walzer Nr. 1 ----
  d,4 <fis a d'>-. q-. |                                % v1
  a,,4 <fis a d'>-. q-. |                               % v2
  \repeat volta 2 {
    d,4 <fis a d'> q |                                  % 1A-1
    a,,4 <fis a d'> q |                                 % 2
    a,,4 <g a cis'> q |                                 % 3
    cis,4 <g a cis'> q |                                % 4
    e,4 <g b e'> q |                                    % 5
    a,4 <g a cis'> q |                                  % 6
    d,4 <fis a d'> q |                                  % 7
    a,,4 <fis a d'> q |                                 % 8
    d,4 <fis a d'> q |                                  % 9
    fis,4 <a c' d'> q |                                 % 10
    g,4 <g b d'> q |                                    % 11
    e,4 <g bes d'> q |                                  % 12
    a,,4 <fis a d'> q |                                 % 13
    a,,4 <g a cis'> q |                                 % 14
    d,4 <fis a d'> q |                                  % 15
    \alternative {
      { a,,4 <fis a d'> q | }
      { a,,4 <fis a d'> q | }
    }
  }
  \repeat volta 2 {
    <b,, b,>4 <fis b d'> q |                            % 1B-1
    <fis,, fis,>4 <fis b d'> q |                        % 2
    <e, e>4 <g b e'> q |                                % 3
    <b,, b,>4 <g b e'> q |                              % 4
    <a,, a,>4 <g a cis'> q |                            % 5
    <e, e>4 <g a cis'> q |                              % 6
    <d, d>4 <fis a d'> q |                              % 7
    <a,, a,>4 <fis a d'> q |                            % 8
    <b,, b,>4 <fis b d'> q |                            % 9
    <fis,, fis,>4 <fis b d'> q |                        % 10
    <e, e>4 <g b e'> q |                                % 11
    <e, e>4 <gis b d'> q |                              % 12
    <a,, a,>2-> q4~ |                                   % 13
    q4 q2-> |                                           % 14
    <d, d>4 <fis a d'> q |                              % 15
    \alternative {
      { <a,, a,>4 <fis a d'> q | }
      { <a,, a,>4 <fis a c'> q | }
    }
  }

  % ---- Walzer Nr. 2 ----
  \key g \major
  \repeat volta 2 {
    g,4 <g b d'> q |                                    % 2A-1
    d,4 <g b d'> q |                                    % 2
    a,4 <a c' e'> q |                                   % 3
    e,4 <a c' e'> q |                                   % 4
    d,4 <fis c' d'> q |                                 % 5
    a,4 <fis c' d'> q |                                 % 6
    g,4 <g b d'> q |                                    % 7
    d,4 <g b d'> q |                                    % 8
    g,4 <g b d'> q |                                    % 9
    d,4 <f b d'> q |                                    % 10
    c,4 <g c' e'> q |                                   % 11
    a,4 <g cis' e'> q |                                 % 12
    d,4 <g b d'> q |                                    % 13
    d,4 <fis a c'> q |                                  % 14
    g,4 <g b d'> q |                                    % 15
    \alternative {
      { d,4 <g b d'> q | }
      { d,4 <g b d'> q | }
    }
  }
  \repeat volta 2 {
    d,4 <fis a c'>-. q-. |                              % 2B-1
    a,4 <fis a c'>-. q-. |                              % 2
    g,4 <g b d'>-. q-. |                                % 3
    d,4 <g b d'>-. q-. |                                % 4
    e,4 <gis b d'>-. q-. |                              % 5
    a,4 <a c' e'>-. q-. |                               % 6
    d,4 <fis a c'>-. q-. |                              % 7
    g,4 <g b d'>-. q-. |                                % 8
    d,4 <fis a c'>-. q-. |                              % 9
    a,4 <fis a c'>-. q-. |                              % 10
    g,4 <g b d'>-. q-. |                                % 11
    g,4 <f b d'>-. q-. |                                % 12
    c,4 <e g c'>-. q-. |                                % 13
    c,4 <es a c'>-. q-. |                               % 14
    d,4 <g b d'>-. <fis a c'>-. |                       % 15
    g,4 <g b d'>-. q-. |                                % 16
  }

  % ---- Walzer Nr. 3 ----
  \key bes \major
  f,4 <es a c'> q |                                     % v1
  c,4 <es a c'> q |                                     % v2
  \repeat volta 2 {
    <bes,, bes,>4 <d f bes> q |                         % 3A-1
    <f,, f,>4 <f bes d'> q |                            % 2
    <c, c>4 <es g bes> q |                              % 3
    <f,, f,>4 <es a c'> q |                             % 4
    <c, c>4 <es a c'> q |                               % 5
    <f,, f,>4 <es a c'> q |                             % 6
    <bes,, bes,>4 <f bes d'> q |                        % 7
    <f,, f,>4 <f bes d'> q |                            % 8
    <bes,, bes,>4 <d f bes> q |                         % 9
    <d, d>4 <f as bes> q |                              % 10
    <es, es>4 <g bes es'> q |                           % 11
    <e, e>4 <g bes c'> q |                              % 12
    <f,, f,>4 <f bes d'> q |                            % 13
    <f,, f,>4 <es a c'> q |                             % 14
    <bes,, bes,>4 <f bes d'> q |                        % 15
    \alternative {
      { <f,, f,>4 <f bes d'> q | }
      { <f,, f,>4 <f bes d'> q | }
    }
  }
  \repeat volta 2 {
    bes,4 <f bes d'>-. q-. |                            % 3B-1
    f,4 <f bes d'>-. q-. |                              % 2
    f,4 <es a c'>-. q-. |                               % 3
    c,4 <es a c'>-. q-. |                               % 4
    f,4 <es a c'>-. q-. |                               % 5
    c,4 <es a c'>-. q-. |                               % 6
    bes,4 <f bes d'>-. q-. |                            % 7
    f,4 <f bes d'>-. q-. |                              % 8
    bes,4 <f bes d'>-. q-. |                            % 9
    d,4 <f as bes>-. q-. |                              % 10
    es,4 <g bes es'>-. q-. |                            % 11
    e,4 <g bes des'>-. q-. |                            % 12
    f,4 <f bes d'>-. q-. |                              % 13
    f,4 <es a c'>-. q-. |                               % 14
    bes,4 <f bes d'>-. q-. |                            % 15
    f,4 <f bes d'>-. q-. |                              % 16
  }

  % ---- Coda ----
  bes,,4 <f bes d'> q |                                 % c1
  f,4 <f bes d'> q |                                    % c2
  bes,,4 <g bes d'> q |                                 % c3
  bes,,4 <g bes e'> q |                                 % c4
  \key d \major
  a,,4 <g a cis'> q |                                   % c5
  e,4 <g a cis'> q |                                    % c6
  a,,4 <g a cis'> q |                                   % c7
  <a,, a,>4 r r |                                       % c8
  <d, d>4 <fis a d'> q |                                % c9
  <a,, a,>4 <fis a d'> q |                              % c10
  <a,, a,>4 <g a cis'> q |                              % c11
  <cis, cis>4 <g a cis'> q |                            % c12
  <e, e>4 <g b> q |                                     % c13
  <a,, a,>4 <g a cis'> q |                              % c14
  <d, d>4 <fis a d'> q |                                % c15
  <a,, a,>4 <fis a d'> q |                              % c16
  <d, d>4 <fis a d'> q |                                % c17
  <fis,, fis,>4 <a c' d'> q |                           % c18
  <g,, g,>4 <g b d'> q |                                % c19
  <e, e>4 <g bes d'> q |                                % c20
  <a,, a,>4 <fis a d'> q |                              % c21
  <a,, a,>4 <e g a> q |                                 % c22
  <d, d>4 <fis a d'> q |                                % c23
  <a,, a,>4 <fis a c'> q |                              % c24
  \key g \major
  g,4 <g b d'> q |                                      % c25
  d,4 <g b d'> q |                                      % c26
  a,4 <a c' e'> q |                                     % c27
  e,4 <a c' e'> q |                                     % c28
  e,4 <gis b d'> q |                                    % c29
  b,,4 <gis b d'> q |                                   % c30
  a,,4 <g cis' e'> q |                                  % c31
  a,,4 <g cis' e'> r\fermata |                          % c32
  \key d \major
  <b,, b,>4 <fis b d'> q |                              % c33
  <fis,, fis,>4 <fis b d'> q |                          % c34
  <e, e>4 <g b e'> q |                                  % c35
  <b,, b,>4 <g b e'> q |                                % c36
  <a,, a,>4 <g a cis'> q |                              % c37
  <e, e>4 <g a cis'> q |                                % c38
  <d, d>4 <fis a d'> q |                                % c39
  <a,, a,>4 <fis a d'> q |                              % c40
  <b,, b,>4 <fis b d'> q |                              % c41
  <fis,, fis,>4 <fis b d'> q |                          % c42
  <e, e>4 <g b e'> q |                                  % c43
  <e, e>4 <gis b d'> q |                                % c44
  <a,, a,>2-> q4~ |                                     % c45
  q4 q2-> |                                             % c46
  <d, d>4 <fis a d'>-. q-. |                            % c47
  <d, d>4-. r r |                                       % c48
  \repeat tremolo 12 { d,32 d32 } |                     % c49
  \repeat tremolo 12 { a,,32 a,32 } |                   % c50
  <d, a, d>4-> r r |                                    % c51
  <a,, e, a,>4-> r r |                                  % c52
  <d, a, d>4-> r r |                                    % c53
  <d, d>4-> r r |                                       % c54
  \bar "|."
}

% ---------------------------------------------------------------------------
% Dynamics (between the staves; also merged into both hands for the MIDI)

dyn = {
  % Introduction
  s2.-\tag #'print \pDolce -\tag #'midi \p |            % i1
  s2. | s2. | s2. |                                     % i2-4
  s2.\< | s2.\> | s2. | s2.\! |                         % i5-8
  s2.\< | s2. | s2.\mf\> | s2. |                        % i9-12
  s2.\p | s2. |                                         % i13-14
  s2.\< | s2. | s2. | s2. |                             % i15-18
  s2.\ff |                                              % i19
  s2.-\tag #'print \pDim -\tag #'midi \p |              % i20
  s2\> s4\pp |                                          % i21
  % Walzer Nr. 1
  s2.\p | s2. |                                         % v1-2
  \repeat volta 2 {
    s2.-\tag #'print \dolce |                           % 1
    s2. | s2. | s2. |                                   % 2-4
    s2.\< | s2.\> | s2. | s2.\! |                       % 5-8
    s2.\< | s2. | s2.\mf\> | s2. |                      % 9-12
    s2.\p | s2. | s2. |                                 % 13-15
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  \repeat volta 2 {
    s2.-\tag #'print \fEnergico -\tag #'midi \f |       % 1
    s2. | s2. | s2. | s2. | s2. | s2. | s2. |           % 2-8
    s2. | s2. | s2. | s2.\< |                           % 9-12
    s2.\ff | s2. | s2. |                                % 13-15
    \alternative {
      { s2. | }
      { s2 s4\p | }
    }
  }
  % Walzer Nr. 2
  \repeat volta 2 {
    s2.-\tag #'print \grazioso |                         % 1
    s2. | s2. | s2. | s2. | s2. | s2. | s2. |           % 2-8
    s2.\< | s2. | s2.\mf | s2.\> |                      % 9-12
    s2.\p | s2. | s2. |                                 % 13-15
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  \repeat volta 2 {
    s2.-\tag #'print \pScherzando -\tag #'midi \p |     % 1
    s2. | s2. | s2. | s2. | s2. | s2. | s2. |           % 2-8
    s2. | s2. | s2. | s2.\< |                           % 9-12
    s2 s4\f | s2. | s2.\p | s2. |                       % 13-16
  }
  % Walzer Nr. 3
  s2.\p\< | s2. |                                       % v1-2
  \repeat volta 2 {
    s2.-\tag #'print \ffSlancio -\tag #'midi \ff |      % 1
    s2. | s2. | s2. |                                   % 2-4
    s2.\> | s2. | s2.\f | s2. |                         % 5-8
    s2.\< | s2.\ff | s2. | s2. |                        % 9-12
    s2. | s2. | s2. |                                   % 13-15
    \alternative {
      { s2. | }
      { s2.\> | }
    }
  }
  \repeat volta 2 {
    s2.-\tag #'print \pLeggiero -\tag #'midi \p |       % 1
    s2. | s2. | s2. | s2. | s2. | s2. | s2. |           % 2-8
    s2. | s2.\< | s2. | s2.\mf\> |                      % 9-12
    s2. | s2.\p | s2. | s2. |                           % 13-16
  }
  % Coda
  s2.\p | s2. | s2.\< | s2. |                           % c1-4
  s2.\mf | s2. | s2.\< | s4\f s2 |                      % c5-8
  s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. |       % c9-16
  s2.\< | s2. | s2.\ff | s2. | s2.\f | s2. | s2. |      % c17-23
  s2.\> |                                               % c24
  s2.-\tag #'print \pDolce -\tag #'midi \p |            % c25
  s2. | s2. | s2. |                                     % c26-28
  s2.\< | s2.\> | s2.\pp | s2. |                        % c29-32
  s2.\f | s2. | s2. | s2. | s2. | s2. | s2. | s2. |     % c33-40
  s2. | s2. | s2. | s2.\< |                             % c41-44
  s2.\ff | s2. | s2. | s2. |                            % c45-48
  s2.\fp\< | s2. |                                      % c49-50
  s2.\fff | s2. | s2. | s2. |                           % c51-54
}

% ---------------------------------------------------------------------------
% Sustain pedal for the MIDI only: down on every downbeat.
% 271 bars once the repeats are unfolded.

midiPedal = {
  s2.\sustainOn
  \repeat unfold 269 { s2.\sustainOff\sustainOn }
  s2\sustainOff\sustainOn s4\sustainOff
}

% ---------------------------------------------------------------------------
% Score

\score {
  \removeWithTag #'midi
  \new PianoStaff \simultaneous {
    \new Staff = "upper" \upper
    \new Dynamics \dyn
    \new Staff = "lower" \lower
  }
  \layout {
    \context {
      \Score
      \override MetronomeMark.padding = #2
      \override SectionLabel.padding = #1.5
      \override SectionLabel.font-series = #'bold
      \override SectionLabel.font-size = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      \override BarNumber.break-visibility = ##(#f #f #t)
    }
  }
}

% ---------------------------------------------------------------------------
% MIDI

\score {
  \removeWithTag #'print
  \unfoldRepeats
  \new PianoStaff \simultaneous {
    \new Staff = "upper" \with {
      midiInstrument = "acoustic grand"
    } \simultaneous { \upper \dyn }
    \new Staff = "lower" \with {
      midiInstrument = "acoustic grand"
    } \simultaneous { \lower \dyn \new Voice \midiPedal }
  }
  \midi { }
}
