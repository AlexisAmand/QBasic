5 ' Calcul du PPCM
10 INPUT A, B
15 X = A: Y = B
20 R = A MOD B: A = B: B = R
30 IF R <> 0 THEN 20
40 PRINT X * Y / A





















