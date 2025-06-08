PROGRAM CompMonth(INPUT, OUTPUT);

USES
  DateIO;
VAR
  Mo1, Mo2: Month;
BEGIN
  ReadMonth(INPUT, Mo1);
  ReadMonth(INPUT, Mo2);
  IF (Mo1 = NoMonth) OR (Mo2 = NoMonth) 
  THEN
    WRITELN('Неверные исходные данные')
  ELSE
    IF (Mo1 = Mo2)
    THEN
      BEGIN
        WRITE('Оба месяца ');
        WriteMonth(OUTPUT, Mo1)
      END  
    ELSE
      IF (Mo2 > Mo1)
      THEN 
        BEGIN  
          WriteMonth(OUTPUT, Mo1);
          WRITE(' следует за ');
          WriteMonth(OUTPUT, Mo2)
        END
      ELSE
        BEGIN
          WriteMonth(OUTPUT, Mo1);
          WRITE(' предшествует ');
          WriteMonth(OUTPUT, Mo2)
        END
END. 
