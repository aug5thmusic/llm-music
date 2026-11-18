\version "2.24.0"
\language "nederlands"

% STRING QUARTET IN D MINOR -- I. Allegro
% An original first movement in sonata-allegro form, in the Classical style
% (the minor-key quartets of Haydn and Mozart, and Beethoven's Op. 18).
% Absolute pitches throughout (c' = middle C). No double angle brackets are used:
% simultaneous music is written with \simultaneous { }.
% 147 bars in common time (exposition repeated), about 6 minutes 25 seconds.
%
% THE MOTTO (bars 1-2, all four instruments in octaves):
%   D (minim) -- three staccato quavers on A -- B flat falling to A.
%   Its two cells run through the whole movement: the three-quaver upbeat
%   and the semitone sigh (flat sixth to fifth).
%
% FORM
%   EXPOSITION (bars 1-56, repeated)
%   1-8     First theme (D minor). The motto in octaves, f, answered p by a falling
%           phrase over an augmented sixth and a half cadence; the motto on the
%           dominant; the answer again, closing in the tonic.
%   9-16    Second limb, p: a rising phrase that ends in the sigh (i, V6/5, iv6, V7,
%           deceptive VI), accompanied by the three-quaver rhythm; then f, a
%           Neapolitan sixth, a diminished seventh, and a cadence with a trill.
%   17-25   Transition, f. The motto in viola and cello under semiquavers; then in
%           the violins on F, its sigh now D flat-C (F minor colour). Dominant of F
%           with the motto's tail in sixth chords; three chords; a solo lead-in.
%   26-33   Second theme (F major), p dolce: the rhythm of bars 9-10 turned into
%           a singing eight-bar phrase in thirds.
%   34-40   The theme in the cello (viola takes the bass), answered by the first
%           violin an octave higher.
%   41-44   Deceptive cadence: the motto, at its D minor pitch, breaks in below
%           (vi, I6, IV, V6/5 of V), then the cadential six-four and trill.
%   45-55   Closing group. The motto in F major (its sigh now D-C, over IV-I), a
%           quiet cadence phrase, both repeated (the second time pp, an octave
%           lower); codetta on a tonic pedal.
%   56/57   First ending: three A's lead back to bar 1. Second ending: three C's
%           step up to D flat.
%   DEVELOPMENT (bars 58-84)
%   58-62   D flat major, pp: the second theme's first phrase.
%   63-66   B flat minor: the same phrase in the viola, then the first violin.
%   67-74   The motto in imitation, each entry a fifth higher: viola (B flat minor),
%           second violin (F minor), first violin (C minor, then G minor), against a
%           running semiquaver counter-subject. Each sigh is harmonised as a
%           Neapolitan sixth in the next key (N6, six-four, V7).
%   75-76   D minor, ff: the motto at pitch in viola and cello (a false reprise of
%           bar 17) over a German sixth, to the dominant.
%   77-84   Dominant pedal. The motto's tail falls through the quartet and fades;
%           sighs; three A's.
%   RECAPITULATION (bars 85-136)
%   85-100  First theme as before.
%   101-109 Transition, turned to stay at home: the violins' motto on D major
%           (V of iv), G minor, and the dominant of D minor.
%   110-117 Second theme in D minor, low and veiled.
%   118-124 The theme in the viola, answered by the first violin.
%   125-128 Deceptive cadence on B flat; iv, ii7, six-four, trill.
%   129-136 Closing group in D minor: the motto harmonised (i, iv, i); the answer
%           of bars 3-4, which now resolves (augmented sixth, six-four, V7, i).
%   CODA (bars 137-147)
%   137-140 Tonic pedal: the motto's tail, then a Neapolitan sixth above the pedal.
%   141-147 The motto in octaves, ff; Neapolitan sixth, diminished seventh, cadence;
%           the three quavers on A now fall to the tonic chord.
%
% BUILD: lilypond -o output/pdf/string-quartet-in-d-minor-allegro string-quartet-in-d-minor-allegro.ly

\header {
  title = "String Quartet in D minor"
  subtitle = "I. Allegro"
  subsubtitle = "in the Classical style"
  composer = "Claude Fable 5.2"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 15\mm
  ragged-last-bottom = ##f
}

#(set-global-staff-size 17)

global = {
  \key d \minor
  \time 4/4
  \set Score.tempoHideNote = ##t
  \tempo "Allegro" 4 = 126
}

% ===========================================================================
% VIOLIN I
% ===========================================================================

violinOneP = {                                             % bars 1-16
  d''2\f r8 a''8-. a''-. a''-. |                           % 1
  bes''2\sf( a''4) r4 |
  g''4.\p( f''8 e''4 d'') |
  d''4( cis'') r2 |
  a'2\f r8 e''8-. e''-. e''-. |                            % 5
  f''2\sf( e''4) r4 |
  bes''4.\p( a''8 g''4 f'') |
  f''4( e'') d''4 r4 |
  a'2( d''4.) f''8 |                                       % 9
  f''4( e'') r2 |
  d''2( g''4.) bes''8 |
  bes''4( a'') r8 d'''8-.\< d'''-. d'''-. |
  es'''2\f( bes''4) g''4 |                                 % 13
  f'''2\sf( d'''4) b''4 |
  d'''2( a''4) f''4 |
  \afterGrace 15/16 e''1\trill { d''16 e'' } |
}

violinOneTrA = {                                           % bar 17 (and 101)
  d''16\f( e'' f'' g'' a'' b'' cis''' d''') d'''16 a'' f'' a'' d''' a'' f'' d'' |
}

violinOneTr = {                                            % bars 18-25
  d'''16 bes'' f'' bes'' d''' bes'' f'' d'' c'''16 a'' f'' a'' c''' a'' f'' c'' |
  f''2\sf r8 c'''8-. c'''-. c'''-. |                       % 19
  des'''2\sf( c'''4) r4 |
  r8 g''8-. g''-. g''-. as''4\sf( g'') |                   % 21
  r8 c'''8-. c'''-. c'''-. des'''4\sf( c''') |
  des'''4( c''') as''4( g'') |
  <e' c'' g''>4 <e' c'' g''>4 <e' c'' g''>4 r4 |           % 24
  r4 g''8\p( f'' e'' d'' c'' bes') |
}

violinOneS = {                                             % bars 26-44
  a'2\p_\markup { \italic "dolce" }( c''4. bes'8) |        % 26
  a'4( g') g'2 |
  g'2( bes'4. a'8) |
  g'4( f') f'4 r4 |
  d''2( bes'4. g'8) |                                      % 30
  c''2( a'4. f'8) |
  g'4( bes') a'4( g'\trill) |
  f'4 r4 r2 |
  f''2\pp( a''4. g''8) |                                   % 34
  f''4( e'') e''2 |
  e''2( g''4. f''8) |
  e''4( f'') f''4 r4 |
  d'''2\p( bes''4. g''8) |                                 % 38
  c'''2( a''4. f''8) |
  g''4\<( bes'') a''4( g''\trill) |
  f''4\f r4 r8 c'''8-. c'''-. c'''-. |                     % 41
  d'''1\sf |
  c'''8( bes'' a'' g'') f''( g'' a'' f'') |
  \afterGrace 15/16 g''1\trill { f''16 g'' } |
}

violinOneC = {                                             % bars 45-55
  f''2\f r8 c'''8-. c'''-. c'''-. |                        % 45
  d'''2\sf( c'''4) r4 |
  bes''4.\p( a''8 g''4 f'') |
  f''4( e'') f''4 r4 |
  f''2\f r8 c'''8-. c'''-. c'''-. |                        % 49
  d'''2\sf( c'''4) r4 |
  bes'4.\pp( a'8 g'4 f') |
  f'4( e') f'4 r4 |
  r8 c''8-. c''-. c''-. d''4( c'') |                       % 53
  f'1 |
  r8 f'8-. f'-. f'-. f'4 r4 |
}

violinOneDev = {                                           % bars 58-84
  des''1 |                                                 % 58
  f''2\p_\markup { \italic "dolce" }( as''4. ges''8) |
  f''4( es'') es''2 |
  es''2( ges''4. f''8) |
  es''4( des'') des''4 r4 |
  R1 |                                                     % 63
  r4 ges''4\p( f''2) |
  des''2\mf( f''4. es''8) |                                % 65
  des''4\<( c'') c''2\! |
  R1 |                                                     % 67
  R1 |
  as''1\f |                                                % 69
  f''2( es''4) d''8( b') |
  c''2 r8 g''8-. g''-. g''-. |                             % 71
  as''2\sf( g''4) r4 |
  g''2\ff r8 d'''8-. d'''-. d'''-. |                       % 73
  es'''2\sf( d'''4) r4 |
  d''16( e'' f'' g'' a'' b'' cis''' d''') d'''16 a'' f'' a'' d''' a'' f'' d'' |      % 75
  d'''16 gis'' bes'' gis'' d''' gis'' bes'' gis'' a''16 cis''' e''' cis''' a'' cis''' e''' a'' |
  r8 e'''8-. e'''-. e'''-. f'''4\sf( e''') |               % 77
  R1 |
  R1 |
  R1 |
  r4 bes''4\pp( a''2) |                                    % 81
  r4 bes'4( a'2) |
  R1 |
  r2 r8 a'8-.\< a'-. a'-. |                                % 84
}

violinOneRecapTr = {                                       % bars 102-109
  d'''16 bes'' f'' bes'' d''' bes'' f'' d'' cis'''16 a'' e'' a'' cis''' a'' e'' cis'' |
  d''2\sf r8 a''8-. a''-. a''-. |                          % 103
  bes''2\sf( a''4) r4 |
  r8 e''8-. e''-. e''-. f''4\sf( e'') |                    % 105
  r8 a''8-. a''-. a''-. bes''4\sf( a'') |
  bes''4( a'') f''4( e'') |
  <e' cis'' a''>4 <e' cis'' a''>4 <e' cis'' a''>4 r4 |     % 108
  r4 e''8\p( d'' cis'' bes' a' g') |
}

violinOneRecapS = {                                        % bars 110-128
  f'2\p_\markup { \italic "sotto voce" }( a'4. g'8) |      % 110
  f'4( e') e'2 |
  e'2( g'4. f'8) |
  e'4( d') d'4 r4 |
  bes'2( g'4. e'8) |                                       % 114
  a'2( f'4. d'8) |
  e'4( g') f'4( e'\trill) |
  d'4 r4 r2 |
  d''2\pp( f''4. e''8) |                                   % 118
  d''4( cis'') cis''2 |
  cis''2( e''4. d''8) |
  cis''4( d'') d''4 r4 |
  bes''2\p( g''4. e''8) |                                  % 122
  a''2( f''4. d''8) |
  e''4\<( g'') f''4( e''\trill) |
  d''4\f r4 r8 a''8-. a''-. a''-. |                        % 125
  bes''1\sf |
  a''8( g'' f'' e'') d''( e'' f'' d'') |
  \afterGrace 15/16 e''1\trill { d''16 e'' } |
}

violinOneRecapC = {                                        % bars 129-136
  d''2\f r8 a''8-. a''-. a''-. |                           % 129
  bes''2\sf( a''4) r4 |
  g''4.\p( f''8 e''4 d'') |
  d''4( cis'') d''4 r4 |
  d''2\f r8 a''8-. a''-. a''-. |                           % 133
  bes''2\sf( a''4) r4 |
  g'4.\pp( f'8 e'4 d') |
  d'4( cis') d'4 r4 |
}

violinOneCoda = {                                          % bars 137-147
  r8 a'8-. a'-. a'-. bes'4( a') |                          % 137
  d'1 |
  r8 d''8-.\p\< d''-. d''-. es''4( d'') |                  % 139
  r8 d'''8-. d'''-. d'''-. es'''4( d''') |
  d''2\ff r8 a''8-. a''-. a''-. |                          % 141
  bes''2\sf( a''4) r4 |
  es'''2\sf f'''2\sf |                                     % 143
  d'''4( a'') e''4.\trill( d''16 e'') |
  <f' d''>2 r8 a'8-. a'-. a'-. |                           % 145
  <f' d''>4 r4 <f' d''>4 r4 |
  <f' d''>2 r2 |
}

violinOne = {
  \clef treble
  \repeat volta 2 {
    \violinOneP \violinOneTrA \violinOneTr \violinOneS \violinOneC
  }
  \alternative {
    { r2 r8 a'8-.\f a'-. a'-. | }                          % 56
    { r2 r8 c''8-.\pp c''-. c''-. | }                      % 57
  }
  \violinOneDev
  \violinOneP \violinOneTrA \violinOneRecapTr \violinOneRecapS \violinOneRecapC
  \violinOneCoda
  \bar "|."
}

% ===========================================================================
% VIOLIN II
% ===========================================================================

violinTwoP = {
  d'2\f r8 a'8-. a'-. a'-. |                               % 1
  bes'2\sf( a'4) r4 |
  g'2\p( gis') |
  a'2 r2 |
  a2\f r8 e'8-. e'-. e'-. |                                % 5
  f'2\sf( e'4) r4 |
  g'2\p( f') |
  f'4 g'( f') r4 |
  r8 f'8 f' f' r8 f' f' f' |                               % 9
  r8 g' g' g' r8 f' f' f' |
  r8 g' g' g' r8 g' g' g' |
  r8 g'\< g' g' r8 f' f' f' |
  r8 <es' bes'>8\f <es' bes'> <es' bes'> r8 <es' bes'> <es' bes'> <es' bes'> |      % 13
  r8 <d' b'>8 <d' b'> <d' b'> r8 <d' b'> <d' b'> <d' b'> |
  r8 <d' a'>8 <d' a'> <d' a'> r8 <d' a'> <d' a'> <d' a'> |
  r8 <cis' a'>8 <cis' a'> <cis' a'> r8 <cis' a'> <cis' a'> <cis' a'> |
}

violinTwoTrA = {                                           % bar 17 (and 101)
  <d' a'>8\f <f' d''>4 <f' d''>8 <f' d''>8 <f' d''>4 <f' d''>8 |
}

violinTwoTr = {                                            % bars 18-25
  <f' bes'>8 <f' bes'>4 <f' bes'>8 <f' c''>8 <f' c''>4 <f' c''>8 |
  f'2\sf r8 c''8-. c''-. c''-. |                           % 19
  des''2\sf( c''4) r4 |
  r8 e''8-. e''-. e''-. f''4\sf( e'') |                    % 21
  r8 g''8-. g''-. g''-. as''4\sf( g'') |
  as''4( g'') f''4( e'') |
  <g e' c''>4 <g e' c''>4 <g e' c''>4 r4 |                 % 24
  R1 |
}

violinTwoS = {                                             % bars 26-44
  f'2\p( a'4. g'8) |                                       % 26
  f'4( e') e'2 |
  e'2( g'4. f'8) |
  e'4( f') f'4 r4 |
  f'2( d'4. e'8) |                                         % 30
  f'1 |
  d'4( g') f'4( e') |
  f'4 r4 r2 |
  a'8\pp( c'' a' c'' a' c'' a' c'') |                      % 34
  a'8( c'' g' c'' g' c'' g' c'') |
  g'8( bes' g' bes' g' bes' g' bes') |
  c''8( a' c'' a' c'' a' c'' a') |
  f''2\p( d''4. e''8) |                                    % 38
  f''1 |
  d''4\<( g'') f''4( e'') |
  <a' f''>2\f r8 <c'' f''>8-. <c'' f''>-. <c'' f''>-. |    % 41
  <bes' f''>2\sf <g' d''>2 |
  <a' f''>8 <a' f''>4 <a' f''>8 <a' f''>8 <a' f''>4 <a' f''>8 |
  <bes' e''>8 <bes' e''>4 <bes' e''>8 <bes' e''>8 <bes' e''>4 <bes' e''>8 |
}

violinTwoC = {                                             % bars 45-55
  <a' f''>2\f r8 a''8-. a''-. a''-. |                      % 45
  bes''2\sf( a''4) r4 |
  bes'1\p |
  a'4( bes' a') r4 |
  <a' f''>2\f r8 a''8-. a''-. a''-. |                      % 49
  bes''2\sf( a''4) r4 |
  d'1\pp |
  c'4 c' c' r4 |
  r8 a'8-. a'-. a'-. bes'4( a') |                          % 53
  r8 c'8-. c'-. c'-. d'4( c') |
  r8 c'8-. c'-. c'-. c'4 r4 |
}

violinTwoDev = {                                           % bars 58-84
  as'1 |                                                   % 58
  des''2\p( f''4. es''8) |
  des''4( c'') c''2 |
  c''2( es''4. des''8) |
  c''4( des'') des''4 r4 |
  des'8\pp( bes des' bes des' bes des' bes) |              % 63
  a8( es' a es' a es' a es') |
  bes8\<( des' bes des' bes des' bes des') |               % 65
  r4 a8( es' a es' a es') |
  des''16\f( c'' bes' c'') des''( es'' des'' c'') bes'( c'' des'' es'') f''( es'' des'' bes') |   % 67
  des''16( es'' des'' bes') ges'( bes' des'' bes') as'( c'' as' f') g'( bes' g' e') |
  f'2 r8 c''8-. c''-. c''-. |                              % 69
  des''2\sf( c''4) r4 |
  es'16( d' c' d') es'( f' es' d') c'( d' es' f') g'( f' es' c') |                  % 71
  es'16( f' es' c') as( c' es' c') bes( d' bes g) a( c' a fis') |
  <g' bes'>8\ff <g' bes'>4 <g' bes'>4 <g' bes'>4 <g' bes'>8 |                       % 73
  <g' bes'>8 <g' bes'>4 <g' bes'>8 <f' a'>4 <e' cis''>4 |
  <f' d''>8 <f' d''>4 <f' d''>8 <f' d''>8 <f' d''>4 <f' d''>8 |                     % 75
  <f' d''>8 <f' d''>4 <f' d''>8 <a' cis''>8 <a' cis''>4 <a' cis''>8 |
  r8 cis'''8-. cis'''-. cis'''-. d'''4\sf( cis''') |       % 77
  r8 a''8-.\f a''-. a''-. bes''4( a'') |
  r8 cis'8-.\mf cis'-. cis'-. d'4( cis') |
  cis'1\p |                                                % 80
  cis'1\pp~ |
  cis'1~ |
  cis'1 |
  r2 r8 a'8-.\< a'-. a'-. |                                % 84
}

violinTwoRecapTr = {                                       % bars 102-109
  <f' bes'>8 <f' bes'>4 <f' bes'>8 g'8 g'4 g'8 |
  d'2\sf r8 a'8-. a'-. a'-. |                              % 103
  bes'2\sf( a'4) r4 |
  r8 cis''8-. cis''-. cis''-. d''4\sf( cis'') |            % 105
  r8 e''8-. e''-. e''-. f''4\sf( e'') |
  f''4( e'') d''4( cis'') |
  <a e' cis''>4 <a e' cis''>4 <a e' cis''>4 r4 |           % 108
  R1 |
}

violinTwoRecapS = {                                        % bars 110-128
  d'2\p( f'4. e'8) |                                       % 110
  d'4( cis') cis'2 |
  cis'2( e'4. d'8) |
  cis'4( d') d'4 r4 |
  d'2~ d'4. cis'8 |                                        % 114
  d'1 |
  g4( e') d'4( cis') |
  d'4 r4 r2 |
  d'8\pp( a d' a d' a d' a) |                              % 118
  a8( d' a e' a e' a e') |
  e'8( g e' g e' g e' g) |
  a8( f' a f' a4) r4 |
  d''2\p~ d''4. cis''8 |                                   % 122
  d''1 |
  g'4\<( e'') d''4( cis'') |
  <f' d''>2\f r8 <a' d''>8-. <a' d''>-. <a' d''>-. |       % 125
  <g' d''>1\sf |
  <f' d''>8 <f' d''>4 <f' d''>8 <f' d''>8 <f' d''>4 <f' d''>8 |
  <g' cis''>8 <g' cis''>4 <g' cis''>8 <g' cis''>8 <g' cis''>4 <g' cis''>8 |
}

violinTwoRecapC = {                                        % bars 129-136
  <f' d''>2\f r8 f''8-. f''-. f''-. |                      % 129
  g''2\sf( f''4) r4 |
  g'2\p( gis') |
  a'4( g' f') r4 |
  <f' d''>2\f r8 f''8-. f''-. f''-. |                      % 133
  g''2\sf( f''4) r4 |
  g2\pp( gis) |
  a4 a a r4 |
}

violinTwoCoda = {                                          % bars 137-147
  r8 f'8-. f'-. f'-. g'4( f') |                            % 137
  r8 a8-. a-. a-. bes4( a) |
  r8 a'8-.\p\< a'-. a'-. bes'4( a') |                      % 139
  r8 a''8-. a''-. a''-. bes''4( a'') |
  d'2\ff r8 a'8-. a'-. a'-. |                              % 141
  bes'2\sf( a'4) r4 |
  <es' bes'>2\sf <d' b'>2\sf |                             % 143
  <d' a'>2 <cis' a'>2 |
  <d' a'>2 r8 a'8-. a'-. a'-. |                            % 145
  <d' a'>4 r4 <d' a'>4 r4 |
  <d' a'>2 r2 |
}

violinTwo = {
  \clef treble
  \repeat volta 2 {
    \violinTwoP \violinTwoTrA \violinTwoTr \violinTwoS \violinTwoC
  }
  \alternative {
    { r2 r8 a'8-.\f a'-. a'-. | }
    { r2 r8 c'8-.\pp c'-. c'-. | }
  }
  \violinTwoDev
  \violinTwoP \violinTwoTrA \violinTwoRecapTr \violinTwoRecapS \violinTwoRecapC
  \violinTwoCoda
  \bar "|."
}

% ===========================================================================
% VIOLA
% ===========================================================================

violaP = {
  d2\f r8 a8-. a-. a-. |                                   % 1
  bes2\sf( a4) r4 |
  d'1\p |
  e'2 r2 |
  a2\f r8 e'8-. e'-. e'-. |                                % 5
  f'2\sf( e'4) r4 |
  e'2\p( d') |
  d'4( cis' d') r4 |
  r8 a8 a a r8 a a a |                                     % 9
  r8 a a a r8 a a a |
  r8 d' d' d' r8 d' d' d' |
  r8 cis'\< cis' cis' r8 d' d' d' |
  r8 bes8\f bes bes r8 bes bes bes |                       % 13
  r8 f8 f f r8 f f f |
  r8 f8 f f r8 f f f |
  r8 g8 g g r8 g g g |
}

violaTrA = {                                               % bar 17 (and 101)
  d2\f r8 a8-. a-. a-. |
}

violaTr = {                                                % bars 18-25
  bes2\sf( a4) r4 |
  <a f'>8 <a f'>4 <a f'>8 <a f'>8 <a f'>4 <a f'>8 |        % 19
  <bes f'>8 <bes f'>4 <bes f'>8 <g e'>8 <g e'>4 <g e'>8 |
  c'8 c' c' c' c' c' c' c' |                               % 21
  r8 e'8-. e'-. e'-. f'4\sf( e') |
  f'4( e') c'8 c' c' c' |
  <c g e'>4 <c g e'>4 <c g e'>4 r4 |                       % 24
  R1 |
}

violaS = {                                                 % bars 26-44
  a8\p( c' a c' a c' a c') |                               % 26
  a8( c' g c' g c' g c') |
  g8( bes g bes g bes g bes) |
  c'8( a c' a c' a c' a) |
  d'8( bes d' bes d' bes d' c') |                          % 30
  f8( c' f c' f c' f c') |
  g8( d' g d') a8( c') g8( bes) |
  a8( c' a c' a4) r4 |
  f4\p r f r |                                             % 34
  c4 r c r |
  c4 r c r |
  f4 r f r |
  f'8( d' f' d' f' d' f' c') |                             % 38
  f8( c' f c' f c' f c') |
  g8\<( d' g d') a8( c') g8( bes) |
  d'2\f r8 a8-. a-. a-. |                                  % 41
  bes2\sf f'2 |
  c'8 c' c' c' c' c' c' c' |
  g8 g g g g g g g |
}

violaC = {                                                 % bars 45-55
  c'2\f r8 f'8-. f'-. f'-. |                               % 45
  f'2\sf~ f'4 r4 |
  d'1\p |
  c'4 c' c' r4 |
  c'2\f r8 f'8-. f'-. f'-. |                               % 49
  f'2\sf~ f'4 r4 |
  bes1\pp |
  a4( bes a) r4 |
  f'1 |                                                    % 53
  r8 a8-. a-. a-. bes4( a) |
  r8 a8-. a-. a-. a4 r4 |
}

violaDev = {                                               % bars 58-84
  f'1 |                                                    % 58
  f'8\p( as' f' as' f' as' f' as') |
  f'8( as' es' as' es' as' es' as') |
  es'8( ges' es' ges' es' ges' es' ges') |
  as'8( f' as' f' as' f' as' f') |
  des'2\mp_\markup { \italic "espress." }( f'4. es'8) |    % 63
  des'4( c') c'2 |
  bes'2\<( des''4. c''8) |                                 % 65
  bes'4( a') a'2 |
  bes2\f r8 f'8-. f'-. f'-. |                              % 67
  ges'2\sf( f'4) r4 |
  as16( g f g) as( bes as g) f( g as bes) c'( bes as f) |  % 69
  as16( bes as f) des'( f' as' des') es'( g' es' c') d'( f' d' g) |
  g1 |                                                     % 71
  es'2( d'4) c'4 |
  bes16\ff( a g a) bes( c' bes a) g( a bes c') d'( c' bes g) |                      % 73
  bes16( c' bes g) es( g bes g) d( f a f) g( e g e) |
  d2 r8 a8-. a-. a-. |                                     % 75
  bes2\sf( a4) r4 |
  a8 a a a a a a a |                                       % 77
  r8 cis''8-.\f cis''-. cis''-. d''4( cis'') |
  r8 e'8-.\mf e'-. e'-. f'4( e') |
  e'1\p |                                                  % 80
  g1\pp~ |
  g1 |
  r4 bes4( a2) |
  r2 r8 a8-.\< a-. a-. |                                   % 84
}

violaRecapTr = {                                           % bars 102-109
  bes2\sf( a4) r4 |
  <a fis'>8 <a fis'>4 <a fis'>8 <a fis'>8 <a fis'>4 <a fis'>8 |                     % 103
  <g d'>8 <g d'>4 <g d'>8 <e cis'>8 <e cis'>4 <e cis'>8 |
  a8 a a a a a a a |                                       % 105
  r8 cis'8-. cis'-. cis'-. d'4\sf( cis') |
  d'4( cis') a8 a a a |
  <a e'>4 <a e'>4 <a e'>4 r4 |                             % 108
  R1 |
}

violaRecapS = {                                            % bars 110-128
  f8\p( a f a f a f a) |                                   % 110
  f8( a e a e a e a) |
  e8( g e g e g e g) |
  f8( a f a f a f a) |
  bes8( g bes g bes g bes a) |                             % 114
  d8( a d a d a d a) |
  e8( bes e bes) f8( a) e8( g) |
  f8( a f a) r8 a8( d' e') |
  f'2\mp_\markup { \italic "espress." }( a'4. g'8) |       % 118
  f'4( e') e'2 |
  e'2( g'4. f'8) |
  e'4( d') d'4 r4 |
  bes8\p( g bes g bes g bes a) |                           % 122
  d8( a d a d a d a) |
  e8\<( bes e bes) f8( a) e8( g) |
  bes2\f r8 f8-. f-. f-. |                                 % 125
  g1\sf |
  a8 a a a a a a a |
  e8 e e e e e e e |
}

violaRecapC = {                                            % bars 129-136
  a2\f r8 d'8-. d'-. d'-. |                                % 129
  d'2\sf~ d'4 r4 |
  d'1\p |
  f'4( e' d') r4 |
  a2\f r8 d'8-. d'-. d'-. |                                % 133
  d'2\sf~ d'4 r4 |
  d1\pp |
  f4( g f) r4 |
}

violaCoda = {                                              % bars 137-147
  d'1 |                                                    % 137
  r8 f8-. f-. f-. g4( f) |
  r8 f'8-.\p\< f'-. f'-. g'4( f') |                        % 139
  r8 f'8-. f'-. f'-. g'4( f') |
  d2\ff r8 a8-. a-. a-. |                                  % 141
  bes2\sf( a4) r4 |
  bes2\sf f2\sf |                                          % 143
  f2 g2 |
  <d a f'>2 r8 a8-. a-. a-. |                              % 145
  <d a f'>4 r4 <d a f'>4 r4 |
  <d a f'>2 r2 |
}

viola = {
  \clef alto
  \repeat volta 2 {
    \violaP \violaTrA \violaTr \violaS \violaC
  }
  \alternative {
    { r2 r8 a8-.\f a-. a-. | }
    { r2 r8 c'8-.\pp c'-. c'-. | }
  }
  \violaDev
  \violaP \violaTrA \violaRecapTr \violaRecapS \violaRecapC
  \violaCoda
  \bar "|."
}

% ===========================================================================
% CELLO
% ===========================================================================

celloP = {
  d,2\f r8 a,8-. a,-. a,-. |                               % 1
  bes,2\sf( a,4) r4 |
  bes,1\p |
  a,2 r2 |
  a,2\f r8 e8-. e-. e-. |                                  % 5
  f2\sf( e4) r4 |
  cis2\p( d4) bes,4 |
  a,4 a, d r4 |
  d4 r d r |                                               % 9
  cis4 r d r |
  bes,4 r bes, r |
  a,4\< r bes, r |
  g,4\f r g, r |                                           % 13
  gis,4 r gis, r |
  a,4 r a, r |
  a,4 r a, r |
}

celloTrA = {                                               % bar 17 (and 101)
  d,2\f r8 a,8-. a,-. a,-. |
}

celloTr = {                                                % bars 18-25
  bes,2\sf( a,4) r4 |
  f,16 g, a, bes, c d e f f c a, c f c a, f, |             % 19
  bes,16 c des es f es des bes, c8 c c c |
  c8 c c c c c c c |                                       % 21
  c8 c c c c c c c |
  c8 c c c c c c c |
  <c, c>4 <c, c>4 <c, c>4 r4 |                             % 24
  R1 |
}

celloS = {                                                 % bars 26-44
  f,4\p r f, r |                                           % 26
  c4 r c r |
  c4 r c r |
  f,4 r f, r |
  bes,4 r bes, r |                                         % 30
  a,4 r a, r |
  bes,4 bes, c c |
  f,4 r4 r8 c8( f g) |
  a2\mf_\markup { \italic "espress." }( c'4. bes8) |       % 34
  a4( g) g2 |
  g2( bes4. a8) |
  g4( f) f4 r4 |
  bes,4\p r bes, r |                                       % 38
  a,4 r a, r |
  bes,4\< bes, c c |
  d2\f r8 a,8-. a,-. a,-. |                                % 41
  bes,2\sf b,2 |
  c8 c c c c c c c |
  c8 c c c c c c c |
}

celloC = {                                                 % bars 45-55
  f,2\f r8 f8-. f-. f-. |                                  % 45
  bes,2\sf( f,4) r4 |
  g,2\p( bes,) |
  c4 c f, r4 |
  f,2\f r8 f8-. f-. f-. |                                  % 49
  bes,2\sf( f,4) r4 |
  g,2\pp( bes,) |
  c4 c f, r4 |
  f,8 f, f, f, f, f, f, f, |                               % 53
  f,8 f, f, f, f, f, f, f, |
  f,8 f, f, f, f,4 r4 |
}

celloDev = {                                               % bars 58-84
  des1 |                                                   % 58
  des4\p r des r |
  as,4 r as, r |
  as,4 r as, r |
  des4 r des r |
  bes,4 r bes, r |                                         % 63
  f,4 r f, r |
  bes,4\< r bes, r |                                       % 65
  f,4 r f, r |
  bes,4\f r bes, r |                                       % 67
  bes,2 c2 |
  f,4 r f, r |                                             % 69
  f,2 g,2 |
  c4 r c r |                                               % 71
  c2 d2 |
  g,4\ff r g, r |                                          % 73
  g,2 a,2 |
  d,2 r8 a,8-. a,-. a,-. |                                 % 75
  bes,2\sf( a,4) r4 |
  a,8 a, a, a, a, a, a, a, |                               % 77
  a,8\> a, a, a, a, a, a, a, |
  a,8 a, a, a, a, a, a, a, |
  r8 a,8-.\p a,-. a,-. bes,4( a,) |                        % 80
  a,1\pp~ |
  a,1~ |
  a,1 |
  r2 r8 a,8-.\< a,-. a,-. |                                % 84
}

celloRecapTr = {                                           % bars 102-109
  bes,2\sf( a,4) r4 |
  d,16 e, fis, g, a, b, cis d d a, fis, a, d a, fis, d, |  % 103
  g,16 a, bes, c d c bes, g, a,8 a, a, a, |
  a,8 a, a, a, a, a, a, a, |                               % 105
  a,8 a, a, a, a, a, a, a, |
  a,8 a, a, a, a, a, a, a, |
  <a, e>4 <a, e>4 <a, e>4 r4 |                             % 108
  R1 |
}

celloRecapS = {                                            % bars 110-128
  d,4\p r d, r |                                           % 110
  a,4 r a, r |
  a,4 r a, r |
  d,4 r d, r |
  g,4 r g, r |                                             % 114
  f,4 r f, r |
  g,4 g, a, a, |
  d,4 r4 r2 |
  d4\p r d r |                                             % 118
  a,4 r a, r |
  a,4 r a, r |
  d4 r d r |
  g,4 r g, r |                                             % 122
  f,4 r f, r |
  g,4\< g, a, a, |
  bes,2\f r8 f,8-. f,-. f,-. |                             % 125
  g,2\sf e,2 |
  a,8 a, a, a, a, a, a, a, |
  a,8 a, a, a, a, a, a, a, |
}

celloRecapC = {                                            % bars 129-136
  d,2\f r8 d8-. d-. d-. |                                  % 129
  g,2\sf( d,4) r4 |
  bes,1\p |
  a,4 a, d r4 |
  d,2\f r8 d8-. d-. d-. |                                  % 133
  g,2\sf( d,4) r4 |
  bes,1\pp |
  a,4 a, d, r4 |
}

celloCoda = {                                              % bars 137-147
  d,8 d, d, d, d, d, d, d, |                               % 137
  d,8 d, d, d, d, d, d, d, |
  d,8\p\< d, d, d, d, d, d, d, |                           % 139
  d,8 d, d, d, d, d, d, d, |
  d,2\ff r8 a,8-. a,-. a,-. |                              % 141
  bes,2\sf( a,4) r4 |
  g,2\sf gis,2\sf |                                        % 143
  a,2 a,2 |
  <d, a,>2 r8 a,8-. a,-. a,-. |                            % 145
  <d, a,>4 r4 <d, a,>4 r4 |
  <d, a,>2 r2 |
}

cello = {
  \clef bass
  \repeat volta 2 {
    \celloP \celloTrA \celloTr \celloS \celloC
  }
  \alternative {
    { r2 r8 a,8-.\f a,-. a,-. | }
    { r2 r8 c8-.\pp c-. c-. | }
  }
  \celloDev
  \celloP \celloTrA \celloRecapTr \celloRecapS \celloRecapC
  \celloCoda
  \bar "|."
}

% ===========================================================================
% SCORE
% ===========================================================================

music = \new StaffGroup \simultaneous {
  \new Staff = "violinI" \with {
    instrumentName = "Violin I" shortInstrumentName = "Vn. I"
    midiInstrument = "violin"
  } \simultaneous { \global \violinOne }
  \new Staff = "violinII" \with {
    instrumentName = "Violin II" shortInstrumentName = "Vn. II"
    midiInstrument = "violin"
  } \simultaneous { \global \violinTwo }
  \new Staff = "viola" \with {
    instrumentName = "Viola" shortInstrumentName = "Va."
    midiInstrument = "viola"
  } \simultaneous { \global \viola }
  \new Staff = "cello" \with {
    instrumentName = "Cello" shortInstrumentName = "Vc."
    midiInstrument = "cello"
  } \simultaneous { \global \cello }
}

\score {
  \music
  \layout { }
}

\score {
  \unfoldRepeats \music
  \midi { }
}
