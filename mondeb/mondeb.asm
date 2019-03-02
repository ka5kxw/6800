        NAM   MONDEB
        CPU   6800
;THIS SOURCE CODE WAS SENT TO WALTER BANKS AT
;THE UNIVERSITY OF WATERLOO BY DON PETERS ON PAPER TAPE
;CROSS ASSEMBLY WAS DONE ON THE U OF W HONEYWELL 66/60
;THE BARCODE AND LISTING WERE SET ON A PHOTON PHOTO-
;TYPESETTER DRIVEN BY THE HONEYWELL.
;
;       M O N D E B  - A MONITOR/DEBUGGER FOR THE M6800
;                        MICROPROCESSOR

; AUTHOR: DON PETERS
; DATE: APRIL 1977
; MEMORY REQ'D: 3K BYTES AT HIGH END OF ADDRESS SPACE

; SEE USER MANUAL FOR CAPABILITIES & INSTRUCTIONS ON
;                       USE

;      * =     $400    ;DEBUG ORG AT 1K
       * =    $F400    ;NORMAL ORIGIN AT 61K



;I/O DEVICE ADDRESSES
ACIA1  EQU    $7F43    ;ACIA #1 - MAIN TERMINAL ACIA
ACIA2  EQU    $7F45    ;ACIA #2 - AUXILIARY TERMINAL
;                       ACIA

;OTHER CONSTANTS
CR     EQU    13       ;CARRIAGE RETURN
LF     EQU    10       ;LINE FEED



START  EQU    *        ;PROGRAM ENTRY POINT
       LDS    #STACK   ;INITIALIZE THE STACK POINTER
       STS    SP       ;SAVE THE POINTER
       JSR    INITAL   ;INITIALIZE VARIABLES


;TYPE OUT MONITOR NAME & VERSION
       JSR    DOCCRLF  ;ADVANCE TO A CLEAN LINE
       LDX    #MSGHED  ;GET ADDRESS OF HEADER
       JSR    OUTSTR   ;TYPE IT

;SET UP DESTINATION OF INPUT LINE
;DEFINE BEGINNING OF INPUT BUFFER
       LDX    #TTYBUF-1   ;GET ADDRESS OF TERMINAL
;                       INPUT BUFFER
       STX    BUFREF   ;SAVE IT

;DEFINE END OF INPUT BUFFER - 72 CHAR CAPACITY, INCL CR
       LDX    #TTYEND
       STX    BUFEND

;DELIMITER CLASS DEFINITION - SPACE OR COMMA (CODE 3)
       LDAA   #3
       STAA   DELIM
       BRA    PROMP1



;PREPARE TO GET A NEW COMMAND
PROMPT JSR    DOCRLF   ;TYPE CR-LF
       INC    BOLFLG   ;SET "BEGINNING OF LINE" FLAG
       LDX    SYNPTR   ;POINT TO CURRENT CHARACTER
       LDAA   X        ;GET IT
       CMPA   #';'     ;SEMICOLON?
       BEQ    GETCMD   ;CONTINUE SCAN IF IT IS,
;                        SKIPPING THE PROMPT

;TYPE PROMPT
PROMP1 LDX    #MSGPRM
       JSR    OUTSTR

       JSR    GETLIN  ;GET LINE OF INPUT

;ABORT LINE ON A CONTROL-C
       CMPB   #3
       BEQ    PROMPT

;SET SYNTAX SCANNING POINTER TO BEGINNING OF
;                       BUFFER/LINE
       LDX    BUFBEG
       STX    SYNPTR

;REPROMPT ON AN EMPTY LINE (FIRST CHAR = CR, LF, OR ;)
       LDAA   1,X      ;GET FIRT CHAR
       JSR    TSTEOL   ;TEST IT
       BEQ    PROMPT   ;IF IT IS, PROMPT AGAIN

;USE LIST 1 WHEN MATCHING
GETCMD LDAA   #1

;NOW GO FOR A MATCH
       JSR    COMAND

;-AND TEST THE RESULT OF THE SCAN
       BEQ    PROMPT   ;REPROMPT IF JUST A CR WAS TYPED
       BGT    JMPCMD   ;GOOD COMMAND IF POSITIVE

;*****
;UNRECOGNIZABLE SYNTAX - POINT TO ERROR
BADSYN LDX    BUFREG   ;GET START OF LINE
;SPACE OVER TO ERROR IN SYNTAX
BADS1  CPX    LINPTR   ;AT ERROR?

       BEQ    BADS2
       JSR    OUTSP    ;OUTPUT A SPACE
       INX             ;NO, MOVE ON
       BRA    BADS1

;THE "EXTRA" CHAR "1" IS COMPENSATED FOR BY THE PROMPT
;                       CHAR ON THE PRECEEDING LINE
BADS2  LDAA   #'1'     ;AT ERROR - GET AN UP-ARROW
       JSR    OUTCHR   ;PRINT IT
       JSR    DOCRLR
       BRA    PROMP1   ;IGNORE ANY SUCCEEDING PACKED
;                        COMMANDS

;*****
;THERE SHOULD BE NO MORE CHARACTERS ON THE INPUT LINE
;                       (EXCEPT DELIMITERS)
NOMORE JSR    SKPDLM
       BCS    PROMPT   ;IF CARRY BIT SET, END OF LINE
;                        (NORMAL)
;THERE IS SOMETHING THERE BUT SHOULDN'T BE
       BRA    BADSYN

;*****
;EXECUTE A COMPUTED "GOTO" TO THE PROPER COMMAND
JMPCMD TAB             ;SAVE COMMAND # IN ACCB
       ASLA            ;MULTIPLY COMMAND BY 2
       ABA             ;ACCA NOW HOLDS COMMAND #
;                       MULTIPLIED BY 3
;ADD IT TO BASE OF JUMP TABLE
       LDAB   #JMPHI   ;GET HI BYTE OF START OF JUMP
;                       TABLE IN ACCB
       ADDA   #JMPLO   ;ADD LO BYTE OF START OF JUMP
;                       TABLE TO ACCA
       ADCB   #0       ;ADD CARRY IF THERE WAS
;                       ONE
;MOVE ACCA & ACCB TO IX (CODE IS WEIRD, BUT BRIEF)
       PSHA
       PSHB
       TSX             ;PUT ADDRESS OF "GOTO" INTO X
       LDX    X        ;GET THE ADDRESS ITSELF
       PULB            ;RESTORE THE STACK
       PULA

       JMP    X        ;JUMP TO RIGHT COMMAND

JMPTBL EQU    *-3

JMPHI  EQU    JMPTBL/256
JMP256 EQU    JMPHI*256
JMPLO  EQU    JMPTBL-JMP256

       JMP    REG
       JMP    GOTO
       JMP    LSEI
       JMP    LCLI
       JMP    COPY
       JMP    BREAL
       JMP    IBASE
       JMP    DBASE
       JMP    CONTIN
       JMP    DISPLA
       JMP    SET
       JMP    VERIFY
       JMP    SEARCH
       JMP    TEST
       JMP    INT
       JMP    LNMI
       JMP    LSWI
       JMP    COMPAT
       JMP    DUMP
       JMP    LOAD
       JMP    DELAY
;*****
;REG - DISPLAY REGISTERS
REG    EQU    *
;PRINT STACK STORED SWI DATA
DISREG LDX    SP       ;GET SAVED STACK POINTER
       INX
;REGISTER NAME TYPEOUT INITIALIZATION
       CLR    COMMNUM  ;START AT BEGINNING OF THE
;                        REGISTER NAME LIST

       BSR    OUT2     ;TYPE CONDITION CODES
       BSR    OUT2     ;TYPE ACCB
       BSR    OUT2     ;TYPE ACCA

       BSR    OUT4     ;TYPE INDEX REG
       BSR    OUT4     ;TYPE PROGRAM COUNTER

;TYPE THE STACK POINTER LOCATION
       BSR    OUT2A4   ;TYPE STACK POINTER ID
       LDX    #SP
       JSR    OUT2BY   ;TYPE THE VALUE

       JMP    NOMORE

;OUTPUT CONTENT OF A 1 BYTE REGISTER
OUT2   BSR    OUT2A4
       JSR    OUT1BY
       INX
       RTS

;OUTPUT CONTENT OF A 2 BYTE RESISTER
OUT4   BSR    OUT2A4
       JSR    OUT2BY
       INX             ;SKIP TO NEXT BYTE IN STACK
       INX             ;SKIP TO NEXT BYTE IN STACK
       RTS

;MISC SETUP FOR REGISTER DISPLAY
OUT2A4 JSR    OUTSP    ;OUTPUT A SPACE
       INC    COMNUM   ;SKIP TO NEXT REGISTER NAME
       LDAA   #5       ;REGISTER NAME IS IN LIST 5
       JSR    TYPCMD   ;TYPE IT
       JSR    OUTEQ    ;TYPE AN "="
       RTS

;ENTER HERE FROM SOFTWARE INTERRUPT
TYPSWI LDX    OUTSTR
;DECREMENT PC SO IT POINTS TO "SWI" INSTRUCTION
       LDX    SP
       TST    7,X      ;TEST LO BYTE OF PC FOR PENDING
;                        BORROW
       BNE    TYPSW1
       DEC    6,X      ;NEED TO BORROW, DEC HI BYTE OF
;                        PC
TYPSW1 DEC    7,X      ;DECR LO BYTE OF PC
       BRA    DISREG   ;GO DISPLAY REGISTERS
;*****
;GOTO - GO TO MEMORY ADDRESS
GOTO   JSR    NUMBER   ;GET DESTINATION
       BEQ    GOTO1    ;IF NONE, USE DEFAULT
       LDX    NBRHI
       STX    LASTGO   ;SAV IT
       JMP    X        ;GO TO DESTINATION

GOTO1  LDX   LASTGO    ;GET LAST GOTO ADDRESS
       JMP    X        ;GO TO IT
;*****
;SEI - SET INTERRUPT MASK
LSEI   SEI
       BRA    COPY3

;*****
;CLI - CLEAR INTERRUPT MASK
LCLI   CLI
       BRA    COPY3

;*****
;COPY - COPY FROM ONE LOCATION TO ANOTHER
COPY   JSR    GTRANG   ;GET SOURCE RANGE INTO RANGLO &
;                        RANGHI
       BLE    COPY2    ;ERROR IF NO SOURCE
       JSR    NUMBER   ;GET DESTINATION
       BLE    COPY2    ;ERROR IF NO DESTINATION

       LDX    RANGLO   ;GET SOURCE ADDRESS POINTER
COPY1  LDAA   X        ;GET BYTE FROM SOURCE
       LDX    NBRHI    ;GET DESTINATION ADDRESS POINTER
       STAA   X        ;SAVE BYTE IN DESTINATION
       INX             ;INC DESTINATION POINTER
       STX    NBRHI    ;SAVE IT
       LDX    RANGLO   ;GET SOURCE ADDRESS POINTER
       CPX    RANGHI   ;COMPARE TO END OF INPUT RANGE
       BEQ    COPY3    ;DONE IF EQUAL
       INX             ;NOT EQUAL, INC SOURCE POINTER
       STX    RANGLO   ;SAVE IT
       BRA    COPY1    ;LOOP FOR NEXT BYTE

       JMP    BADSYN   ;BAD SYNTAX
       JMP    NOMORE   ;SHOULD BE NO MORE ON THE INPUT
;                        LINE

;*****
;BREAK - SET BREAKPOINT AT SPECIFIED ADDRESS & REMOVE
;                       OLD ONE
BREAK  JSR    NUMBER   ;GET BREAKPOINT LOCATION
       BMI    BREAK3   ;IF NOT NUMERIC, LOOK FOR "?"
       BEQ    BREAK2   ;IF NO MODIFIER, REMOVE OLD
;                        BREAKPOINT

;*****
;CHECK IF A "SWI" IS STORED AT THE BREAK ADDRESS
       LDX    BRKADR   ;GET CURRENT BREAK ADDRESS
       LDAA   X        ;AND THE CHAR THERE
       CMPA   #$3F     ;COMPARE TO "SWI"
       BNE    BREAK1   ;EQUAL?
;YES, RESTORE THE OLD INSTRUCTION
       LDAA   BRKINS   ;GET IT
       STAA   X        ;RESTORE IT

;PUT BREAK AT NEWLY SPECIFIED LOCATION
BREAK1 LDX    NBRHI    ;GET NEW BREAKPOINT (BREAK
;                        ADDRESS
       STX    BRKADR   ;SAVE IT
       LDAA   X        ;GET INSTRUCTION STORED THERE
       STAA   BRKINS   ;SAVE IT
       LDAA   #$3F     ;GET CODE FOR SOFTWARE INTERRUPT
       STAA   X        ;PUT IT AT BREAKPOINT
       BRA    BREAK5   ;ALL DONE

;REMOVE BREAKPOINT
BREAK2 LDX    BRKADR   ;GET ADDRESS OF BREAK
       LDAA   X        ;GETINST. THERE
       CMPA   #$3F     ;SWI?
       BNE    BREAK5   ;IF NOT,, RETURN & PROMPT
       LDAA   BRKINS   ;WAS A SWI - GET PREVIOUS INST.
       STAA   X        ;& RESTORE IT
       BRA    BREAK5

;LOOK FOR A QUESTION MARK IN LIST 4
BREAK3 LDAA   #4
       JSR    COMAND   ;SCAN FOR IT
       BLE    BREAK6   ;BAD SYNTAX IF NOT "?"
       LDX    BRKADR   ;IT IS, GET BREAK ADDRESS
       LDAA   X        ;GET INSTRUCTION THERE
       CMPA   #$3F     ;IS IT A "SWI"?
       BEQ    BREAK4   ;IF YES, SAY SO
;NO BREAKPOINT SET
       LDX    #MSBNBR  ;GET THAT MESSAGE
       JSR    OUTSTR   ;SAY IT
       BRA    BREAK5
;BREAKPOINT SET
BREAK4 LDX    #MSGBAT  ;GET THAT MESSAGE
       JSR    OUTSTR   ;SAY IT
       LDX    #BRKADR  ;GET BREAK ADDRESS
       JSR    OUT2BY   ;TYPE IT

BREAK5 JMP    NOMORE
BREAK6 JMP    BADSYN

;*****
;IBASE - SET INPUT BASE
;LOOK FOR HEX, DEC, OR OCT IN LIST #3
IBASE  LDAA   #3
       JSR    COMAND
       BMI    IBASE2   ;UNRECOGNIZABLE BASE, TRY "?"
       BGT    IBASE1
       LDAA   #1       ;NO BASE GIVEN - DEFAULT TO HEX
IBASE1 STAA   IBCODE   ;SAVE BASE CODE
       BRA    BREAK5

;LOOK FOR "?" IN LIST #4
IBASE2 LDAA   IBCODE   ;GET IB CODE IN CASE ITS NEEDED
       PSHA            ;SAVE IT ON STACK TEMPORARILY
       BRA    DBASE4

;*****
;DBASE - SET DISPLAY BASE
;LOOK FOR HEX,DEC,OCT OR BIN IN LIST #3
DBASE  LDAA   #3
       JSR    COMAND
       BMI    DBASE3   ;UNRECOGNIZABLE BASE, TRY "?"
       BGT    DBASE1
       LDAA   #1       ;NO BASE GIVEN - DEFAULT TO HEX
DBASE1 STAA   DBCODE

;COMPUTE THE NUMERIC DISPLAY BASE (FOR THE "DISPLAY"
;                       COMMAND)
       LDX    #DBTBL-1 ;POINT TO HEAD OF
;                        DISPLAY BASE TABLE
DBASE2 INX             ;INC TABLE POINTER
       DECA            ;DECR DISPLAY BASE CODE
       BNE    DBASE2   ;LOOP IF NOT EQUAL
       LDAA   X        ;EQUAL - GET NUMERIC BASE FROM
;                        TABLE
       STAA   DBNR     ;SAVE IT
       BRA    BREAK5   ;DONE

;DISPLAY BASE TABLE
DBTBL  DB     16
       DB     10
       DB     8
       DB     1





;......YYYYYYYZZZZZZZZZ;
