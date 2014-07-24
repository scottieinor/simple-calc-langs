       IDENTIFICATION DIVISION.
       PROGRAM-ID. cobol-calc.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. scootys-home.
       OBJECT-COMPUTER. scootys-home.

       DATA DIVISION.
       DECLARE-VARS SECTION.
       05 firstnum  PIC 9(4).
       05 operator  PIC X.
       05 secondnum PIC 9(4).

       PROCEDURE DIVISION.

       BEGIN.
           DISPLAY "Enter first number".
           ACCEPT firstnum FROM COMMAND-LINE.
           DISPLAY "Enter operator (+ - * /)".
           ACCEPT operator FROM COMMAND-LINE.
           DISPLAY "Enter second number".
           ACCEPT secondnum FROM COMMAND-LINE.

           IF operator = '+' THEN
               COMPUTE total = firstnum + secondnum.
           ELSE
               IF operator = '-' THEN
                   COMPUTE total = firstnum - secondnum.
           ELSE
               IF operator = '*' THEN
                   COMPUTE total = firstnum * secondnum.
           ELSE
               IF operator = '/' THEN
                      COMPUTE total = firstnum / secondnum.
           ELSE
                  DISPLAY "Sorry I do not know that operator".
           END-IF.

           STOP RUN.
