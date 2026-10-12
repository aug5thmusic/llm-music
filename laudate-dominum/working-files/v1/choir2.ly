% CHOIR II -- composed by Claude Opus 5.5.
% Laudate Dominum, motet for double choir. Included by laudate-dominum.ly.
% Absolute pitches (c' = middle C), nederlands note names, 4/2 with a breve to the bar.
% Ficta (raised notes and the B-naturals at cadences on C) are marked \ficta.

cIIcantus = {
  R\breve | % 1
  R\breve | % 2
  R\breve | % 3
  R\breve | % 4
  R\breve | % 5
  % --- bar 6: Clause 2: laudate eum omnes populi
  a'1 bes'1 | % 6
  a'2 c''1 bes'2 | % 7
  a'1 g'1 | % 8
  c''1. \ficta b'2 | % 9
  c''1 r1 | % 10
  R\breve | % 11
  R\breve | % 12
  R\breve | % 13
  R\breve | % 14
  R\breve | % 15
  R\breve | % 16
  % --- bar 17: Clause 4: et veritas Domini manet in aeternum
  r2 a'2 d''1 | % 17
  c''2 bes'2 a'1 | % 18
  g'2 a'2 bes'1~ | % 19
  bes'1 a'1 | % 20
  c''2 d''2 e''1 | % 21
  f''1. e''2 | % 22
  f''1 r1 | % 23
  R\breve | % 24
  R\breve | % 25
  R\breve | % 26
  % --- bar 27: Clause 6: et Spiritui Sancto
  bes'1 c''1 | % 27
  d''2 c''2 bes'1 | % 28
  a'1. bes'2 | % 29
  c''2 d''2 c''1 | % 30
  a'1 r1 | % 31
  R\breve | % 32
  R\breve | % 33
  R\breve | % 34
  R\breve | % 35
  R\breve | % 36
  % --- bar 37: Clause 8: et in saecula saeculorum
  r1 f'2 g'2 | % 37
  a'2. bes'4 c''2 a'2 | % 38
  bes'2 c''1 bes'2 | % 39
  a'2 d''2 c''1~ | % 40
  c''1. \ficta b'2 | % 41
  c''1 r1 | % 42
  R\breve | % 43
  % --- bar 44: Amen exchange A2
  c''1 d''1 | % 44
  bes'1. a'2 | % 45
  bes'1 r1 | % 46
  % --- bar 47: Amen exchange A4 (bar 47), then the eight-voice tutti (bars 48-53)
  c''1 d''1 | % 47
  d''1 bes'1 | % 48
  a'1 c''1 | % 49
  d''1 c''1 | % 50
  bes'1 c''1 | % 51
  a'1 bes'1 | % 52
  a'\breve\fermata | % 53
}

cIIcantusText = \lyricmode {
  lau -- da -- te e -- um om -- nes po -- pu -- li.
  et ve -- ri -- tas Do -- mi -- ni ma -- net in ae -- ter -- _ _ num.
  et Spi -- ri -- tu -- i San -- _ _ _ _ cto.
  et in sae -- cu -- la sae -- cu -- lo -- rum, sae -- cu -- lo -- _ rum.
  A -- men, A -- _ men.
  A -- men. A -- _ men, A -- _ _ _ _ men, A -- men.
}

cIIaltus = {
  R\breve | % 1
  R\breve | % 2
  R\breve | % 3
  R\breve | % 4
  R\breve | % 5
  % --- bar 6: Clause 2: laudate eum omnes populi
  f'1 f'1 | % 6
  f'2 a'1 f'2 | % 7
  f'1 e'1 | % 8
  e'1 g'1 | % 9
  e'1 r1 | % 10
  R\breve | % 11
  R\breve | % 12
  R\breve | % 13
  R\breve | % 14
  R\breve | % 15
  R\breve | % 16
  % --- bar 17: Clause 4: et veritas Domini manet in aeternum
  r2 f'2 f'1 | % 17
  a'2 f'2 f'1 | % 18
  e'2 f'2 f'1~ | % 19
  f'1 f'1 | % 20
  e'2 d'2 g'1 | % 21
  f'1 g'1 | % 22
  f'1 r1 | % 23
  R\breve | % 24
  R\breve | % 25
  R\breve | % 26
  % --- bar 27: Clause 6: et Spiritui Sancto
  f'1 f'1 | % 27
  f'2 e'2 f'1 | % 28
  f'\breve~ | % 29
  f'1. e'2 | % 30
  f'1 r1 | % 31
  R\breve | % 32
  R\breve | % 33
  R\breve | % 34
  R\breve | % 35
  R\breve | % 36
  % --- bar 37: Clause 8: et in saecula saeculorum
  r1 d'2 e'2 | % 37
  f'2. f'4 e'2 d'2 | % 38
  d'2 e'2 d'1 | % 39
  d'2 d'2 e'1~ | % 40
  e'1 g'1 | % 41
  e'1 r1 | % 42
  R\breve | % 43
  % --- bar 44: Amen exchange A2
  f'1 f'1 | % 44
  d'1 f'1 | % 45
  d'1 r1 | % 46
  % --- bar 47: Amen exchange A4 (bar 47), then the eight-voice tutti (bars 48-53)
  f'1 f'1 | % 47
  f'1 g'1 | % 48
  f'1 e'1 | % 49
  d'1 f'1~ | % 50
  f'1. e'2 | % 51
  f'1 d'1 | % 52
  c'\breve\fermata | % 53
}

cIIaltusText = \lyricmode {
  lau -- da -- te e -- um om -- nes po -- pu -- li.
  et ve -- ri -- tas Do -- mi -- ni ma -- net in ae -- ter -- _ _ num.
  et Spi -- ri -- tu -- i San -- _ cto.
  et in sae -- cu -- la sae -- cu -- lo -- rum, sae -- cu -- lo -- _ rum.
  A -- men, A -- _ men.
  A -- men. A -- _ men, A -- _ _ _ men, A -- men.
}

cIItenor = {
  R\breve | % 1
  R\breve | % 2
  R\breve | % 3
  R\breve | % 4
  R\breve | % 5
  % --- bar 6: Clause 2: laudate eum omnes populi
  c'1 d'1 | % 6
  c'2 c'1 d'2 | % 7
  d'1 g1 | % 8
  a1 d'1 | % 9
  c'1 r1 | % 10
  R\breve | % 11
  R\breve | % 12
  R\breve | % 13
  R\breve | % 14
  R\breve | % 15
  R\breve | % 16
  % --- bar 17: Clause 4: et veritas Domini manet in aeternum
  r2 d'2 d'1 | % 17
  e'2 d'2 c'1 | % 18
  c'2 c'2 d'1~ | % 19
  d'1 d'1 | % 20
  c'2 f2 e1 | % 21
  a1 c'1 | % 22
  a1 r1 | % 23
  R\breve | % 24
  R\breve | % 25
  R\breve | % 26
  % --- bar 27: Clause 6: et Spiritui Sancto
  d'1 a1 | % 27
  bes2 g2 f1 | % 28
  c'1. d'2 | % 29
  c'2 bes2 g1 | % 30
  f1 r1 | % 31
  R\breve | % 32
  R\breve | % 33
  R\breve | % 34
  R\breve | % 35
  R\breve | % 36
  % --- bar 37: Clause 8: et in saecula saeculorum
  r1 a2 c'2 | % 37
  c'2. bes4 g2 f2 | % 38
  f2 a2 f1 | % 39
  f2 bes2 g1 | % 40
  a1 d'1 | % 41
  c'1 r1 | % 42
  R\breve | % 43
  % --- bar 44: Amen exchange A2
  a1 a1 | % 44
  bes1 c'1 | % 45
  bes1 r1 | % 46
  % --- bar 47: Amen exchange A4 (bar 47), then the eight-voice tutti (bars 48-53)
  a1 a1 | % 47
  bes1 d'1 | % 48
  d'1 c'1 | % 49
  f1 a1 | % 50
  bes1 g1 | % 51
  a1 f1 | % 52
  a\breve\fermata | % 53
}

cIItenorText = \lyricmode {
  lau -- da -- te e -- um om -- nes po -- pu -- li.
  et ve -- ri -- tas Do -- mi -- ni ma -- net in ae -- ter -- _ _ num.
  et Spi -- ri -- tu -- i San -- _ _ _ _ cto.
  et in sae -- cu -- la sae -- cu -- lo -- rum, sae -- cu -- lo -- _ _ rum.
  A -- men, A -- _ men.
  A -- men. A -- _ men, A -- _ _ _ _ men, A -- men.
}

cIIbassus = {
  R\breve | % 1
  R\breve | % 2
  R\breve | % 3
  R\breve | % 4
  R\breve | % 5
  % --- bar 6: Clause 2: laudate eum omnes populi
  f1 bes,1 | % 6
  f2 f1 bes,2 | % 7
  f1 c1 | % 8
  a,1 g,1 | % 9
  c1 r1 | % 10
  R\breve | % 11
  R\breve | % 12
  R\breve | % 13
  R\breve | % 14
  R\breve | % 15
  R\breve | % 16
  % --- bar 17: Clause 4: et veritas Domini manet in aeternum
  r2 d2 bes,1 | % 17
  a,2 bes,2 f1 | % 18
  c2 f2 bes,1~ | % 19
  bes,1 d1 | % 20
  a,2 bes,2 c1 | % 21
  d1 c1 | % 22
  f1 r1 | % 23
  R\breve | % 24
  R\breve | % 25
  R\breve | % 26
  % --- bar 27: Clause 6: et Spiritui Sancto
  bes,1 f1 | % 27
  bes,2 c2 d1 | % 28
  f1. bes,2 | % 29
  a,2 bes,2 c1 | % 30
  f1 r1 | % 31
  R\breve | % 32
  R\breve | % 33
  R\breve | % 34
  R\breve | % 35
  R\breve | % 36
  % --- bar 37: Clause 8: et in saecula saeculorum
  r1 d2 c2 | % 37
  f2. d4 c2 d2 | % 38
  bes,2 a,2 d1 | % 39
  d2 bes,2 c1 | % 40
  a,1 g,1 | % 41
  c1 r1 | % 42
  R\breve | % 43
  % --- bar 44: Amen exchange A2
  f1 d1 | % 44
  g1 f1 | % 45
  bes,1 r1 | % 46
  % --- bar 47: Amen exchange A4 (bar 47), then the eight-voice tutti (bars 48-53)
  f1 d1 | % 47
  bes,1 g,1 | % 48
  d1 a,1 | % 49
  bes,1 f1 | % 50
  d1 c1 | % 51
  f1 bes,1 | % 52
  f\breve\fermata | % 53
}

cIIbassusText = \lyricmode {
  lau -- da -- te e -- um om -- nes po -- pu -- li.
  et ve -- ri -- tas Do -- mi -- ni ma -- net in ae -- ter -- _ _ num.
  et Spi -- ri -- tu -- i San -- _ _ _ _ cto.
  et in sae -- cu -- la sae -- cu -- lo -- rum, sae -- cu -- lo -- _ _ rum.
  A -- men, A -- _ men.
  A -- men. A -- _ men, A -- _ _ _ _ men, A -- men.
}
