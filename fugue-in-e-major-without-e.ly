\version "2.26.0"
\language "nederlands"

% THE ABSENT TONIC -- original organ fugue in three voices, 48 measures.
% All sounding pitches are absolute; c' is middle C.
% E major is implied by its four-sharp signature, A natural, and B7 resolving
% to G sharp / B. The tonic root is deliberately absent from every voice.
% The e in the key declaration is metadata, never a sounding note.
% No trills, transpositions, grace notes, or ornaments add hidden pitches.
%
% SUBJECT: gis4 b8 cis' dis'4 b | cis'8 b gis fis gis4 b
% REAL ANSWER: dis4 fis8 gis ais4 fis | gis8 fis dis cis dis4 fis
% The answer is an exact fifth transposition in pitch class.
%
% FORM (S = subject; A = real answer)
%  1-6   Exposition: left hand S, right hand A, pedal S.
%  7-10  Episode, working towards B through the subject's falling tail.
% 11-14  Left hand A; right hand S, restoring A natural.
% 15-18  Episode: subdominant colour and return to B7.
% 19-22  Pedal A; right hand S.
% 23-26  Sequential episode, touching F sharp minor and A major.
% 27-30  Left hand S; right hand A.
% 31-34  Episode, with the falling tail and changing bass.
% 35-36  Right hand S.
% 37-40  Retransition and dominant pedal.
% 41-44  Stretto: right hand S at 41.1, left hand S at 42.2.
% 45-48  Subject-head recall and B7 -> rootless tonic close.
%
% Registration: manuals 8' + 4'; pedal 16' + 8'; no manual-to-pedal coupler.
% Use a light, clear attack; sustain written values without romantic rubato.
% Build: lilypond -o output/pdf/fugue-in-e-major-without-e fugue-in-e-major-without-e.ly

\header {
  title = "The Absent Tonic"
  subtitle = "Fugue in E major, without E"
  subsubtitle = "for organ, in three voices"
  composer = "Original composition"
  tagline = ##f
}

#(set-global-staff-size 17)

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 13\mm
  indent = 17\mm
  short-indent = 9\mm
  ragged-last-bottom = ##f
  system-system-spacing.basic-distance = #17
  score-markup-spacing.basic-distance = #10
  print-page-number = ##t
}

global = {
  \key e \major
  \time 4/4
}

structure = {
  \tempo "Allegro moderato" 4 = 84
  \mark \markup \small \italic "Exposition"
  s1*4 \break
  s1*4 \break
  s1*2
  \mark \markup \small \italic "Middle entries"
  s1*2 \break
  s1*4 \break
  s1*4 \break
  s1*2
  \mark \markup \small \italic "Episode"
  s1*2 \break
  s1*4 \break
  s1*4 \break
  s1*4 \break
  \mark \markup \small \italic "Towards the dominant"
  s1*4 \break
  \mark \markup \small \italic "Stretto: five beats apart"
  s1*4 \break
  \mark \markup \small \italic "Coda"
  s1*4
  \bar "|."
}

rightHand = \absolute {
  \clef treble
  R1*2 |
  % 3-4: real answer.
  dis''4 fis''8 gis'' ais''4 fis'' |
  gis''8 fis'' dis'' cis'' dis''4 fis'' |
  \barNumberCheck #5
  b'8 cis'' dis''4 fis''8 dis'' fis''4 |
  a'4 b'8 a' gis'4 fis'8 a' |
  b'4 gis'8 a' b'4 cis''8 dis'' |
  fis''8 dis'' cis'' b' ais'4 fis'' |
  gis''8 fis'' dis'' cis'' dis''4 cis'' |
  b'4 cis''8 dis'' fis''4 dis'' |
  \barNumberCheck #11
  b'8 cis'' dis''4 cis''8 b' ais'4 |
  b'4 fis'8 gis' b'4 dis'' |
  % 13-14: subject.
  gis'4 b'8 cis'' dis''4 b' |
  cis''8 b' gis' fis' gis'4 b' |
  cis''4 a'8 b' cis''4 fis'' |
  dis''8 cis'' b' a' gis'4 b' |
  a'4 cis''8 b' a'4 fis' |
  fis'8 gis' a' b' dis''4 b'8 dis'' |
  \barNumberCheck #19
  fis''8 gis'' ais''4 cis''8 b' ais'4 |
  b'4 fis''8 gis'' fis''4 dis'' |
  % 21-22: subject.
  gis'4 b'8 cis'' dis''4 b' |
  cis''8 b' gis' fis' gis'4 b' |
  cis''8 b' a' gis' a'4 cis'' |
  b'8 a' gis' fis' gis'4 b' |
  a'8 gis' fis' gis' a'4 cis'' |
  dis''4 cis''8 b' a'4 fis' |
  \barNumberCheck #27
  b'8 a' gis'4 fis'8 gis' a'4 |
  a'4 b'8 a' gis'4 fis' |
  % 29-30: real answer.
  dis''4 fis''8 gis'' ais''4 fis'' |
  gis''8 fis'' dis'' cis'' dis''4 fis'' |
  gis''4 fis''8 dis'' cis''4 b' |
  cis''8 b' a' gis' fis'4 a' |
  gis'8 fis' gis' a' b'4 cis'' |
  dis''8 cis'' b' a' fis'4 a' |
  \barNumberCheck #35
  % 35-36: subject.
  gis'4 b'8 cis'' dis''4 b' |
  cis''8 b' gis' fis' gis'4 b' |
  cis''4 a'8 b' cis''4 dis'' |
  fis''4 dis''8 cis'' b'4 a' |
  gis'8 a' b' cis'' dis''4 fis'' |
  dis''4 cis''8 b' a'4 fis' |
  \barNumberCheck #41
  % 41-42: subject; the next entry begins before this one ends.
  gis'4 b'8 cis'' dis''4 b' |
  cis''8 b' gis' fis' gis'4 b' |
  gis'4 ais'8 b' dis''4 b' |
  fis''8 dis'' cis'' b' a'4 fis' |
  \barNumberCheck #45
  gis'4 b'8 cis'' dis''4 b' |
  cis''8 b' a' gis' fis'4 a' |
  b'2 a'2 |
  gis'1\fermata |
  \barNumberCheck #49
}

leftHand = \absolute {
  \clef bass
  % 1-2: subject.
  gis4 b8 cis' dis'4 b |
  cis'8 b gis fis gis4 b |
  b8 cis' dis'4 cis'8 b ais4 |
  b4 fis8 gis b4 dis' |
  \barNumberCheck #5
  gis4 fis4 dis8 fis dis4 |
  cis'4 b8 dis' b4 dis' |
  gis2 fis4 dis |
  ais4 fis4 fis4 ais8 b |
  b4 ais8 gis fis4 ais |
  dis'4 ais4 b4 ais |
  \barNumberCheck #11
  % 11-12: real answer, a register higher than the opening subject.
  \clef treble
  dis'4 fis'8 gis' ais'4 fis' |
  gis'8 fis' dis' cis' dis'4 fis' |
  \clef bass
  b8 a gis4 fis8 gis dis4 |
  a4 b8 a b4 gis |
  cis'8 b cis'4 a4 fis'8 dis' |
  fis'4 dis'8 fis' b4 gis |
  cis'8 b a4 cis'8 b a4 |
  dis4 fis4 a8 gis fis4 |
  \barNumberCheck #19
  dis'4 ais4 cis'4 fis |
  b8 cis' b4 b4 ais |
  b8 a gis4 fis8 gis a4 |
  a4 b8 a b4 gis |
  a4 a8 b cis'4 a |
  dis'4 b8 a b4 gis |
  \clef treble
  cis'4 dis'8 cis' fis'4 cis' |
  b8 dis' fis'4 dis'4 a |
  \barNumberCheck #27
  % 27-28: subject.
  \clef bass
  gis4 b8 cis' dis'4 b |
  cis'8 b gis fis gis4 b |
  b8 cis' dis'4 cis'8 b ais4 |
  b4 fis8 gis b4 ais |
  b4 ais8 b cis'4 dis' |
  a4 cis'8 b dis'4 cis' |
  b4 dis'8 cis' b4 ais |
  fis4 gis8 fis dis'4 fis |
  \barNumberCheck #35
  b8 a gis4 fis8 gis dis'4 |
  a4 b8 a b4 gis |
  fis4 fis8 gis cis'4 b8 a |
  dis'4 fis'8 dis' a4 dis' |
  b4 a4 gis8 fis a4 |
  fis'8 dis' fis'4 dis'2 |
  \barNumberCheck #41
  b8 a gis4 fis8 gis a4 |
  % Complete subject starts at 42.2 and finishes at the end of 44.1.
  r4 gis4 b8 cis' dis'4 |
  b4 cis'8 b gis fis gis4 |
  b4 ais8 b dis'4 a |
  \barNumberCheck #45
  b8 a gis4 fis8 dis' a4 |
  a4 cis'8 b dis'2 |
  fis'2 dis'2 |
  b1\fermata |
  \barNumberCheck #49
}

pedal = \absolute {
  \clef bass
  R1*4 |
  \barNumberCheck #5
  % 5-6: subject, two octaves below the right-hand version.
  gis,4 b,8 cis dis4 b, |
  cis8 b, gis, fis, gis,4 b, |
  gis,2 dis,2 |
  fis,1 |
  b,2 fis,2 |
  b,4 fis, dis, fis, |
  \barNumberCheck #11
  b,2 fis,2 |
  b,2 b,4 a, |
  gis,2 b,2 |
  fis,4 b, gis,2 |
  a,2 fis,2 |
  b,1 |
  fis,1 |
  b,1 |
  \barNumberCheck #19
  % 19-20: real answer.
  dis,4 fis,8 gis, ais,4 fis, |
  gis,8 fis, dis, cis, dis,4 fis, |
  gis,2 b,2 |
  fis,4 b, gis,2 |
  fis,2 a,2 |
  b,2 gis,2 |
  a,2 fis,2 |
  b,1 |
  \barNumberCheck #27
  gis,2 b,2 |
  fis,4 b,2. |
  b,2 fis,2 |
  b,1 |
  b,4 dis fis, b, |
  fis,2 b,4 fis, |
  gis,2 gis,4 fis, |
  b,1 |
  \barNumberCheck #35
  gis,2 b,2 |
  fis,4 b, gis,2 |
  a,2 fis,2 |
  b,1~ |
  b,1~ |
  b,1 |
  \barNumberCheck #41
  gis,2 b,2 |
  a,4 gis,2. |
  gis,4 fis, gis,2 |
  dis,4 fis, b,2 |
  \barNumberCheck #45
  gis,2 b,2 |
  fis,2 b,2~ |
  b,1 |
  gis,1\fermata |
  \barNumberCheck #49
}

organ = <<
  \new PianoStaff \with {
    instrumentName = "Manuals"
    shortInstrumentName = "Man."
  } <<
    \new Staff = "upper" \with { midiInstrument = "church organ" } <<
      \global
      \new Voice { << \structure \rightHand >> }
    >>
    \new Staff = "lower" \with { midiInstrument = "church organ" } <<
      \global
      \new Voice { \leftHand }
    >>
  >>
  \new Staff = "pedal" \with {
    instrumentName = "Pedal"
    shortInstrumentName = "Ped."
    midiInstrument = "church organ"
  } <<
    \global
    \new Voice { \pedal }
  >>
>>

\score {
  \organ
  \layout {
    \context {
      \Score
      \override BarNumber.break-visibility = ##(#f #f #t)
      \override MetronomeMark.font-size = #0
    }
  }
  \midi { \tempo 4 = 84 }
}

\markup {
  \column {
    \vspace #0.5
    \line { \small \italic "Manuals: clear 8' + 4'; pedal: 16' + 8'. Keep the three lines distinct." }
    \line { \small \italic "The final G-sharp / B sonority leaves the tonic root to the imagination." }
  }
}
