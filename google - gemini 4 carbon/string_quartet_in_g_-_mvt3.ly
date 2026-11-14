\version "2.24.0"

\header {
  title = "Menuetto & Trio in D Major"
  subtitle = "for String Quartet (in the Style of W. A. Mozart)"
  composer = "Style of W. A. Mozart"
  tagline = ##f
}

\paper {
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  ragged-last-bottom = ##f
}

hideEndOfLineKeyChange = {
  \once \override Staff.KeySignature.break-visibility = #end-of-line-invisible
  \once \override Staff.KeyCancellation.break-visibility = #end-of-line-invisible
}

violinOne = {
  \clef treble
  \key d \major
  \time 3/4
  \tempo "Menuetto. Allegretto"

  % --- MENUETTO ---
  \repeat volta 2 {
    d''4\f a'4.(\trill gis'16 a') |
    fis''4-. d''-. r |
    g''4(\p fis''8 e'' d'' cis'') |
    e''8( d'') d''4-. r |
    a'4(\p b'8 cis'' d'' e'') |
    fis''4(\< gis'' a'') |
    fis''8(\f d'') cis''4( b')\trill |
    a'4-. a'-. r |
  }

  \repeat volta 2 {
    R2. |
    d''4-.\f b'-. r |
    a''4(\p g''8 fis'' e'' dis'') |
    fis''8( e'') e''4-. r |
    cis''4(\p d'' e'') |
    f''2(\< e''4) |
    g''4(\f e'' cis'') |
    cis''4-. cis''-. r |
    d''4\f a'4.(\trill gis'16 a') |
    fis''4-. d''-. r |
    g''4(\p fis''8 e'' d'' cis'') |
    e''8( d'') d''4-. r |
    d''4(\p e''8 fis'' g'' a'') |
    b''4(\< cis''' d''') |
    b''8(\f g'') fis''4( e'')\trill |
    d''4-. d''-. r |
  }

  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark \markup { \italic "Fine" }
  \break

  % --- TRIO ---
  \hideEndOfLineKeyChange
  \key g \major
  \tempo "Trio"

  \repeat volta 2 {
    b'4(\p c''8 b' a' g') |
    e''4( d'' b') |
    c''8( a' fis' d' e' fis') |
    a'4( g') r |
    d''4(\< e''8 d'' cis'' b') |
    g''4(\mf fis'' d'') |
    b''8(\> g'' fis'' d'' e'' cis'') |
    d''4\p d'' r |
  }

  \repeat volta 2 {
    r4 fis''2(\p |
    e''4) r r |
    e''4(\mp f''8 e'' d'' b') |
    d''8( c'') c''4 r |
    c''4(\p d''8 c'' b' a') |
    fis''4(\< g''8 fis'' e'' d'') |
    a''4(\mf\> fis'' d'') |
    c''8( b' d'' c'' b' a')\! |
    b'4(\p c''8 b' a' g') |
    e''4( d'' b') |
    c''8( a' fis' d' e' fis') |
    a'4( g') r |
    g''4(\< a''8 g'' fis'' e'') |
    c'''4(\mf b'' g'') |
    e''8(\> c'' b' g' a' fis') |
    g'4\p g' r |
  }

  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark \markup { \italic "Menuetto da capo" }
}

violinTwo = {
  \clef treble
  \key d \major
  \time 3/4

  % --- MENUETTO ---
  \repeat volta 2 {
    fis'4\f fis'2 |
    a'4-. fis'-. r |
    b'2(\p a'4) |
    a'4 a'-. r |
    a'4(\p gis'8 a' b' cis'') |
    d''4(\< d'' cis'') |
    b'4\f a' gis' |
    a'4-. e'-. r |
  }

  \repeat volta 2 {
    R2. |
    fis'4-.\f d'-. r |
    e'2(\p fis'4) |
    g'4 g'-. r |
    g'4(\p fis' g') |
    gis'2(\< a'4) |
    g'2.\f |
    g'4-. g'-. r |
    fis'4\f fis'2 |
    a'4-. fis'-. r |
    b'2(\p a'4) |
    a'4 a'-. r |
    d''4(\p cis''8 d'' e'' fis'') |
    g''4(\< g'' fis'') |
    e''4\f d'' cis'' |
    d''4-. a'-. r |
  }

  % --- TRIO ---
  \hideEndOfLineKeyChange
  \key g \major

  \repeat volta 2 {
    d'4(\p e'8 d' c' b) |
    g'2. |
    fis'4( d' c') |
    c'4( b) r |
    fis'4(\< g'8 fis' e' fis') |
    d''2.\mf |
    d''4(\> d'' a') |
    a'4\p a' r |
  }

  \repeat volta 2 {
    r4 a'2(\p |
    g'4) r r |
    r4 b'2(\p |
    a'4) a' r |
    a'2.\p |
    a'4(\< b' c'') |
    c''4(\mf\> a' fis') |
    fis'4\! r r |
    d'4(\p e'8 d' c' b) |
    g'2. |
    fis'4( d' c') |
    c'4( b) r |
    b'4(\< c''8 b' a' b') |
    g''2.\mf |
    g'4(\> g' d') |
    d'4\p d' r |
  }
}

viola = {
  \clef alto
  \key d \major
  \time 3/4

  % --- MENUETTO ---
  \repeat volta 2 {
    a4\f d'2 |
    d'4-. a-. r |
    d'4(\p e' g') |
    fis'4 fis'-. r |
    e'4(\p e' g') |
    fis'4(\< e' e') |
    fis'4\f e' d' |
    cis'4-. cis'-. r |
  }

  \repeat volta 2 {
    d'4\f d'4( cis') |
    d'4-. b-. r |
    a4(\p b a) |
    g4 g-. r |
    e'4(\p d' cis') |
    d'2(\< cis'4) |
    e'2.\f |
    e'4-. e'-. r |
    d'4\f d'2 |
    d'4-. a-. r |
    d'4(\p e' g') |
    fis'4 fis'-. r |
    a'4(\p a' c'') |
    b'4(\< a' a') |
    b'4\f a' g' |
    fis'4-. fis'-. r |
  }

  % --- TRIO ---
  \hideEndOfLineKeyChange
  \key g \major

  \repeat volta 2 {
    g2.\p |
    c'4( b2) |
    a2. |
    g4 g r |
    a2.\< |
    b4(\mf a2) |
    b4(\> a g) |
    fis4\p fis' r |
  }

  \repeat volta 2 {
    r4 dis'2(\p |
    e'4) r r |
    r4 d'2(\p |
    c'4) c' r |
    fis2(\p c'4) |
    c'4(\< b a) |
    c'2.\mf\> |
    a4\! r r |
    g2.\p |
    c'4( b2) |
    a2. |
    g4 g r |
    d'2.\< |
    e'4(\mf d'2) |
    e'4(\> d' c') |
    b4\p b r |
  }
}

cello = {
  \clef bass
  \key d \major
  \time 3/4

  % --- MENUETTO ---
  \repeat volta 2 {
    d4\f fis a |
    d4-. d-. r |
    b,4(\p g, a,) |
    d4 d-. r |
    cis4(\p b, a,) |
    d4(\< b, cis) |
    d4\f e e, |
    a,4-. a-. r |
  }

  \repeat volta 2 {
    b4\f fis4.(\trill eis16 fis) |
    b4-. b,-. r |
    c4(\p b, b,) |
    e4 e,-. r |
    a,2.\p ~ |
    a,2.\< |
    a,4(\f cis e) |
    a4-. a,-. r |
    d4\f fis a |
    d4-. d-. r |
    b,4(\p g, a,) |
    d4 d-. r |
    fis4(\p e d) |
    g4(\< e fis) |
    g4\f a a, |
    d4-. d,-. r |
  }

  % --- TRIO ---
  \hideEndOfLineKeyChange
  \key g \major

  \repeat volta 2 {
    g,2.\p ~ |
    g,2. |
    d2. |
    g,4 g r |
    d2.\< ~ |
    d2.\mf |
    g4(\> a a,) |
    d4\p d, r |
  }

  \repeat volta 2 {
    b4(\mp c'8 b a fis) |
    a8( g) g4 r |
    r4 gis2(\p |
    a4) a, r |
    d2.\p ~ |
    d2.\< ~ |
    d2.\mf\> |
    d4\! r r |
    g,2.\p ~ |
    g,2. |
    d2. |
    g,4 g r |
    g2.\< ~ |
    g2.\mf |
    c4(\> d d,) |
    g,4\p g, r |
  }
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Violino I"
      shortInstrumentName = "Vl. I"
      midiInstrument = "violin"
    } \violinOne

    \new Staff \with {
      instrumentName = "Violino II"
      shortInstrumentName = "Vl. II"
      midiInstrument = "violin"
    } \violinTwo

    \new Staff \with {
      instrumentName = "Viola"
      shortInstrumentName = "Vla."
      midiInstrument = "viola"
    } \viola

    \new Staff \with {
      instrumentName = "Violoncello"
      shortInstrumentName = "Vc."
      midiInstrument = "cello"
    } \cello
  >>

  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }

  \midi {
    \tempo 4 = 126
  }
}