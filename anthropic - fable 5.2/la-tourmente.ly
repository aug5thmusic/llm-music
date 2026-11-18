\version "2.26.0"

% ---------------------------------------------------------------------------
%  La Tourmente -- Etude de concert for solo piano, in the style of Liszt
%
%  Form (one motto, transformed throughout):
%    1-8    Lento, quasi recitativo   motto in bare octaves, cadenza
%    9-24   Allegro agitato           motto as stormy octave theme (C-sharp minor)
%    25-40  Andante cantabile         motto as nocturne (D-flat major)
%    41-48  Maestoso, grandioso       motto as apotheosis
%    49-60  Presto furioso            coda
% ---------------------------------------------------------------------------

#(set-global-staff-size 18)

\header {
  title = "La Tourmente"
  subtitle = "Étude de concert"
  composer = "in the style of Franz Liszt"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 13\mm
  right-margin = 13\mm
}

% ===========================================================================
%  RIGHT HAND
% ===========================================================================
upper = {
  \clef bass
  \key cis \minor
  \time 4/4
  \tempo "Lento, quasi recitativo" 4 = 50

  % ---- Introduction: bars 1-8 ---------------------------------------------
  \relative c' {
    <gis gis'>2~->\ff^\markup \italic "pesante"
      <gis gis'>8 <e e'> <cis cis'>8. <bis bis'>16 |
    <a' a'>2->\fermata <gis gis'>4 r |
    \clef treble
    r4 gis'8.(\p^\markup \italic "dolente" a16 gis4) fis8( e) |
    e4( dis2) r4 |
    <cis cis'>2~->\ff <cis cis'>8 <a a'> <fis fis'>8. <eis eis'>16 |
    <d' d'>2->\fermata <cis cis'>4 r |
    r4 cis'8.(\p d16 cis4) b8( a) |

    % bar 8: cadenza on the dominant ninth (an unsigned 9/4 bar)
    \omit Staff.TimeSignature
    \time 9/4
    \magnifyMusic 0.8 {
      \clef bass
      bis,,32[\<^\markup \italic "quasi cadenza, veloce" dis fis a]
      \clef treble
      bis32[ dis fis a] bis[ dis fis a]
      \ottava 1
      bis32[ dis fis a]\!
      gis32[\> g fis f e dis] d[ cis c b bes a]
      \ottava 0
      \bar ""
      gis32[ g fis f e dis] d[ cis c b bes a]\!
      gis16[^\markup \italic "rit." a gis fisis] gis[ a gis fisis]
    }
    gis2\fermata |
    \bar "||"
  }

  % ---- Allegro: bars 9-16, theme in octaves -------------------------------
  \time 4/4
  \tempo "Allegro agitato ed appassionato" 4 = 132
  \relative c'' {
    <gis gis'>4.->\f <e e'>8 <cis cis'>4.-> <bis bis'>8 |
    <a' a'>2-> <gis gis'>4 r8 <gis gis'>8 |
    <cis cis'>4.-> <a a'>8 <fis fis'>4.-> <eis eis'>8 |
    <d' d'>2-> <cis cis'>4 <bis bis'>4 |
    \ottava 1
    <e e'>4.->\cresc <dis dis'>8 <e e'>4.-> <gis gis'>8 |
    <fis fis'>4.-> <e e'>8 <fis fis'>4.-> <a a'>8 |
    <gis gis'>2->\ff <e e'>4. <cis cis'>8 |
    <dis fis bis dis>2->\sf \ottava 0 r2 |
  }

  % ---- bars 17-20: theme in the bass, cascades above ----------------------
  \relative c''' {
    \ottava 1
    gis'16\ff^\markup \italic "con bravura" e cis gis  e' cis gis e
      cis' gis e cis  dis fis bis dis |
    a'16 fis cis a  fis' cis a fis  e' cis gis e  cis' gis e cis |
    a''16 fis cis a  fis' cis a fis  cis' a fis cis  eis gis b cis |
    a'16 fis d a  fis' d a fis  e' cis gis e  dis fis gis bis |
    \ottava 0
  }

  % ---- bars 21-22: interlocking chromatic octaves -------------------------
  % (the hands alternate: the left hand has the notes this hand rests on)
  \relative c {
    \clef bass
    r16[ <d d'>\cresc^\markup \italic "martellato" r <e e'>]
      r16[ <fis fis'> r <gis gis'>]
    \clef treble
    r16[ <ais ais'> r <bis bis'>] r[ <d d'> r <e e'>] |
    r16[ <fis fis'> r <gis gis'>] r[ <ais ais'> r <bis bis'>]
    \ottava 1
    r16[ <d d'> r <e e'>] r[ <fis fis'> r <gis gis'>] |
  }

  % ---- bar 23: arrival on the dominant ------------------------------------
  \relative c'' {
    <gis' bis dis fis gis>2->\fff
    \ottava 0 <gis, bis dis fis gis>2->\fermata |
  }

  % ---- bar 24: enharmonic turn, cadenza (an unsigned 21/16 bar) -----------
  \bar "||"
  \key des \major
  \time 21/16
  \relative c'''' {
    \magnifyMusic 0.8 {
      \ottava 1
      bes16[\pp^\markup \italic "dolcissimo, quasi cadenza" as ges es c]
      \ottava 0
      bes16[ as ges es c] bes[ as ges es c]
    }
    bes8^\markup \italic "rall." as4\fermata |
    \bar "||"
  }

  % ---- Andante: bars 25-32, the motto as a nocturne -----------------------
  \time 4/4
  \tempo "Andante cantabile" 4 = 58
  \relative c'' {
    as'2(\p^\markup \italic "cantando, con intimo sentimento" f4. des8) |
    c2( bes'4) as |
    bes2( ges4. es8) |
    d2( c'4) bes |
    ges'2(\< f4 es) |
    es4(\> des2) c4\! |
    des2~\p des8 f,( as des) |
    f4.( es8)
      des32(\<^\markup \italic "leggiero" c bes as ges f es des
      c bes as ges as bes c es) |
  }

  % ---- bars 33-40: restatement in full chords -----------------------------
  \relative c'' {
    <as des f as>2\mf^\markup \italic "con passione"
      <f as des f>4. <des f as des>8 |
    <c es ges c>2 <bes' es ges bes>4 <as c es as> |
    <bes es ges bes>2 <ges bes es ges>4. <es ges bes es>8 |
    <d f as d>2 <c' f as c>4 <bes d f bes> |
    <ges' bes des ges>2\f\< <f beses des f>4 <es ges beses es> |
    <es as es'>4 <des f as des>2 <c es ges c>4\! |
    <cis e a cis>2\ff^\markup \italic "allargando"
      \ottava 1 <e a cis e>2 |
    <g a cis e g>2\< <as c es ges as>2 |
    \ottava 0
  }

  % ---- Grandioso: bars 41-48 ----------------------------------------------
  \tempo "Maestoso, grandioso" 4 = 66
  \relative c'' {
    <as des f as>4.->\fff <f as des f>8 <des f as des>4.-> <c es as c>8 |
    <bes' des ges bes>2-> <as des f as>4 r8 <as des f as>8 |
    <bes es ges bes>4.-> <ges bes es ges>8 <es ges bes es>4.-> <d f bes d>8 |
    <ces' es as ces>2-> <bes es ges bes>4 r8 <bes es ges bes>8 |
    \ottava 1
    <des ges bes des>4.-> <c c'>8 <des ges bes des>4.-> <f bes des f>8 |
    <es ges bes es>4.-> <des des'>8 <es ges bes es>4.-> <ges bes es ges>8 |
    <as des f as>2-> <f as des f>4. <des f as des>8 |
    \ottava 0
    <es ges c es>2->\sf
      \tuplet 3/2 { <d, d'>8^\markup \italic "precipitato" <es es'> <e e'> }
      \omit TupletNumber
      \tuplet 3/2 { <f f'>8 <ges ges'> <g g'> } |
    \undo \omit TupletNumber
  }

  % ---- Presto: bars 49-52 -------------------------------------------------
  \tempo "Presto furioso" 4 = 160
  \relative c' {
    \grace s8
    des16\ff f as des  f as des f  des as f des  as f des as |
    bes'16 des ges bes  des ges des bes  as, des f as  des as f des |
    es,16 ges bes es  ges bes es ges  es bes ges es  bes f d bes |
    es16 as ces es  as ces as es  bes es ges bes  es bes ges es |
  }

  % ---- bars 53-54: interlocking chromatic octaves -------------------------
  \relative c {
    \clef bass
    r16[ <des des'>\cresc^\markup \italic "martellato" r <es es'>]
      r16[ <f f'> r <g g'>]
    \clef treble
    r16[ <a a'> r <b b'>] r[ <des des'> r <es es'>] |
    r16[ <f f'> r <g g'>] r[ <a a'> r <b b'>]
    \ottava 1
    r16[ <des des'> r <es es'>] r[ <f f'> r <g g'>] |
  }

  % ---- bars 55-60: final cadence ------------------------------------------
  \relative c''' {
    <as des f as>2->\fff <ges as c es ges>2-> |
    <f as des f>4-> \ottava 0
      as,16 des f des  f as des as  \ottava 1 des f as f |
    <des f as des>4-> \ottava 0 r4 <cis, e a cis>2-> |
    <cis fis a cis>1-> |
    <des f as des>1\fermata |
    \clef bass
    <des,, des'>4-> r4 r2\fermata
    \bar "|."
  }
}

% ===========================================================================
%  LEFT HAND
% ===========================================================================
lower = {
  \clef bass
  \key cis \minor
  \time 4/4

  % ---- Introduction: bars 1-8 ---------------------------------------------
  \relative c, {
    <gis gis'>2~-> <gis gis'>8 <e e'> <cis cis'>8. <bis bis'>16 |
    <a' a'>2->\fermata <gis gis'>4 r |
    <cis gis' e'>1\arpeggio |
    <gis' dis' fis bis>1\arpeggio |
    <cis, cis'>2~-> <cis cis'>8 <a a'> <fis fis'>8. <eis eis'>16 |
    <d' d'>2->\fermata <cis cis'>4 r |
    <fis cis' a'>1\arpeggio |
    \omit Staff.TimeSignature
    \time 9/4
    <gis, gis'>1*9/4 |
  }

  % ---- Allegro: bars 9-16 -------------------------------------------------
  \time 4/4
  \relative c, {
    cis16 gis' e' gis  cis gis e gis,  cis, gis' e' gis  cis gis e gis, |
    fis,16 cis' a' cis  fis cis a cis,  cis gis' e' gis  cis gis e gis, |
    fis,16 cis' a' cis  fis cis a cis,  fis, cis' a' cis  fis cis a cis, |
    d16 a' fis' a  d a fis a,  gis, dis' fis dis'  fis dis bis fis |
    a,16 e' cis' e  a e cis e,  a, e' cis' e  a e cis e, |
    a,16 fis' cis' dis  fis dis cis fis,  a, fis' cis' dis  fis dis cis fis, |
    gis,16 e' cis' e  gis e cis e,  gis, e' cis' e  gis e cis e, |
    <gis, gis'>4->
      \tuplet 3/2 { <b b'>8 <bis bis'> <cis cis'> }
      \tuplet 3/2 { <d d'>8 <dis dis'> <e e'> }
      \tuplet 3/2 { <eis eis'>8 <fis fis'> <fisis fisis'> } |

    % bars 17-20: the theme, marcato, in the bass
    <gis gis'>4.->^\markup \italic "marcato il tema" <e e'>8
      <cis cis'>4.-> <bis bis'>8 |
    <a' a'>2-> <gis gis'>4 r8 <gis gis'>8 |
    <cis cis'>4.-> <a a'>8 <fis fis'>4.-> <eis eis'>8 |
    <d' d'>2-> <cis cis'>4 <bis bis'>4 |
  }

  % ---- bars 21-22: interlocking chromatic octaves -------------------------
  \relative c, {
    <cis cis'>16[ r <dis dis'> r] <eis eis'>[ r <fisis fisis'> r]
      <a a'>16[ r <b b'> r] <cis cis'>[ r <dis dis'> r] |
    <eis eis'>16[ r <fisis fisis'> r]
    \clef treble
    <a a'>16[ r <b b'> r] <cis cis'>[ r <dis dis'> r]
      <eis eis'>16[ r <fisis fisis'> r] |
    \clef bass
  }

  % ---- bar 23 -------------------------------------------------------------
  \relative c, {
    <gis gis'>2-> <gis' dis' fis>2\fermata |
  }

  % ---- bar 24: cadenza ----------------------------------------------------
  \key des \major
  \time 21/16
  \relative c, {
    s16*15 <as as'>4.\fermata |
  }

  % ---- Andante: bars 25-32 ------------------------------------------------
  \time 4/4
  \relative c, {
    \tuplet 3/2 4 { des8 as' des f as des  f des as f des as } |
    \omit TupletNumber
    \tuplet 3/2 4 {
      as,8 es' ges c es ges  c ges es c ges es |
      es8 bes' es ges bes es  ges es bes ges es bes |
      bes,8 f' as d f as  d as f d as f |
      ges,8 des' bes' des ges bes  beses ges es des beses ges |
      as,8 f' des' f as des  as f des ges es c |
      des,8 as' des f as des  f des as f des as |
      as,8 es' ges c es ges  c ges es c ges es |
    }
    \undo \omit TupletNumber

    % bars 33-40: the same harmonies, twice as fast
    \tuplet 6/4 4 {
      des16 as' des f as des  f des as f des as
      \omit TupletNumber
      des,16 as' des f as des  f des as f des as |
      as,16 es' ges c es ges  c ges es c ges es
      as,16 es' ges c es ges  c ges es c ges es |
      es16 bes' es ges bes es  ges es bes ges es bes
      es,16 bes' es ges bes es  ges es bes ges es bes |
      bes,16 f' as d f as  d as f d as f
      bes,16 f' as d f as  d as f d as f |
      ges,16 des' bes' des ges bes  des bes ges des bes des,
      ges,16 des' beses' des es ges  beses ges es des beses des, |
      as16 f' des' f as des  f des as f des f,
      as,16 f' des' f as des  c ges es c ges es |
      a,16 e' cis' e a cis  e cis a e cis e,
      a,16 e' cis' e a cis  e cis a e cis e, |
      a,16 e' cis' g' a cis  e cis a g cis, e,
      as,16 es' ges c es ges  c ges es c ges es |
    }
    \undo \omit TupletNumber

    % ---- Grandioso: bars 41-48, octave arpeggios --------------------------
    \tuplet 3/2 4 {
      <des, des'>8 <as' as'> <des des'>  <f f'> <as as'> <des des'>
      \omit TupletNumber
      <f f'>8 <des des'> <as as'>  <f f'> <es es'> <as, as'> |
      <ges ges'>8 <des' des'> <ges ges'>  <bes bes'> <des des'> <ges ges'>
      <des des'>8 <as as'> <f f'>  <des des'> <as as'> <f f'> |
      <es es'>8 <bes' bes'> <es es'>  <ges ges'> <bes bes'> <es es'>
      <ges ges'>8 <es es'> <bes bes'>  <ges ges'> <f f'> <bes, bes'> |
      <as as'>8 <es' es'> <as as'>  <ces ces'> <es es'> <as as'>
      <es es'>8 <bes bes'> <ges ges'>  <es es'> <bes bes'> <ges ges'> |
      <ges ges'>8 <des' des'> <ges ges'>  <bes bes'> <des des'> <ges ges'>
      <bes bes'>8 <ges ges'> <des des'>  <bes bes'> <ges ges'> <des des'> |
      <es, es'>8 <bes' bes'> <es es'>  <ges ges'> <bes bes'> <es es'>
      <ges ges'>8 <es es'> <bes bes'>  <ges ges'> <es es'> <ges, ges'> |
      <as as'>8 <f' f'> <as as'>  <des des'> <f f'> <as as'>
      <des des'>8 <as as'> <f f'>  <des des'> <as as'> <f f'> |
    }
    \undo \omit TupletNumber
    <as, as'>2->
      \tuplet 3/2 { <d d'>8 <es es'> <e e'> }
      \omit TupletNumber
      \tuplet 3/2 { <f f'>8 <ges ges'> <g g'> } |
    \undo \omit TupletNumber

    % ---- Presto: bars 49-52, the motto in the bass ------------------------
    \acciaccatura <des, des'>8
    <as'' as'>4-> <f f'>-> <des des'>-> <c c'>-> |
    <bes' bes'>2-> <as as'>-> |
    <bes bes'>4-> <ges ges'>-> <es es'>-> <d d'>-> |
    <ces' ces'>2-> <bes bes'>-> |
  }

  % ---- bars 53-54: interlocking chromatic octaves -------------------------
  \relative c, {
    <c c'>16[ r <d d'> r] <e e'>[ r <ges ges'> r]
      <as as'>16[ r <bes bes'> r] <c c'>[ r <d d'> r] |
    <e e'>16[ r <ges ges'> r]
    \clef treble
    <as as'>16[ r <bes bes'> r] <c c'>[ r <d d'> r]
      <e e'>16[ r <ges ges'> r] |
    \clef bass
  }

  % ---- bars 55-60 ---------------------------------------------------------
  \relative c, {
    <as as'>2-> <as as'>-> |
    <des' as' des>4-> f16 des as des  as f des f  des as f as |
    <des, des'>4-> r4 <a' e' a>2-> |
    <fis cis' fis>1-> |
    <des as' des>1\fermata |
    <des des'>4-> r4 r2\fermata
    \bar "|."
  }
}

% ===========================================================================
%  PEDAL
% ===========================================================================
pedal = {
  s1*7 |                                              % 1-7
  s1*9/4                                              % 8 (cadenza)
  s1\sustainOn |                                      % 9
  s2\sustainOff\sustainOn s2\sustainOff\sustainOn |   % 10
  s1\sustainOff\sustainOn |                           % 11
  s2\sustainOff\sustainOn s2\sustainOff\sustainOn |   % 12
  s1\sustainOff\sustainOn |                           % 13
  s1\sustainOff\sustainOn |                           % 14
  s1\sustainOff\sustainOn |                           % 15
  s4\sustainOff\sustainOn s2.\sustainOff |            % 16
  s1\sustainOn |                                      % 17
  s2\sustainOff\sustainOn s2\sustainOff\sustainOn |   % 18
  s1\sustainOff\sustainOn |                           % 19
  s2\sustainOff\sustainOn s2\sustainOff\sustainOn |   % 20
  s1\sustainOff |                                     % 21
  s1 |                                                % 22
  s1\sustainOn |                                      % 23
  s16*15 s4.\sustainOff\sustainOn                     % 24 (cadenza)
  s1\sustainOff\sustainOn |                           % 25
  s1\sustainOff\sustainOn |                           % 26
  s1\sustainOff\sustainOn |                           % 27
  s1\sustainOff\sustainOn |                           % 28
  s2\sustainOff\sustainOn s2\sustainOff\sustainOn |   % 29
  s2.\sustainOff\sustainOn s4\sustainOff\sustainOn |  % 30
  s1\sustainOff\sustainOn |                           % 31
  s1\sustainOff\sustainOn |                           % 32
  s1\sustainOff\sustainOn |                           % 33
  s1\sustainOff\sustainOn |                           % 34
  s1\sustainOff\sustainOn |                           % 35
  s1\sustainOff\sustainOn |                           % 36
  s2\sustainOff\sustainOn s2\sustainOff\sustainOn |   % 37
  s2.\sustainOff\sustainOn s4\sustainOff\sustainOn |  % 38
  s1\sustainOff\sustainOn |                           % 39
  s2\sustainOff\sustainOn s2\sustainOff\sustainOn |   % 40
  s1\sustainOff\sustainOn |                           % 41
  s2\sustainOff\sustainOn s2\sustainOff\sustainOn |   % 42
  s1\sustainOff\sustainOn |                           % 43
  s2\sustainOff\sustainOn s2\sustainOff\sustainOn |   % 44
  s1\sustainOff\sustainOn |                           % 45
  s1\sustainOff\sustainOn |                           % 46
  s1\sustainOff\sustainOn |                           % 47
  s2\sustainOff\sustainOn s2\sustainOff |             % 48
  \grace s8
  s1\sustainOn |                                      % 49
  s2\sustainOff\sustainOn s2\sustainOff\sustainOn |   % 50
  s1\sustainOff\sustainOn |                           % 51
  s2\sustainOff\sustainOn s2\sustainOff\sustainOn |   % 52
  s1\sustainOff |                                     % 53
  s1 |                                                % 54
  s2\sustainOn s2\sustainOff\sustainOn |              % 55
  s1\sustainOff\sustainOn |                           % 56
  s4\sustainOff\sustainOn s4\sustainOff s2\sustainOn | % 57
  s1\sustainOff\sustainOn |                           % 58
  s1\sustainOff\sustainOn |                           % 59
  s1\sustainOff |                                     % 60
}

% ===========================================================================
\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
    \new Dynamics \with { pedalSustainStyle = #'mixed } \pedal
  >>
  \layout {
    \context {
      \Score
      \override TupletBracket.bracket-visibility = ##f
    }
    \context {
      \Voice
      % short stems over the rests inside the alternating-hand beams
      \override Stem.stemlet-length = #0.75
    }
  }
  \midi {
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}
