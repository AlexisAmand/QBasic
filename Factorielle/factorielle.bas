INPUT N
PRINT facto(N)

FUNCTION facto (F)
    IF F = 0 THEN facto = 1 ELSE facto = F * facto(F - 1)
END FUNCTION



