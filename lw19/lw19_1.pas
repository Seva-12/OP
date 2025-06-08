PROGRAM Prime(INPUT, OUTPUT);
CONST
  Min = 2;
  Max = 100;
TYPE
  IntSet = SET OF Min .. Max;
VAR
  Range: IntSet;
  Number, NextNumber: INTEGER;
BEGIN{Prime}
  Range := [Min .. Max];
  NextNumber := Min;
  WHILE NextNumber <= Max
  DO
    BEGIN 
      IF NextNumber IN Range
      THEN
        BEGIN
          WRITE(NextNumber, ' ');
          Number := NextNumber * 2;
          WHILE Number <= Max
          DO
            BEGIN
              Range := Range - [Number];
              Number := Number + NextNumber              
            END;
        END;
      NextNumber := NextNumber + 1        
    END; 
  READLN   
END.{Prime}    
