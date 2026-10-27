\version "2.24.3"
\language "nederlands"

% The Moth's Galliard
% An original dance in the manner of John Dowland; no borrowed theme.
% One six-course Renaissance lute in G, low to high: G2 C3 F3 A3 D4 G4.
% All pitches sound as written. Course 1 is the highest course.
%
% Three eight-bar strains; AABBCC, about 1 minute 20 seconds with repeats.
% I: A minor, an upward-leaping point followed by a falling answer.
% II: C major; the point opens out into the upper register.
% III: divisions and a D-major inflection; the final A-major close glows
%      briefly after the minor-key dance.
% Each strain's last two bars form a hemiola: three half-note pulses across
% two bars of 3/4, with the middle pulse tied across the barline.
% Hemiolas are written in the notes, not left to MIDI accents or a label.
%
% French tablature, highest course at the top: a = open, b = fret 1, etc.
% The alphabet omits j. Explicit course assignments stay within frets 0-5.
% Tab stems follow the upper voice; sustain the lower voices as the score
% indicates. Both notation staves and the tab describe the SAME solo lute.
% Repeats may receive light graces. Lift the dance lightly; do not rush the
% eighth-note divisions. Give the final major third warmth, not extra weight.
%
% Build: lilypond -o output/pdf/the-moths-galliard the-moths-galliard.ly
% MIDI unfolds the repeats and uses nylon guitar as a lute substitute.

\header {
  title = "The Moth's Galliard"
  subtitle = "For six-course Renaissance lute in G"
  composer = "Original composition"
  poet = "In the manner of John Dowland"
  tagline = ##f
}

#(set-global-staff-size 17)

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 16\mm
  right-margin = 16\mm
  indent = 11\mm
  short-indent = 5\mm
  ragged-last-bottom = ##f
  print-page-number = ##t
  system-system-spacing.basic-distance = #18
  system-system-spacing.minimum-distance = #14
  system-system-spacing.padding = #3
  markup-system-spacing.basic-distance = #8
}

global = {
  \key a \minor
  \time 3/4
  \accidentalStyle modern
}

cantusA = {
  e'4\2 a'4.\1 b'8\1 |                  % 1
  c''4\1 b'8\1 a'8\1 g'4\1 |           % 2
  f'4\2 a'4.\1 g'8\1 |                  % 3
  gis'4\1 e'4\2 b'4\1 |                 % 4
  a'4\1 c''8\1 b'8\1 a'8\1 g'8\1 |    % 5
  f'4\2 e'4\2 d'4\2 |                   % 6
  f'2\2 e'4\2~ |                        % 7: hemiola begins
  e'4\2 a'2\1 |                         % 8
}
mediusA = {
  c'4\3 e'2\2 |
  e'2.\2 |
  a2.\3 |
  gis2.\4 |
  c'2.\3 |
  a2.\3 |
  a2\3 gis4\4~ |
  gis4\4 c'2\3 |
}
bassusA = {
  a,2.\6 |
  c2.\5 |
  d2.\5 |
  e2.\5 |
  a,2.\6 |
  f2.\5 |
  d2\5 e4\5~ |
  e4\5 a,2\6 |
}

cantusB = {
  g'4\1 c''4.\1 b'8\1 |                 % 9
  a'4\1 g'8\1 f'8\2 a'4\1 |            % 10
  b'4\1 a'8\1 g'8\1 f'4\2 |            % 11
  e'4\2 g'4\1 c''4\1 |                  % 12
  a'4.\1 g'8\1 f'4\2 |                  % 13
  g'4\1 e'4.\2 g'8\1 |                  % 14
  a'2\1 b'4\1~ |                        % 15: hemiola
  b'4\1 c''2\1 |                        % 16
}
mediusB = {
  e'2.\2 |
  c'2.\3 |
  d'2.\3 |
  g2.\4 |
  a2.\3 |
  e'4\2 c'2\3 |
  c'2\3 d'4\2~ |
  d'4\2 e'2\2 |
}
bassusB = {
  c2.\5 |
  f2.\5 |
  g,2.\6 |
  c2.\5 |
  f2.\5 |
  c2.\5 |
  f2\5 g,4\6~ |
  g,4\6 c2\5 |
}

cantusC = {
  c''8\1 b'8\1 a'4\1 e'4\2 |           % 17
  f'8\2 e'8\2 d'4\2 a'4\1 |            % 18
  g'4\1 c''8\1 b'8\1 a'8\1 g'8\1 |    % 19
  fis'4\2 a'4\1 gis'4\1 |               % 20: D major turns toward E
  a'4\1 e'8\2 f'8\2 g'4\1 |            % 21
  f'4\2 e'8\2 d'8\2 c'4\3 |            % 22
  f'2\2 gis'4\1~ |                      % 23: final hemiola
  gis'4\1 a'2\1\fermata |               % 24: A major
}
mediusC = {
  c'2.\3 |
  f2.\4 |
  g2\4 b4\3 |
  fis2\4 gis4\4 |
  c'2\3 e'4\2 |
  a2.\4 |
  d'2\3 b4\3~ |
  b4\3 cis'2\3 |
}
bassusC = {
  a,2.\6 |
  d2.\5 |
  e2.\5 |
  d2\5 e4\5 |
  a,2\6 c4\5 |
  f2.\5 |
  d2\5 e4\5~ |
  e4\5 a,2\6\fermata |
}

cantus = {
  \global
  \repeat volta 2 { \cantusA }
  \repeat volta 2 { \cantusB }
  \repeat volta 2 { \cantusC }
}
medius = {
  \global
  \repeat volta 2 { \mediusA }
  \repeat volta 2 { \mediusB }
  \repeat volta 2 { \mediusC }
}
bassus = {
  \global
  \repeat volta 2 { \bassusA }
  \repeat volta 2 { \bassusB }
  \repeat volta 2 { \bassusC }
}

directions = {
  \tempo "Lightly, with a spring in the step" 4 = 108
  \mark \markup \box "I"
  s2.*4 \break
  s2.*4 \break
  \barNumberCheck #9
  \mark \markup \box "II"
  s2.*4 \pageBreak
  s2.*4 \break
  \barNumberCheck #17
  \mark \markup \box "III"
  s2.*4 \break
  s2.*4
  \barNumberCheck #25
}

\markup \small \column {
  \line { "One lute; both notation staves at sounding pitch. Observe each repeat." }
  \line { "Tuning, low to high: G  c  f  a  d'  g'. French tab: top line = highest course; a = open." }
  \line { "Tab stems follow the upper voice; retain lower notes for their written durations." }
  \line { \italic "Lift the dance lightly. Feel each strain's last two bars as three broad steps in two." }
  \vspace #0.5
}

\score {
  \new StaffGroup \with {
    \override StaffGrouper.staff-staff-spacing =
      #'((basic-distance . 11) (minimum-distance . 9) (padding . 2))
  } <<
    \new Staff = "upper" \with {
      instrumentName = "Lute"
      \omit StringNumber
    } <<
      \clef treble
      \new Voice { \cantus }
      \new NullVoice { \directions }
    >>
    \new Staff = "lower" \with {
      \omit StringNumber
    } <<
      \clef bass
      \new Voice { \voiceOne \medius }
      \new Voice { \voiceTwo \bassus }
    >>
    \new TabStaff \with {
      instrumentName = "Tab."
      shortInstrumentName = "Tab."
      stringTunings = \stringTuning <g, c f a d' g'>
      tablatureFormat = #fret-letter-tablature-format
      fretLabels = #'("a" "b" "c" "d" "e" "f" "g" "h" "i" "k" "l")
      \omit StringNumber
    } <<
      \new TabVoice { \tabFullNotation \voiceOne \cantus }
      \new TabVoice {
        \voiceThree
        \omit Stem \omit Flag \omit Beam \omit Dots
        \medius
      }
      \new TabVoice {
        \voiceTwo
        \omit Stem \omit Flag \omit Beam \omit Dots
        \bassus
      }
    >>
  >>
  \layout {
    \context {
      \Score
      \override RehearsalMark.self-alignment-X = #LEFT
      \override RehearsalMark.padding = #2
    }
  }
}

% Separate sounding-pitch MIDI score: no duplicate notes from the tablature.
\score {
  \unfoldRepeats
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    midiMinimumVolume = #0.55
    midiMaximumVolume = #0.75
  } <<
    \new Voice = "cantus" { \cantus }
    \new Voice = "medius" { \medius }
    \new Voice = "bassus" { \bassus }
  >>
  \midi { \tempo 4 = 108 }
}
