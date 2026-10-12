% CHOIR I -- Astra. Laudate Dominum, version 2, final revision of the inter-choir doubling.
% Absolute nederlands pitches; F with one flat.
% 4/2 in bars 1-64 and 85-130; 3/1 in bars 65-84.
% The master supplies metre, tempo, key signature and \ficta.
% Soggetto (Tenor, bars 1-2): f1 a2 g2 | c'1 bes2 a2
% Entries: Tenor 1:1; Altus 3:1; Bassus 4:3; Cantus 6:3.
% Tenor augmentation at 24-27; tripla hemiola at 82-83.
% Bassus I in tutti 7, 12 and 14 supplied by Claude.


cIcantus = {
  % --- Sec 1: Laudate Dominum omnes gentes; imitative exordium
  R\breve | % 1
  R\breve | % 2
  R\breve | % 3
  R\breve | % 4
  R\breve | % 5
  r1 c'1 | % 6
  e'2 d'2 g'1 | % 7
  f'2 e'2 a'2. g'4 | % 8
  e'2. f'4 g'2 f'2 | % 9
  bes'1~ bes'2 a'2 | % 10
  a'1 r1 | % 11
  R\breve | % 12
  R\breve | % 13
  R\breve | % 14
  R\breve | % 15
  R\breve | % 16
  R\breve | % 17
  R\breve | % 18
  R\breve | % 19
  % --- Sec 3a: omnes gentes
  r2 c''1 c''2 | % 20
  d''1 c''1 | % 21
  a'1 r1 | % 22
  R\breve | % 23
  % --- Sec 4: tutti, Choir I leads; augmented soggetto in Tenor
  f'1 f'1~ | % 24
  f'2 f'2 g'1 | % 25
  a'\breve | % 26
  bes'1 c''1 | % 27
  d''1 d''2 bes'2 | % 28
  c''1 c''1 | % 29
  c''2 bes'4 a'4 g'1 | % 30
  % --- F chord, then Sec 5: Quoniam confirmata est; two imitative points
  a'1 c''2. f'4~ | % 31
  f'4 g'2 a'2 c''2 c''4~ | % 32
  c''2 bes'2. a'2 r4 | % 33
  R\breve | % 34
  R\breve | % 35
  R\breve | % 36
  c''2 a'2 a'2 a'2 | % 37
  bes'2 c''2 d''1 | % 38
  bes'2 c''2 d''2. c''4 | % 39
  bes'4 c''4 r1. | % 40
  R\breve | % 41
  R\breve | % 42
  g'2. d''2. \ficta cis''2 | % 43
  d''1 r1 | % 44
  R\breve | % 45
  R\breve | % 46
  R\breve | % 47
  R\breve | % 48
  R\breve | % 49
  R\breve | % 50
  R\breve | % 51
  R\breve | % 52
  R\breve | % 53
  % --- Sec 7: manet in aeternum; tutti led by Choir II
  r1 a'1 | % 54
  g'2 bes'2 c''1 | % 55
  g'1 a'2. a'4 | % 56
  a'1 f'1 | % 57
  a'1 bes'1 | % 58
  bes'2 d''2 e''2 c''2 | % 59
  c''1 g'1~ | % 60
  g'4 a'4 bes'2 c''1 | % 61
  bes'1 f'1 | % 62
  g'2 a'4 bes'4 c''1~ | % 63
  c''1 a'1 | % 64
  % --- Sec 8: tripla; Gloria Patri
  c''1. bes'2 a'1 | % 65
  d''1. c''2 bes'1 | % 66
  a'1 g'1 \ficta b'1 | % 67
  c''\breve r1 | % 68
  R\breve. | % 69
  R\breve. | % 70
  % --- Rest for Choir II; et Spiritui Sancto from beat 3
  r\breve f'1 | % 71
  f'1 bes'1. a'2 | % 72
  a'1 a'\breve | % 73
  g'\breve r1 | % 74
  % --- Sec 9: tutti tripla, Choir I leads
  c''1. bes'2 a'1 | % 75
  d''1. c''2 bes'1 | % 76
  a'1 g'1 \ficta b'1 | % 77
  c''\breve g'1 | % 78
  a'1. g'2 f'1 | % 79
  g'1 \ficta b'1 c''1~ | % 80
  c''1 g'1 a'1 | % 81
  % --- Hemiola: three breves across bars 82-83
  f'\breve a'1~ | % 82
  a'1 g'\breve | % 83
  a'\breve. | % 84
  R\breve | % 85
  R\breve | % 86
  R\breve | % 87
  R\breve | % 88
  R\breve | % 89
  R\breve | % 90
  R\breve | % 91
  R\breve | % 92
  % --- Sec 11: et nunc, et semper
  d''2 d''2 bes'1 | % 93
  a'1 r1 | % 94
  r2 f'2 f'1~ | % 95
  f'2 e'2 a'1~ | % 96
  a'1~ a'2 g'2 | % 97
  % --- A-major half close; Sec 12 follows
  a'1 r1 | % 98
  % --- Sec 12: et in saecula saeculorum; tutti led by Choir II
  r1 g'2 a'2 | % 99
  c''2. bes'4 a'2 e''2 | % 100
  d''2 d''1 c''2 | % 101
  R\breve | % 102
  c''2 c''2 bes'2 c''2 | % 103
  bes'2. g'4~ g'2 r2 | % 104
  c''2 c''2 d''2 bes'2 | % 105
  bes'2 d''1 bes'2 | % 106
  a'1~ a'2 g'2 | % 107
  a'2 bes'2 c''1 | % 108
  a'1 d''1 | % 109
  c''1 r1 | % 110
  R\breve | % 111
  % --- Sec 13: Amen from beat 3
  r1 f''1 | % 112
  d''\breve | % 113
  d''1 r1 | % 114
  % --- Amen from beat 3
  r1 d''1 | % 115
  % --- C-major cadence; final Amen begins at beat 3
  c''1 r1 | % 116
  % --- Sec 14: final Amen; tutti led by Choir II
  R\breve | % 117
  R\breve | % 118
  r1 c''2 d''2~ | % 119
  d''2 c''2~ c''1 | % 120
  bes'1 a'2~ a'2 | % 121
  d''1 c''2 a'2 | % 122
  g'2. a'4 bes'1~ | % 123
  bes'1 a'2 e''2 | % 124
  d''1 c''1 | % 125
  d''1 c''2 e''2 | % 126
  a'\breve | % 127
  bes'\breve | % 128
  c''\breve~ | % 129
  c''\breve\fermata | % 130
}

cIcantusText = \lyricmode {
  % From bar 1
  Lau -- da -- te Do -- mi -- num om -- nes gen -- _ _ _ _ _ tes.
  % From bar 20
  om -- nes gen -- _ tes
  % From bar 24
  Lau -- da -- te Do -- _ _ _ _ mi -- num om -- nes gen -- _ _ _
  % From bar 31
  tes. Quo -- ni -- am con -- fir -- ma -- ta est. su -- per nos mi -- se -- ri -- cor -- di -- a e -- ius. _ _ e -- _ _ ius.
  % Sec 7: from bar 54, beat 3
  ma -- _ _ _ net in ae -- ter -- _ num, in ae -- ter -- _ num, ma -- net _ _ _ in ae -- ter -- _ _ _ num.
  % From bar 65
  Glo -- ri -- a Pa -- _ _ _ _ _ tri. et Spi -- ri -- tu -- i San -- cto. Glo -- ri -- a Pa -- _ _ _ _ _ tri, et Fi -- li -- o, et Spi -- ri -- tu -- i San -- _ _ cto.
  % From bar 93
  et nunc _ _ et sem -- _ _ _ per
  % Sec 12: from bar 99, beat 3
  et in sae -- cu -- la, sae -- _ cu -- la.
    et in sae -- _ cu -- la sae -- cu -- lo -- rum,
    in sae -- cu -- la sae -- cu -- lo -- _ _ _ rum.

  % From bar 112
  A -- _ men A -- men
  % Sec 14: from bar 119, beat 3
  A -- _ _ _ men, A -- _ _ _ _ _ _ _ _ men, A -- _ _ _ _ men.
}

cIaltus = {
  % --- Sec 1: Laudate Dominum omnes gentes; imitative exordium
  R\breve | % 1
  R\breve | % 2
  c'1 e'2 d'2 | % 3
  g'1 f'2 e'2 | % 4
  c'4 d'4 e'4 f'4 e'1 | % 5
  d'2 e'2 f'1 | % 6
  e'2 f'2 e'1 | % 7
  f'2 g'2 f'1 | % 8
  e'1~ e'2 c'2 | % 9
  f'2 e'4 d'4 e'1 | % 10
  f'1 r1 | % 11
  R\breve | % 12
  R\breve | % 13
  R\breve | % 14
  R\breve | % 15
  R\breve | % 16
  R\breve | % 17
  R\breve | % 18
  R\breve | % 19
  % --- Sec 3a: omnes gentes
  e'2. e'4 e'1 | % 20
  f'2 e'4 d'4 e'1 | % 21
  c'1 r1 | % 22
  R\breve | % 23
  % --- Sec 4: tutti, Choir I leads; augmented soggetto in Tenor
  d'2 d'2 c'1~ | % 24
  c'2 c'2 e'1~ | % 25
  e'1 f'1 | % 26
  d'1 f'1 | % 27
  f'1 f'1 | % 28
  f'1 g'1 | % 29
  f'1 g'1 | % 30
  % --- F chord, then Sec 5: Quoniam confirmata est; two imitative points
  f'1 r2 f'2~ | % 31
  f'4 bes4 c'2 f'2. e'4 | % 32
  g'1 f'2. e'4~ | % 33
  e'4 r1. r4 | % 34
  R\breve | % 35
  R\breve | % 36
  r2 f'2 d'2 d'2 | % 37
  d'2 e'2 f'2 g'2~ | % 38
  g'2 e'2 f'2 g'2~ | % 39
  g'4 f'4 e'2 r1 | % 40
  R\breve | % 41
  R\breve | % 42
  r4 g'2 a'2. g'2 | % 43
  f'1 r1 | % 44
  R\breve | % 45
  R\breve | % 46
  R\breve | % 47
  R\breve | % 48
  R\breve | % 49
  R\breve | % 50
  R\breve | % 51
  R\breve | % 52
  R\breve | % 53
  % --- Sec 7: manet in aeternum; tutti led by Choir II
  R\breve | % 54
  r1 c'1 | % 55
  d'2 bes2 a1 | % 56
  a2 a2 d'1 | % 57
  c'1 bes2. c'4 | % 58
  d'1 c'1 | % 59
  r2 f'2 g'1~ | % 60
  g'1 e'1 | % 61
  g'1 c'1 | % 62
  c'2. d'4 e'2 g'2 | % 63
  a'1 f'1 | % 64
  % --- Sec 8: tripla; Gloria Patri
  a'\breve f'1 | % 65
  f'1 f'1 g'1 | % 66
  f'1 g'1 g'1~ | % 67
  g'\breve r1 | % 68
  R\breve. | % 69
  R\breve. | % 70
  % --- Rest for Choir II; et Spiritui Sancto from beat 3
  r\breve d'1 | % 71
  f'1 f'\breve~ | % 72
  f'2 e'2 f'2 a'1. | % 73
  e'\breve r1 | % 74
  % --- Sec 9: tutti tripla, Choir I leads
  a'\breve f'1~ | % 75
  f'1 f'1 g'1 | % 76
  f'1 g'1 g'1~ | % 77
  g'\breve e'1 | % 78
  e'1. e'2 c'1 | % 79
  e'1 g'2 g'1.~ | % 80
  g'1 g'1 f'1 | % 81
  % --- Hemiola: three breves across bars 82-83
  f'\breve~ f'1~ | % 82
  f'1 e'\breve | % 83
  f'\breve. | % 84
  R\breve | % 85
  R\breve | % 86
  R\breve | % 87
  R\breve | % 88
  R\breve | % 89
  R\breve | % 90
  R\breve | % 91
  R\breve | % 92
  % --- Sec 11: et nunc, et semper
  r2 g'2 f'1~ | % 93
  f'1 r1 | % 94
  d'2 d'2 c'1~ | % 95
  c'\breve~ | % 96
  c'1 d'1 | % 97
  % --- A-major half close; Sec 12 follows
  \ficta cis'1 r1 | % 98
  % --- Sec 12: et in saecula saeculorum; tutti led by Choir II
  R\breve | % 99
  R\breve | % 100
  R\breve | % 101
  r1 e'2 f'2 | % 102
  a'2. g'4 f'2 c'2 | % 103
  d'2 bes2 c'2 f'2 | % 104
  r2 e'2 d'2 f'2 | % 105
  g'1 bes'1 | % 106
  r2 f'1 e'2 | % 107
  d'1 e'2 g'2 | % 108
  a'1 g'1 | % 109
  g'1 r1 | % 110
  R\breve | % 111
  % --- Sec 13: Amen from beat 3
  r1 a'1 | % 112
  g'1 a'2 g'2 | % 113
  f'1 r1 | % 114
  % --- Amen from beat 3
  r1 g'2 f'2 | % 115
  % --- C-major cadence; final Amen begins at beat 3
  e'1 r1 | % 116
  % --- Sec 14: final Amen; tutti led by Choir II
  R\breve | % 117
  e'1 d'1 | % 118
  a'2 g'2 f'1 | % 119
  e'1 a'2 g'2 | % 120
  r1 e'1 | % 121
  f'1 c'1~ | % 122
  c'2 d'2 bes1 | % 123
  d'1 f'2 e'2 | % 124
  a'1 g'2 e'2 | % 125
  d'1 g'2 f'4 e'4 | % 126
  c'\breve | % 127
  bes\breve | % 128
  a\breve~ | % 129
  a\breve\fermata | % 130
}

cIaltusText = \lyricmode {
  % From bar 1
  Lau -- da -- te Do -- mi -- num _ _ _ _ _ om -- _ _ nes gen -- _ _ _ _ _ _ _ _ _ _ tes.
  % From bar 20
  om -- nes gen -- _ _ _ _ tes
  % From bar 24
  Lau -- da -- _ te Do -- _ mi -- num om -- nes gen -- _ _ _
  % From bar 31
  tes. Quo -- ni -- am con -- fir -- ma -- ta est. su -- per nos mi -- se -- ri -- cor -- di -- a e -- ius. _ e -- _ _ ius.
  % Sec 7: from bar 55, beat 3
  ma -- _ net in ae -- ter -- _ num, in ae -- ter -- num, ma -- _ net in ae -- ter -- _ _ _ _ num.
  % From bar 65
  Glo -- ri -- a Pa -- _ _ _ tri. et Spi -- ri -- tu -- i San -- cto. Glo -- ri -- a Pa -- _ _ tri, et Fi -- li -- o, et Spi -- ri -- tu -- i San -- _ cto.
  % From bar 93
  et nunc et sem -- _ _ per
  % Sec 12: from bar 102, beat 3
  et in sae -- cu -- la sae -- cu -- _ _ lo -- rum,
  et in sae -- _ cu -- la sae -- cu -- lo -- _ _ rum.
  % From bar 112
  A -- _ _ _ men A -- _ men
  % Sec 14: from bar 118; soggetto at bar 124
  A -- men, A -- _ _ men, A -- men, A -- _ _ _ men, A -- _ _ _ men, A -- _ _ _ _ _ _ men.
}

cItenor = {
  % --- Sec 1: Laudate Dominum omnes gentes; imitative exordium
  f1 a2 g2 | % 1
  c'1 bes2 a2 | % 2
  a2 g4 f4 g2 f2 | % 3
  e2. r4 c'2 a2 | % 4
  a2 bes2 g4 f4 g4 a4 | % 5
  d'2 c'2 a4 g4 a4 bes4 | % 6
  c'2 d'2 c'2 c'2 | % 7
  a2 c'2~ c'1~ | % 8
  c'1 g2 a2 | % 9
  f1 g2 a2 | % 10
  c'1 r1 | % 11
  R\breve | % 12
  R\breve | % 13
  R\breve | % 14
  R\breve | % 15
  R\breve | % 16
  R\breve | % 17
  R\breve | % 18
  R\breve | % 19
  % --- Sec 3a: omnes gentes
  g1 g1 | % 20
  a1 g1 | % 21
  a1 r1 | % 22
  R\breve | % 23
  % --- Sec 4: tutti, Choir I leads; augmented soggetto in Tenor
  f\breve | % 24
  a1 g1 | % 25
  c'\breve | % 26
  bes1 a1 | % 27
  a1 bes1 | % 28
  a1 g1 | % 29
  a1 c'1 | % 30
  % --- F chord, then Sec 5: Quoniam confirmata est; two imitative points
  c'1 r1 | % 31
  R\breve | % 32
  R\breve | % 33
  c'2. f2 g2 a4~ | % 34
  a4 c'2 c'2. bes2~ | % 35
  bes4 a2 r1 r4 | % 36
  R\breve | % 37
  R\breve | % 38
  R\breve | % 39
  r2 c'2 a2 a2 | % 40
  a2 bes2 c'2 d'2~ | % 41
  d'2 bes2 c'2 d'2~ | % 42
  d'2 c'4 a4~ a1 | % 43
  a1 r1 | % 44
  R\breve | % 45
  R\breve | % 46
  R\breve | % 47
  R\breve | % 48
  R\breve | % 49
  R\breve | % 50
  R\breve | % 51
  R\breve | % 52
  R\breve | % 53
  % --- Sec 7: manet in aeternum; tutti led by Choir II
  R\breve | % 54
  R\breve | % 55
  g1 c2 d2 | % 56
  e1 d1 | % 57
  a2 g2 f1 | % 58
  bes1 a1 | % 59
  a1 g1 | % 60
  d'1 c'1 | % 61
  g2. a8 bes8 c'1~ | % 62
  c'1. e'2 | % 63
  f'1 f'1 | % 64
  % --- Sec 8: tripla; Gloria Patri
  f'\breve c'1 | % 65
  d'1 d'\breve | % 66
  f'1 e'1 d'1 | % 67
  e'\breve r1 | % 68
  R\breve. | % 69
  R\breve. | % 70
  % --- Rest for Choir II; et Spiritui Sancto from beat 3
  r\breve d'1 | % 71
  d'1 f'\breve | % 72
  e'1 d'2 c'1. | % 73
  c'\breve r1 | % 74
  % --- Sec 9: tutti tripla, Choir I leads
  f'\breve c'1 | % 75
  d'1 d'\breve | % 76
  f'1 e'1 d'1 | % 77
  e'\breve e'1 | % 78
  e'1. e'2 a1 | % 79
  \ficta b1 d'1 e'1~ | % 80
  e'1 d'1 c'1 | % 81
  % --- Hemiola: three breves across bars 82-83
  d'\breve c'1~ | % 82
  c'1~ c'\breve | % 83
  c'\breve. | % 84
  R\breve | % 85
  R\breve | % 86
  R\breve | % 87
  R\breve | % 88
  R\breve | % 89
  R\breve | % 90
  R\breve | % 91
  R\breve | % 92
  % --- Sec 11: et nunc, et semper
  bes2 bes2 d'1~ | % 93
  d'1 r1 | % 94
  a1 f1 | % 95
  e1 f1 | % 96
  a1 g1 | % 97
  % --- A-major half close; Sec 12 follows
  e1 r1 | % 98
  % --- Sec 12: et in saecula saeculorum; tutti led by Choir II
  R\breve | % 99
  R\breve | % 100
  r1 bes2 c'2 | % 101
  e'2. d'4 c'2 d'2 | % 102
  c'2 e'2 d'2 c'2 | % 103
  R\breve | % 104
  e2 g2 f1 | % 105
  r4 bes2. bes2 bes2 | % 106
  c'2 a2 bes1 | % 107
  a1 e'1 | % 108
  r1 d'1 | % 109
  e'1 r1 | % 110
  R\breve | % 111
  % --- Sec 13: Amen from beat 3
  r1 c'1 | % 112
  bes1 a1 | % 113
  bes1 r1 | % 114
  % --- Amen from beat 3
  r1 bes1 | % 115
  % --- C-major cadence; final Amen begins at beat 3
  g1 d1 | % 116
  % --- Sec 14: final Amen; tutti led by Choir II
  f2 e2 a1 | % 117
  g2 c'2 bes1 | % 118
  a1 c'2 bes2 | % 119
  c'1~ c'2 g2~ | % 120
  g1 a1 | % 121
  a2 g4 f4 e1 | % 122
  e2 g2 e1 | % 123
  d1 d2 g2 | % 124
  f1 e1 | % 125
  f1 c'2. bes4 | % 126
  a\breve | % 127
  f\breve | % 128
  f\breve~ | % 129
  f\breve\fermata | % 130
}

cItenorText = \lyricmode {
  % From bar 1
  Lau -- da -- te Do -- mi -- num om -- _ _ _ nes gen -- _ _ tes, om -- _ _ _ _ _ nes _ _ _ _ _ gen -- tes, om -- nes gen -- _ _ _ _ _ tes.
  % From bar 20
  om -- nes gen -- _ tes
  % From bar 24
  Lau -- da -- te Do -- mi -- num om -- _ nes gen -- _ _
  % From bar 31
  tes. Quo -- ni -- am con -- fir -- ma -- ta est. su -- per nos mi -- se -- ri -- cor -- di -- a e -- _ _ ius.
  % Sec 7: from bar 56
  ma -- net in ae -- _ ter -- _ _ _ num, ma -- net in ae -- ter -- _ _ _ _ _ num.
  % From bar 65
  Glo -- ri -- a Pa -- _ _ _ tri. et Spi -- ri -- tu -- i San -- cto. Glo -- ri -- a Pa -- _ _ _ tri, et Fi -- li -- o, et Spi -- ri -- tu -- i San -- _ cto.
  % From bar 93
  et nunc _ et sem -- _ _ _ _ per
  % Sec 12: from bar 101, beat 3
  et in sae -- cu -- la sae -- cu -- lo -- _ rum.
  et in _ sae -- cu -- la sae -- cu -- lo -- _ _ _ rum.
  % From bar 112
  A -- _ _ men A -- men
  % Sec 14: from bar 116, beat 3
  A -- _ _ _ _ _ _ men, A -- _ _ _ men, A -- _ _ _ men, A -- _ men, A -- _ _ _ _ _ men, A -- _ men.
}

cIbassus = {
  % --- Sec 1: Laudate Dominum omnes gentes; imitative exordium
  R\breve | % 1
  R\breve | % 2
  R\breve | % 3
  r1 f,1 | % 4
  a,2 g,2 c1 | % 5
  bes,2 a,2 f,1 | % 6
  c2 bes,4 d4 e1 | % 7
  d2 c2 f2 e2 | % 8
  c1 e2 f2 | % 9
  d1 c1 | % 10
  f1 r1 | % 11
  R\breve | % 12
  R\breve | % 13
  R\breve | % 14
  R\breve | % 15
  R\breve | % 16
  R\breve | % 17
  R\breve | % 18
  R\breve | % 19
  % --- Sec 3a: omnes gentes
  e1 c1 | % 20
  f1 e1 | % 21
  f1 r1 | % 22
  R\breve | % 23
  % --- Sec 4: tutti, Choir I leads; augmented soggetto in Tenor
  bes,2 bes,2 a,1~ | % 24
  a,2 a,2 c1 | % 25
  a,1 a1 | % 26
  g1 f1 | % 27
  d1 d1 | % 28
  f1 e1 | % 29
  f1 e1 | % 30
  % --- F chord, then Sec 5: Quoniam confirmata est; two imitative points
  f1 r1 | % 31
  R\breve | % 32
  R\breve | % 33
  r2 f2. bes,4 c2 | % 34
  f2. e4 g1 | % 35
  f2. e2 r2. | % 36
  R\breve | % 37
  R\breve | % 38
  R\breve | % 39
  r1 f2 d2 | % 40
  d2 d2 e2 f2 | % 41
  g1 e2 f2 | % 42
  e2. d4 c4 bes,4 a,2 | % 43
  d1 r1 | % 44
  R\breve | % 45
  R\breve | % 46
  R\breve | % 47
  R\breve | % 48
  R\breve | % 49
  R\breve | % 50
  R\breve | % 51
  R\breve | % 52
  R\breve | % 53
  % --- Sec 7: manet in aeternum; tutti led by Choir II
  f,\breve | % 54
  g,1 a,1 | % 55
  bes,1 c1~ | % 56
  c1 bes,1 | % 57
  a,1 d1 | % 58
  g,1 c1 | % 59
  f,1 bes,1 | % 60
  g,1 a,1 | % 61
  bes,1 a,1 | % 62
  c\breve | % 63
  f\breve | % 64
  % --- Sec 8: tripla; Gloria Patri
  f\breve a1 | % 65
  bes1 bes1 g1 | % 66
  d1 e1 g1 | % 67
  c\breve r1 | % 68
  R\breve. | % 69
  R\breve. | % 70
  % --- Rest for Choir II; et Spiritui Sancto from beat 3
  r\breve bes,1 | % 71
  bes,1 d\breve | % 72
  c1 d2 f1. | % 73
  c\breve r1 | % 74
  % --- Sec 9: tutti tripla, Choir I leads
  f\breve a1 | % 75
  bes1 bes1 g1 | % 76
  d1 e1 g1 | % 77
  e1. e1. | % 78
  c1. c2 a,1 | % 79
  g,1 g,1 c1~ | % 80
  c1 \ficta b,1 a,1 | % 81
  % --- Hemiola: three breves across bars 82-83
  bes,\breve a,1~ | % 82
  a,1 c\breve | % 83
  f,\breve. | % 84
  R\breve | % 85
  R\breve | % 86
  R\breve | % 87
  R\breve | % 88
  R\breve | % 89
  R\breve | % 90
  R\breve | % 91
  R\breve | % 92
  % --- Sec 11: et nunc, et semper
  g,2 g,2 bes,2 c2 | % 93
  d1 r1 | % 94
  f,1 a,2 bes,2 | % 95
  c1 a,2 g,2 | % 96
  f,1 bes,1 | % 97
  % --- A-major half close; Sec 12 follows
  a,1 r1 | % 98
  % --- Sec 12: et in saecula saeculorum; tutti led by Choir II
  R\breve | % 99
  R\breve | % 100
  R\breve | % 101
  R\breve | % 102
  r1 d2 e2 | % 103
  g2. f4 e2 d2 | % 104
  c2 e2 f4 d4 c2 | % 105
  bes,1 d1 | % 106
  c1 bes,1 | % 107
  d1 c1 | % 108
  c'1 g1 | % 109
  c1 r1 | % 110
  R\breve | % 111
  % --- Sec 13: Amen from beat 3
  r1 f1 | % 112
  g1 f1 | % 113
  bes,1 r1 | % 114
  % --- Amen from beat 3
  r1 g1 | % 115
  % --- C-major cadence; final Amen begins at beat 3
  c1 r1 | % 116
  % --- Sec 14: final Amen; tutti led by Choir II
  R\breve | % 117
  R\breve | % 118
  f,1 a,2 g,2 | % 119
  c1 a,2 bes,2 | % 120
  g,1 c1 | % 121
  f,1 a,1 | % 122
  c2 bes,2 g,1 | % 123
  R\breve | % 124
  f,1 c1 | % 125
  bes,1 c1 | % 126
  f,\breve | % 127
  bes,\breve | % 128
  f,\breve~ | % 129
  f,\breve\fermata | % 130
}

cIbassusText = \lyricmode {
  % From bar 1
  Lau -- da -- te Do -- mi -- num om -- _ _ _ _ _ _ _ _ nes gen -- _ _ _ tes.
  % From bar 20
  om -- nes gen -- _ tes
  % From bar 24
  Lau -- da -- _ te Do -- _ _ mi -- num om -- nes gen -- _ _ _
  % From bar 31
  tes. Quo -- ni -- am con -- fir -- ma -- ta est. su -- per nos mi -- se -- ri -- cor -- di -- a e -- ius. _ _ _ _
  % From bar 54 (Bassus I given by Claude)
  ma -- net in ae -- ter -- num, ma -- net in ae -- ter -- num, ma -- net in ae -- ter -- num.
  % From bar 65
  Glo -- _ _ ri -- a Pa -- _ _ tri. et Spi -- ri -- tu -- i San -- cto. Glo -- _ _ ri -- a Pa -- _ _ tri, et Fi -- li -- o, et Spi -- ri -- tu -- i San -- _ _ cto.
  % From bar 93
  et nunc _ _ _ et sem -- _ _ _ _ _ _ per
  % From bar 103 (Bassus I given by Claude)
  et in sae -- cu -- la sae -- cu -- lo -- _ _ _ rum, in sae -- cu -- la sae -- cu -- lo -- rum.
  % From bar 112
  A -- _ _ men A -- men
  % From bar 119 (Bassus I given by Claude)
  A -- _ _ men, A -- _ _ men, A -- _ _ _ men, A -- _ _ _ men, A -- men.
}
