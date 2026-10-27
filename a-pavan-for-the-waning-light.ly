\version "2.24.3"
\language "nederlands"

% A Pavan for the Waning Light
% Original music in the manner of John Dowland; no borrowed theme.
%
% Six-course Renaissance lute in G. Sounding pitches, low to high:
% G2 C3 F3 A3 D4 G4. Course 1 is the highest; paired courses count as one.
% The modern score uses two staves solely to clarify the three voices:
% all the music is played by ONE lutenist.
%
% Three eight-bar strains, AABBCC when repeats are observed, about 2:11.
% I: G minor, with a 9-8 suspension at bar 4 and a 4-3 at bar 7.
% II: the relative major; 4-3 suspensions at bars 12 and 15.
% III: shorter divisions, a low-register answer in bar 21, and a final
%      4-3 suspension leading to a major-third close on G.
%
% French letters: a = open, b = first fret, c = second, etc.; j is omitted.
% Highest course at the TOP. Tab rhythm stems follow the upper voice, which
% contains every attack position. Sustain lower voices as the score shows.
% The modern score specifies all three voices' independent durations.
% Course assignments are explicit throughout; the highest fret is 5.
% Let each voice sing, release stopped notes at their written end, and
% lightly separate the strains. Add modest graces on the repeats, if desired.
% The MIDI unfolds all repeats and uses nylon guitar as a lute substitute.
%
% Build from the workspace root:
% lilypond -o output/pdf/a-pavan-for-the-waning-light a-pavan-for-the-waning-light.ly

\header {
  title = "A Pavan for the Waning Light"
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
  \key g \minor
  \time 2/2
  \accidentalStyle modern
}

% Each note carries a course number. The notation staves hide these numbers;
% the tablature reads the very same music, so pitches/rhythms cannot diverge.
cantusA = {
  g'2\1 bes'4\1 a'8\1 g'8\1 |       % 1
  f'2\2 d'4\2 f'4\2 |                % 2
  ees'4\2 g'8\1 f'8\2 ees'2\2~ |     % 3
  ees'4\2 d'4\2 fis'2\2 |             % 4: prepared ninth resolves
  g'2\1 d'4\2 ees'8\2 f'8\2 |        % 5
  g'4.\1 f'8\2 ees'4\2 g'4\1~ |      % 6
  g'4\1 fis'4\2 a'4\1 fis'4\2 |      % 7: 4-3 over D
  g'1\1 |                             % 8
}
mediusA = {
  bes2\3 d'2\2 |
  d'2\3 bes2\3 |
  g1\4 |
  fis2\4 a2\3 |
  bes2\3 g2\4 |
  ees2\5 g2\4 |
  fis1\4 |
  bes1\3 |
}
bassusA = {
  g,1\6 |
  bes,1\6 |
  c1\5 |
  d1\5 |
  g,1\6 |
  c2\6 c2\5 |
  d1\5 |
  g,1\6 |
}

cantusB = {
  f'4\2 bes'4\1 a'8\1 g'8\1 f'4\2 | % 9
  g'4.\1 a'8\1 bes'4\1 g'4\1 |      % 10
  a'4.\1 g'8\1 f'4\2 f'4\2~ |       % 11
  f'4\2 e'4\2 g'2\1 |                % 12: 4-3 over C
  f'2\2 a'4\1 g'8\1 f'8\2 |         % 13
  g'4\1 f'4\2 ees'4\2 bes'4\1~ |    % 14
  bes'4\1 a'4\1 c''4\1 a'4\1 |      % 15: 4-3 over F
  bes'1\1 |                          % 16
}
mediusB = {
  d'1\3 |
  bes1\3 |
  a1\3 |
  g1\4 |
  a2\3 c'2\3 |
  g1\4 |
  c'1\3 |
  d'1\3 |
}
bassusB = {
  bes,1\6 |
  ees1\5 |
  f1\5 |
  c1\5 |
  f1\5 |
  ees1\5 |
  f1\5 |
  bes,1\6 |
}

cantusC = {
  bes'4\1 a'8\1 g'8\1 fis'4\2 d'4\2 | % 17
  g'4.\1 f'8\2 ees'4\2 c'4\3 |          % 18
  d'4.\2 ees'8\2 f'4\2 d'4\2 |         % 19
  ees'2\2 d'4\2 c'4\3 |                % 20
  bes4\3 d'4\2 g'4.\1 a'8\1 |          % 21: lower answer
  g'4\1 f'8\2 ees'8\2 c'4\3 g'4\1~ |  % 22
  g'4\1 fis'4\2 a'8\1 g'8\1 fis'4\2 | % 23: 4-3, then division
  g'1\1\fermata |                       % 24
}
mediusC = {
  d'2\2 fis2\4 |
  g1\4 |
  bes1\3 |
  g2\4 fis2\4 |
  g2\4 d'2\2 |
  g1\4 |
  fis4\4 a4\3 c'2\3 |
  b1\3 |
}
bassusC = {
  g,2\6 d2\5 |
  c1\5 |
  bes,1\6 |
  c2\5 a,2\6 |
  g,1\6 |
  c1\5 |
  d1\5 |
  g,1\6\fermata |
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
  \tempo "Grave, with a gentle tread" 2 = 44
  \mark \markup \box "I"
  s1*4 \break
  s1*4 \break
  \barNumberCheck #9
  \mark \markup \box "II"
  s1*4 \pageBreak
  s1*4 \break
  \barNumberCheck #17
  \mark \markup \box "III"
  s1*4 \break
  s1*4
  \barNumberCheck #25
}

\markup \small \column {
  \line { "One lute; both notation staves at sounding pitch. Observe each repeat." }
  \line { "Tuning, low to high: G  c  f  a  d'  g'. French tab: top line = highest course; a = open." }
  \line { "Tab stems follow the upper voice; sustain lower notes for the durations shown in the score." }
  \line { \italic "Let the voices ring; keep the pulse unhurried. Small graces may be added on repeats." }
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
  \midi { \tempo 2 = 44 }
}
