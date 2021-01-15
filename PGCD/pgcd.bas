5 ' Calcul du PGCD
6 ' Source : Microthom 1 (1985)
10 INPUT A, B
20 R = A MOD B: A = B: B = R
30 IF R <> 0 THEN 20
40 PRINT A





















