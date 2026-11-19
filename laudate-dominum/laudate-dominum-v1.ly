\version "2.24.0"
\language "nederlands"

% LAUDATE DOMINUM -- motet for double choir (two four-voice choirs), in the
% style of Giovanni Pierluigi da Palestrina. A collaboration: Choir I by
% GPT-6 Astra, Choir II by Claude Opus 5.5; the closing Amen by both.
% The plan, bar map and hand-over rule are in working-files/v1/plan.md.
%
% Text: Psalm 116 (Laudate Dominum omnes gentes) with the Gloria Patri.
% F with one flat (Mode 5/6 with B-flat). Original note values: the semibreve
% is the tactus, with a breve to the bar (cut C, 4/2). 53 bars.
% Musica ficta is printed above the note (\ficta).
% Written without double angle brackets: \simultaneous { } is used instead.
%
% Version 1 (archived). Compile here: lilypond -dno-point-and-click laudate-dominum-v1.ly

% Defined before the choir files, which use it.
ficta = { \once \set suggestAccidentals = ##t }

\include "working-files/v1/choir1.ly"
\include "working-files/v1/choir2.ly"

\header {
  title = "Laudate Dominum"
  subtitle = "Motet for double choir"
  subsubtitle = "Psalm 116 with the Gloria Patri"
  composer = "Choir I: GPT-6 Astra · Choir II: Claude Opus 5.5"
  poet = "In the style of Giovanni Pierluigi da Palestrina"
  tagline = ##f
}

#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 13\mm
  indent = 22\mm
  short-indent = 10\mm
  ragged-last-bottom = ##f
  system-system-spacing.basic-distance = #16
  system-system-spacing.minimum-distance = #12
  system-system-spacing.padding = #3
  score-markup-spacing.basic-distance = #12
  print-page-number = ##t
  system-separator-markup = \slashSeparator
}

\layout {
  \context {
    \Score
    \override BarNumber.break-visibility = ##(#f #f #t)
  }
  \context {
    \Staff
    \RemoveEmptyStaves
  }
  \context {
    \Voice
    \consists "Ambitus_engraver"
    \override Ambitus.X-offset = #-1
  }
  \context {
    \Lyrics
    \override LyricText.font-size = #-0.5
    \override LyricHyphen.minimum-distance = #0.8
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #0.6
  }
}

% Alla breve with a breve to the bar, shown with the cut-C sign.
cutTime = {
  \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \once \override Staff.TimeSignature.text = \markup \musicglyph "timesig.C22"
  \time 4/2
}

global = {
  \key f \major
  \cutTime
  \set Score.tempoHideNote = ##t
}

structure = {
  s\breve*53 \bar "|."
}

% MIDI only: a broadening over the last three bars.
midiTempi = {
  \tempo 2 = 88
  s\breve*50
  \tempo 2 = 80
  s\breve
  \tempo 2 = 70
  s\breve
  \tempo 2 = 58
  s\breve
}

\score {
  \simultaneous {
    \new ChoirStaff \with { instrumentName = \markup \bold "I" shortInstrumentName = \markup \bold "I" } \simultaneous {
      \new Staff \with { instrumentName = "Cantus" shortInstrumentName = "C." }
        \new Voice = "cIcantusV" \simultaneous { \clef "treble" \global \structure \cIcantus }
      \new Lyrics \lyricsto "cIcantusV" \cIcantusText
      \new Staff \with { instrumentName = "Altus" shortInstrumentName = "A." }
        \new Voice = "cIaltusV" \simultaneous { \clef "treble" \global \structure \cIaltus }
      \new Lyrics \lyricsto "cIaltusV" \cIaltusText
      \new Staff \with { instrumentName = "Tenor" shortInstrumentName = "T." }
        \new Voice = "cItenorV" \simultaneous { \clef "treble_8" \global \structure \cItenor }
      \new Lyrics \lyricsto "cItenorV" \cItenorText
      \new Staff \with { instrumentName = "Bassus" shortInstrumentName = "B." }
        \new Voice = "cIbassusV" \simultaneous { \clef "bass" \global \structure \cIbassus }
      \new Lyrics \lyricsto "cIbassusV" \cIbassusText
    }
    \new ChoirStaff \with { instrumentName = \markup \bold "II" shortInstrumentName = \markup \bold "II" } \simultaneous {
      \new Staff \with { instrumentName = "Cantus" shortInstrumentName = "C." }
        \new Voice = "cIIcantusV" \simultaneous { \clef "treble" \global \structure \cIIcantus }
      \new Lyrics \lyricsto "cIIcantusV" \cIIcantusText
      \new Staff \with { instrumentName = "Altus" shortInstrumentName = "A." }
        \new Voice = "cIIaltusV" \simultaneous { \clef "treble" \global \structure \cIIaltus }
      \new Lyrics \lyricsto "cIIaltusV" \cIIaltusText
      \new Staff \with { instrumentName = "Tenor" shortInstrumentName = "T." }
        \new Voice = "cIItenorV" \simultaneous { \clef "treble_8" \global \structure \cIItenor }
      \new Lyrics \lyricsto "cIItenorV" \cIItenorText
      \new Staff \with { instrumentName = "Bassus" shortInstrumentName = "B." }
        \new Voice = "cIIbassusV" \simultaneous { \clef "bass" \global \structure \cIIbassus }
      \new Lyrics \lyricsto "cIIbassusV" \cIIbassusText
    }
  }
  \layout { }
}

% MIDI: eight voices on separate channels.
\score {
  \simultaneous {
    \new Staff \with { midiInstrument = "choir aahs" } \new Voice \simultaneous { \global \structure \midiTempi \cIcantus }
    \new Staff \with { midiInstrument = "choir aahs" } \new Voice \simultaneous { \global \structure \cIaltus }
    \new Staff \with { midiInstrument = "choir aahs" } \new Voice \simultaneous { \global \structure \cItenor }
    \new Staff \with { midiInstrument = "choir aahs" } \new Voice \simultaneous { \global \structure \cIbassus }
    \new Staff \with { midiInstrument = "choir aahs" } \new Voice \simultaneous { \global \structure \cIIcantus }
    \new Staff \with { midiInstrument = "choir aahs" } \new Voice \simultaneous { \global \structure \cIIaltus }
    \new Staff \with { midiInstrument = "choir aahs" } \new Voice \simultaneous { \global \structure \cIItenor }
    \new Staff \with { midiInstrument = "choir aahs" } \new Voice \simultaneous { \global \structure \cIIbassus }
  }
  \midi { }
}

\markup {
  \fill-line {
    \null
    \column {
      \line { \italic "Laudate Dominum omnes gentes:" }
      \line { \italic "laudate eum omnes populi." }
      \line { \italic "Quoniam confirmata est super nos misericordia eius:" }
      \line { \italic "et veritas Domini manet in aeternum." }
      \line { \italic "Gloria Patri, et Filio, et Spiritui Sancto." }
      \line { \italic "Sicut erat in principio, et nunc, et semper," }
      \line { \italic "et in saecula saeculorum. Amen." }
    }
    \hspace #3
    \column {
      \line { "Praise the Lord, all you nations;" }
      \line { "praise him, all you peoples." }
      \line { "For his mercy is confirmed upon us," }
      \line { "and the truth of the Lord remains for ever." }
      \line { "Glory be to the Father, and to the Son, and to the Holy Spirit," }
      \line { "as it was in the beginning, is now, and ever shall be," }
      \line { "world without end. Amen." }
    }
    \null
  }
}
