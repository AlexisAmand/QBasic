N = 10
DIM TABLO(N) AS INTEGER

' On remplit le tableau avec des valeurs aleatoires

FOR X = 1 TO N
    RANDOMIZE TIMER
    TABLO(X) = INT((RND * 10))
NEXT X

' On affiche le tableau d'origine

PRINT "Tableau : "

FOR X = 1 TO N
    PRINT TABLO(X)
NEXT X

' On fait le tri

FOR I = 1 TO N - 1
    FOR J = I + 1 TO N
        IF TABLO(I) > TABLO(J) THEN CALL perm(TABLO(I), TABLO(J))
    NEXT J
NEXT I

' On affiche le tableau final

PRINT "Tableau final : "

FOR X = 1 TO N
    PRINT TABLO(X)
NEXT X

' Permute 2 variables

SUB perm (A AS INTEGER, B AS INTEGER)
    TEMP = B
    B = A
    A = TEMP
END SUB


