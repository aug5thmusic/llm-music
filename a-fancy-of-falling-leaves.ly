\version "2.24.3"
\language "nederlands"

% A Fancy of Falling Leaves
% Original music in the manner of John Dowland; no borrowed theme.
% For ONE six-course Renaissance lute in G: G2 C3 F3 A3 D4 G4, low to high.
% Sounding pitches throughout; course 1 is the highest course.
%
% Through-composed, 32 bars of 4/4, approximately 1 minute 47 seconds.
% Bars 1-8: the point D-C-Bb | A-G-A enters successively in the cantus,
%           medius, and bassus, each two bars after the preceding entry.
% Bars 9-16: running eighth-note divisions and a suspended close on A.
% Bars 17-24: a more spacious episode through F, E, and A; 9-8 at bar 20,
%            then a 4-3 at bar 23 leads back to D minor.
% Bars 25-32: the point returns in the treble an octave below its opening;
%            a 4-3 over G in bar 28 and a final 4-3 over A in bar 31
%            lead to the major-third close on D.
%
% French tablature: top line = highest course; a = open, b = fret 1, etc.
% The letter j is omitted. The opening unaccompanied D reaches fret 7;
% the remainder stays within frets 0-5. All courses are explicitly assigned.
% Tab stems follow the upper voice. Retain the lower notes for the durations
% shown in the modern score, which separates the three voices for clarity.
% The two notation staves do not indicate two instruments.
%
% Keep a steady, quiet pulse beneath the divisions; let the entries speak
% independently. Allow the final major third to brighten the dying sound.
% MIDI uses nylon guitar as a lute substitute.
%
% Build: lilypond -o output/pdf/a-fancy-of-falling-leaves a-fancy-of-falling-leaves.ly

\header {
  title = "A Fancy of Falling Leaves"
  subtitle = "Fantasia for six-course Renaissance lute in G"
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
  \key d \minor
  \time 4/4
  \accidentalStyle modern
}

cantusA = {
  d''2\1 c''4\1 bes'4\1 |                  % 1: first statement, alone
  a'4\1 g'4\1 a'2\1 |                     % 2
  f'2\2 e'4\2 g'4\1 |                     % 3: medius enters
  f'4\2 e'4\2 f'2\2 |                     % 4
  a'2\1 e'4\2 d'4\2 |                     % 5: bassus enters
  c'4\3 d'4\2 cis'2\3 |                   % 6
  d'4\2 e'8\2 f'8\2 e'4\2 d'4\2~ |       % 7
  d'4\2 cis'4\3 e'2\2 |                   % 8: 4-3 over A
}
mediusA = {
  r1 |
  r1 |
  d'2\3 c'4\3 bes4\3 |                    % the point, one octave lower
  a4\3 g4\4 a2\3 |
  f2\4 a4\3 f4\4 |
  a4\4 bes4\3 a2\4 |
  f2\4 bes2\3 |
  a1\4 |
}
bassusA = {
  s1 |
  s1 |
  r1 |
  r1 |
  d2\5 c4\5 bes,4\6 |                     % the point, in the bass
  a,4\6 g,4\6 a,2\6 |
  d2\5 g,2\6 |
  a,1\6 |
}

cantusB = {
  f'8\2 e'8\2 d'8\2 e'8\2 f'2\2 |        % 9
  g'8\1 f'8\2 e'8\2 f'8\2 g'4\1 e'4\2 | % 10
  f'8\2 e'8\2 d'8\2 e'8\2 f'4\2 d'4\2 | % 11
  e'4\2 d'8\2 cis'8\3 e'2\2 |             % 12
  f'4\2 a'8\1 g'8\1 f'4\2 d'4\2 |        % 13
  e'4\2 g'8\1 f'8\2 e'4\2 c'4\3 |        % 14
  d'4\2 f'8\2 e'8\2 d'4\2 d'4\2~ |       % 15
  d'4\2 cis'4\3 a'2\1 |                   % 16
}
mediusB = {
  a2\3 f2\4 |
  e2\5 c'2\3 |
  f1\4 |
  a1\4 |
  f1\4 |
  g1\4 |
  bes1\3 |
  a1\4 |
}
bassusB = {
  d1\5 |
  c1\6 |
  bes,1\6 |
  a,1\6 |
  d1\5 |
  c1\5 |
  g,1\6 |
  a,1\6 |
}

cantusC = {
  a'2\1 g'4\1 f'4\2 |                     % 17
  e'4\2 f'4\2 g'2\1 |                     % 18
  f'4\2 g'8\1 f'8\2 d'4\2 f'4\2~ |       % 19
  f'4\2 e'4\2 gis'2\1 |                   % 20: prepared 9-8 over E
  a'2\1 e'4\2 g'4\1 |                     % 21
  f'2\2 a'4\1 d'4\2~ |                    % 22
  d'4\2 cis'4\3 e'2\2 |                   % 23: 4-3 over A
  d'1\2 |                                 % 24
}
mediusC = {
  c'1\3 |
  e2\5 g2\4 |
  d'2\3 a2\3 |
  gis1\4 |
  c'1\3 |
  a1\3 |
  a1\4 |
  f1\4 |
}
bassusC = {
  f1\5 |
  c1\6 |
  d1\5 |
  e1\5 |
  a,1\6 |
  d1\5 |
  a,1\6 |
  d1\5 |
}

cantusD = {
  d'2\2 c'4\3 bes4\3 |                    % 25: the point, low in the treble
  a4\3 g4\4 a2\3 |                        % 26
  f'4\2 f'8\2 e'8\2 d'4\2 c'4\3~ |       % 27
  c'4\3 b4\3 d'2\2 |                      % 28: 4-3 over G
  e'2\2 g'4\1 e'4\2 |                     % 29
  f'4\2 e'8\2 d'8\2 e'4\2 d'4\2~ |       % 30
  d'4\2 cis'4\3 e'4\2 cis'4\3 |           % 31: final 4-3
  d'1\2\fermata |                         % 32
}
mediusD = {
  f2\4 e4\5 g4\4 |
  cis1\5 |
  f1\4 |
  g1\4 |
  e2\5 c'2\3 |
  f2\4 g2\4 |
  e1\5 |
  fis1\4 |
}
bassusD = {
  bes,2\6 c4\6 g,4\6 |
  a,1\6 |
  d1\5 |
  g,1\6 |
  c1\6 |
  bes,2\6 g,2\6 |
  a,1\6 |
  d1\5\fermata |
}

cantus = { \global \cantusA \cantusB \cantusC \cantusD }
medius = { \global \mediusA \mediusB \mediusC \mediusD }
bassus = { \global \bassusA \bassusB \bassusC \bassusD }

directions = {
  \tempo "Quietly, with supple motion" 4 = 72
  \mark \markup \box "Point"
  s1*4 \break
  s1*4 \bar "||" \break
  \barNumberCheck #9
  \mark \markup \box "Divisions"
  s1*4 \pageBreak
  s1*4 \bar "||" \break
  \barNumberCheck #17
  \mark \markup \box "Echoes"
  s1*4 \break
  s1*4 \bar "||" \pageBreak
  \barNumberCheck #25
  \mark \markup \box "Return"
  s1*4 \break
  s1*4 \bar "|."
  \barNumberCheck #33
}

\markup \small \column {
  \line { "One lute; both notation staves at sounding pitch. Through-composed, without repeats." }
  \line { "Tuning, low to high: G  c  f  a  d'  g'. French tab: top line = highest course; a = open." }
  \line { "Tab stems follow the upper voice; sustain lower notes for their written durations." }
  \line { \italic "Let each entrance speak; keep the pulse quiet and the divisions flowing." }
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
        \omit Stem \omit Flag \omit Beam \omit Dots \omit Rest
        \medius
      }
      \new TabVoice {
        \voiceTwo
        \omit Stem \omit Flag \omit Beam \omit Dots \omit Rest
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
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    midiMinimumVolume = #0.55
    midiMaximumVolume = #0.75
  } <<
    \new Voice = "cantus" { \cantus }
    \new Voice = "medius" { \medius }
    \new Voice = "bassus" { \bassus }
  >>
  \midi { \tempo 4 = 72 }
}
