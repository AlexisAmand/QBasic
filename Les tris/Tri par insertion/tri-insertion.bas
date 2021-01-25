' Tableau de N elements

N = 10
DIM TABLO(N) AS INTEGER

' Pour la demo, on met des valeurs aleatoires dans le tableau

FOR X = 1 TO N
    RANDOMIZE TIMER
    TABLO(X) = INT((RND * 100))
NEXT X

' On affiche le tableau d'origine

PRINT "Tableau avant le tri : "

FOR X = 1 TO N
    PRINT TABLO(X)
NEXT X

' On fait le tri par insertion

FOR I = 2 TO N
    J = I - 1
    WHILE J > 0 AND TABLO(J) > TABLO(J + 1)
        CALL perm(TABLO(J), TABLO(J + 1))
        J = J - 1
    WEND
NEXT I

' On affiche le tableau final

PRINT "Tableau avec le tri : "

FOR X = 1 TO N
    PRINT TABLO(X)
NEXT X

' Permute 2 variables

SUB perm (A AS INTEGER, B AS INTEGER)
    TEMP = B
    B = A
    A = TEMP
END SUB




