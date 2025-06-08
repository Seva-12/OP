PROGRAM CountInput(INPUT, OUTPUT);
USES
  Count3;
VAR
  Ch, X1, X10, X100: CHAR;
BEGIN
  Start;
  WHILE NOT EOF(INPUT)
  DO 
    BEGIN
      IF NOT EOLN(INPUT)
      THEN
        BEGIN
          READ(INPUT, Ch);
          Bump
        END
      ELSE
        READLN
    END;
  Value(X100, X10, X1);
  WRITELN('Количество символов в INPUT: ', X100, X10, X1)
END.          
