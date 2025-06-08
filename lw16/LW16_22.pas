PROGRAM SarahRevere(INPUT, OUTPUT); 

PROCEDURE Movement(VAR Looking, Land, Sea: BOOLEAN);
VAR
  W1, W2, W3, W4: CHAR;
BEGIN{ReadMonth}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  WHILE NOT EOLN(INPUT)
  DO
    IF NOT EOF(INPUT)
    THEN
      BEGIN      
        W1 := W2;
        W2 := W3;
        W3 := W4;
        READ(INPUT, W4);         
        IF (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd') 
        THEN
          BEGIN 
            Land := TRUE
          END 
        ELSE
          IF (W2 = 's') AND (W3 = 'e') AND (W4 = 'a') 
          THEN 
            BEGIN 
               Sea := TRUE
            END
          ELSE
            Looking := FALSE
        
     END;
END;
     
VAR  
  Looking, Land, Sea: BOOLEAN;  
BEGIN {SarahRevere}   
  {Eieoeaeecaoey}
  Looking := TRUE;
  Land := FALSE;
  Sea := FALSE;
  WHILE Looking AND NOT (Land OR Sea)   
  DO
    BEGIN
      Movement(Looking, Land, Sea);
    END;
  IF Land = TRUE {nicaaiea niiauaiey Sarah}
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Sea = TRUE
    THEN
      WRITELN('The British coming by sea.')
    ELSE
        WRITELN('Sarah didn''t say')  
END.  {SarahRevere}
