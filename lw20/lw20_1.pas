PROGRAM PseudoGraphPrint(INPUT, OUTPUT);
CONST
  Size = 5;
TYPE
  Matrix = SET OF 1 .. (Size * Size);
VAR
  Ch: CHAR;
  S, E, V: Matrix;
  
PROCEDURE PrintLetter(VAR OutFile: TEXT; Letter: Matrix);
VAR
  I: INTEGER;
BEGIN
  FOR I := 1 TO (Size * Size)
  DO
    BEGIN
      IF I IN Letter
      THEN
        WRITE(OutFile, 'X')
      ELSE
        WRITE(OutFile, ' ');
      IF I MOD 5 = 0
      THEN
        WRITELN(OutFile)    
    END
END;

BEGIN
  S := [2, 3, 4, 6, 12, 13, 14, 20, 22, 23, 24];
  E := [1, 2, 3, 4, 6, 11, 12, 13, 14, 16, 21, 22, 23, 24];
  V := [1, 5, 6, 10, 12, 14, 17, 19, 23];
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      READ(INPUT, Ch);
      CASE Ch OF
        'S': PrintLetter(OUTPUT, S);
        'E': PrintLetter(OUTPUT, E);
        'V': PrintLetter(OUTPUT, V)
      ELSE
        WRITELN('WRONG INPUT');
      END;
      WRITELN(OUTPUT)      
    END;
  WRITELN(OUTPUT) 
END.
