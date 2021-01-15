100 ' ********************
110 ' *                  *
120 ' * CHIFFRES ROMAINS *
130 ' *                  *
140 ' * (c)1985 MICROTOM *
150 ' *                  *
160 ' *  ET F.J. BAYARD  *
170 ' *                  *
180 ' ********************
190 '
200 DIM N$(13): ' CHIFFRES ROMAINS
210 DIM N%(13): ' EQUIVALENTS ARABES
220 DATA 1000,M,900,CM,500,D,400,CD
230 DATA 100,C,90,XC,50,L,40,XL,10,X
240 DATA 9,IX,5,V,4,IV,1,I
250 FOR I = 1 TO 13
    260 READ N%(I), N$(I)
270 NEXT I
280 ' ==============================
300 INPUT "NOMBRE "; N%
310 IF N% = 0 THEN 350
320 GOSUB 500
330 PRINT TAB(6); "=> "; N$
340 GOTO 300
350 END
360 ' ==============================
500 C = 1: N$ = ""
510 IF N% < N%(C) THEN C = C + 1: GOTO 510
520 N$ = N$ + N$(C): N% = N% - N%(C)
530 IF N% = 0 THEN RETURN
540 GOTO 510
