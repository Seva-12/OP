PROGRAM BubbleSort(INPUT, OUTPUT);
{��������� ������ ������ INPUT � OUTPUT}
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;

PROCEDURE CopyFile(VAR InFile, OutFile: TEXT);
BEGIN
  WHILE NOT EOLN(InFile)
  DO
    BEGIN
      READ(InFile, Ch);
      WRITE(OutFile, Ch)
    END;
  WRITELN(OutFile)
END;

PROCEDURE CopyAndSwap(VAR F1, F2: TEXT; VAR Flag: CHAR);
BEGIN
  WHILE Flag ='N'
  DO
    BEGIN
      { �������� F1 � F2,�������� �����������������
       � ����������� ������ �������� ������� �� �������}
      Flag := 'Y';
      RESET(F1);
      REWRITE(F2);
      IF NOT EOLN(F1)
      THEN
        BEGIN
          READ(F1,Ch1);
          WHILE NOT EOLN(F1)
          DO { �� ������� ���� ��� ������� �������� ��� Ch1,Ch2 }
            BEGIN
              READ(F1, Ch2);
              { �������   min(Ch1,Ch2) �  F2, ���������
               ��������������� ������� }
              IF Ch1 <= Ch2
              THEN
                BEGIN
                  WRITE(F2, Ch1);
                  Ch1 := Ch2
                END
              ELSE
                BEGIN
                  WRITE(F2, Ch2);
                  Flag := 'N'
                END
            END;
          WRITELN(F2, Ch1) { ������� ��������� ������ � F2 }
        END; 
      { �������� F2 � F1 }
      REWRITE(F1);
      RESET(F2);
      CopyFile(F2, F1)
    END
END;

BEGIN
   { �������� INPUT � F1 }
  REWRITE(F1);
  CopyFile(INPUT, F1);
  Sorted := 'N';
  CopyAndSwap(F1, F2, Sorted);   
  { �������� F1 � OUTPUT }
  RESET(F1);
  CopyFile(F1, OUTPUT)
END.
