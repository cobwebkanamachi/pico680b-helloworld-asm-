PDATA1 EQU  $FF81
       ORG  $0100
       LDX  #MESG
START: LDAB 0,X
       NOP
       NOP
       NOP
       NOP
       BEQ  EXIT
       JSR  PDATA1
       INX
       BRA  START
EXIT:  RTS
MESG:  FCB $04,$0D,$0A
       FCC 'HELLO WORLD'
       FCB $0D,$0A,$04,$00,$00,$00
       END
