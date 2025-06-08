PROGRAM CountRevers(INPUT, OUTPUT);
USES
  Count3;
VAR
  Ch1, Ch2, Ch3, X1, X10, X100: CHAR;
BEGIN
  Start;
  IF NOT EOF(INPUT)
  THEN
    IF NOT EOLN(INPUT)
    THEN
      BEGIN
        READ(INPUT, Ch1);
        IF NOT EOLN(INPUT)
        THEN
          BEGIN
            READ(INPUT, Ch2);
            WHILE NOT  EOLN(INPUT)
            DO
              BEGIN
                READ(INPUT, Ch3);
                IF ((Ch2 < Ch3) AND (Ch2 < Ch1)) OR ((Ch2 > Ch3) AND (Ch2 > Ch1))
                THEN
                  Bump;
                Ch1 := Ch2;
                Ch2 := Ch3
              END
          END
      END;
  Value(X100, X10, X1);
  WRITELN('Количество реверсов в INPUT: ', X100, X10, X1)
END.
