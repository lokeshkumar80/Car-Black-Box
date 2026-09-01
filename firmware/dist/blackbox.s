subtitle "Microchip MPLAB XC8 C Compiler v2.46 (Free license) build 20240104201356 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "/opt/microchip/xc8/v2.46/pic/include/proc/16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,___lwdiv
	FNCALL	_main,_change_password
	FNCALL	_main,_clcd_print
	FNCALL	_main,_clcd_write
	FNCALL	_main,_clear_log
	FNCALL	_main,_clear_screen
	FNCALL	_main,_display_dash_board
	FNCALL	_main,_eeprom_write
	FNCALL	_main,_init_config
	FNCALL	_main,_log_car_event
	FNCALL	_main,_login
	FNCALL	_main,_login_menu
	FNCALL	_main,_read_adc
	FNCALL	_main,_read_digital_keypad
	FNCALL	_main,_strcpy
	FNCALL	_main,_view_log
	FNCALL	_view_log,___awmod
	FNCALL	_view_log,___bmul
	FNCALL	_view_log,_clcd_print
	FNCALL	_view_log,_clcd_putch
	FNCALL	_view_log,_eeprom_read
	FNCALL	_login_menu,_clcd_print
	FNCALL	_login_menu,_clcd_putch
	FNCALL	_login_menu,_clear_screen
	FNCALL	_login,___awdiv
	FNCALL	_login,___awmod
	FNCALL	_login,_clcd_print
	FNCALL	_login,_clcd_putch
	FNCALL	_login,_clcd_write
	FNCALL	_login,_clear_screen
	FNCALL	_login,_eeprom_read
	FNCALL	_login,_strncmp
	FNCALL	_log_car_event,___awdiv
	FNCALL	_log_car_event,___awmod
	FNCALL	_log_car_event,_get_time
	FNCALL	_log_car_event,_log_event
	FNCALL	_log_car_event,_strncpy
	FNCALL	_log_event,___bmul
	FNCALL	_log_event,_eeprom_write
	FNCALL	_init_config,_init_adc
	FNCALL	_init_config,_init_clcd
	FNCALL	_init_config,_init_digital_keypad
	FNCALL	_init_config,_init_ds1307
	FNCALL	_init_config,_init_i2c
	FNCALL	_init_config,_init_timer2
	FNCALL	_init_i2c,___lldiv
	FNCALL	_init_ds1307,_read_ds1307
	FNCALL	_init_ds1307,_write_ds1307
	FNCALL	_write_ds1307,_i2c_start
	FNCALL	_write_ds1307,_i2c_stop
	FNCALL	_write_ds1307,_i2c_write
	FNCALL	_init_clcd,_init_display_controller
	FNCALL	_init_display_controller,_clcd_write
	FNCALL	_display_dash_board,___awdiv
	FNCALL	_display_dash_board,___awmod
	FNCALL	_display_dash_board,_clcd_print
	FNCALL	_display_dash_board,_clcd_putch
	FNCALL	_display_dash_board,_display_time
	FNCALL	_display_time,_clcd_putch
	FNCALL	_display_time,_get_time
	FNCALL	_get_time,_read_ds1307
	FNCALL	_read_ds1307,_i2c_read
	FNCALL	_read_ds1307,_i2c_rep_start
	FNCALL	_read_ds1307,_i2c_start
	FNCALL	_read_ds1307,_i2c_stop
	FNCALL	_read_ds1307,_i2c_write
	FNCALL	_i2c_write,_i2c_wait_for_idle
	FNCALL	_i2c_rep_start,_i2c_start
	FNCALL	_i2c_rep_start,_i2c_stop
	FNCALL	_i2c_stop,_i2c_wait_for_idle
	FNCALL	_i2c_start,_i2c_wait_for_idle
	FNCALL	_i2c_read,_i2c_wait_for_idle
	FNCALL	_clear_log,_clcd_print
	FNCALL	_change_password,_clcd_print
	FNCALL	_change_password,_clcd_putch
	FNCALL	_change_password,_clcd_write
	FNCALL	_change_password,_clear_screen
	FNCALL	_change_password,_eeprom_write
	FNCALL	_change_password,_strncmp
	FNCALL	_clear_screen,_clcd_write
	FNCALL	_clcd_putch,_clcd_write
	FNCALL	_clcd_print,_clcd_write
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_pos
	global	read_digital_keypad@once
	global	_menu
	global	main@F1228
	global	_gear
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"car_black_box_def.c"
	line	16

;initializer for _pos
	retlw	0FFh
	file	"digital_keypad.c"
	line	13

;initializer for read_digital_keypad@once
	retlw	01h
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"car_black_box_def.c"
	line	24

;initializer for _menu
	retlw	low(((STR_12)|8000h))
	retlw	high(((STR_12)|8000h))

	retlw	low(((STR_13)|8000h))
	retlw	high(((STR_13)|8000h))

	retlw	low(((STR_14)|8000h))
	retlw	high(((STR_14)|8000h))

	file	"main.c"
	line	42

;initializer for main@F1228
	retlw	04Fh
	retlw	04Eh
	retlw	low(0)
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	26

;initializer for _gear
	retlw	low(((STR_1)|8000h))
	retlw	high(((STR_1)|8000h))

	retlw	low(((STR_2)|8000h))
	retlw	high(((STR_2)|8000h))

	retlw	low(((STR_3)|8000h))
	retlw	high(((STR_3)|8000h))

	retlw	low(((STR_4)|8000h))
	retlw	high(((STR_4)|8000h))

	retlw	low(((STR_5)|8000h))
	retlw	high(((STR_5)|8000h))

	retlw	low(((STR_6)|8000h))
	retlw	high(((STR_6)|8000h))

	global	_clock_reg
	global	change_password@once
	global	change_password@pos
	global	_event_count
	global	isr@count
	global	view_log@rpos
	global	login_menu@menu_pos
	global	login@i
	global	login@attempt_rem
	global	_return_time
	global	_sec
	global	change_password@pwd
	global	_time
	global	login@npassword
	global	_log
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_STATUSbits
_STATUSbits	set	0x3
	global	_PORTB
_PORTB	set	0x6
	global	_ADRESH
_ADRESH	set	0x1E
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_PORTD
_PORTD	set	0x8
	global	_T2CKPS1
_T2CKPS1	set	0x91
	global	_T2CKPS0
_T2CKPS0	set	0x90
	global	_TMR2IF
_TMR2IF	set	0x61
	global	_nDONE
_nDONE	set	0xFA
	global	_GO
_GO	set	0xFA
	global	_ADON
_ADON	set	0xF8
	global	_ADCS0
_ADCS0	set	0xFE
	global	_ADCS1
_ADCS1	set	0xFF
	global	_SSPEN
_SSPEN	set	0xA5
	global	_SSPM3
_SSPM3	set	0xA3
	global	_RE1
_RE1	set	0x49
	global	_RE2
_RE2	set	0x4A
	global	_TMR2ON
_TMR2ON	set	0x92
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_PR2
_PR2	set	0x92
	global	_TRISB
_TRISB	set	0x86
	global	_ADRESL
_ADRESL	set	0x9E
	global	_ADCON1
_ADCON1	set	0x9F
	global	_SSPCON2
_SSPCON2	set	0x91
	global	_SSPADD
_SSPADD	set	0x93
	global	_TRISD
_TRISD	set	0x88
	global	_TMR2IE
_TMR2IE	set	0x461
	global	_ACKSTAT
_ACKSTAT	set	0x48E
	global	_ACKEN
_ACKEN	set	0x48C
	global	_ACKDT
_ACKDT	set	0x48D
	global	_RCEN
_RCEN	set	0x48B
	global	_PEN
_PEN	set	0x48A
	global	_SEN
_SEN	set	0x488
	global	_R_nW
_R_nW	set	0x4A2
	global	_TRISE1
_TRISE1	set	0x449
	global	_TRISE2
_TRISE2	set	0x44A
	global	_EEDATA
_EEDATA	set	0x10C
	global	_EEADR
_EEADR	set	0x10D
	global	_EECON2
_EECON2	set	0x18D
	global	_EECON1
_EECON1	set	0x18C
	global	_EECON1bits
_EECON1bits	set	0x18C
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
	global __stringbase
__stringbase:
	global    __end_of__stringtab
__end_of__stringtab:
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
	
STR_8:	
	retlw	32	;' '
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	32	;' '
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	83	;'S'
	retlw	87	;'W'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_18:	
	retlw	32	;' '
	retlw	87	;'W'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	83	;'S'
	retlw	87	;'W'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	69	;'E'
	retlw	32	;' '
	retlw	32	;' '
	retlw	83	;'S'
	retlw	80	;'P'
	retlw	0
psect	stringtext
	
STR_17:	
	retlw	87	;'W'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	54	;'6'
	retlw	48	;'0'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	0
psect	stringtext
	
STR_16:	
	retlw	32	;' '
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_25:	
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	45	;'-'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	101	;'e'
	retlw	119	;'w'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	119	;'w'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_26:	
	retlw	32	;' '
	retlw	80	;'P'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	119	;'w'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	35	;'#'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	69	;'E'
	retlw	32	;' '
	retlw	32	;' '
	retlw	83	;'S'
	retlw	80	;'P'
	retlw	0
psect	stringtext
	
STR_19:	
	retlw	32	;' '
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	0
psect	stringtext
	
STR_22:	
	retlw	32	;' '
	retlw	76	;'L'
	retlw	111	;'o'
	retlw	103	;'g'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_23:	
	retlw	32	;' '
	retlw	83	;'S'
	retlw	117	;'u'
	retlw	99	;'c'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	102	;'f'
	retlw	117	;'u'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	67	;'C'
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	119	;'w'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_24:	
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	101	;'e'
	retlw	119	;'w'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	119	;'w'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	67	;'C'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	103	;'g'
	retlw	0
psect	stringtext
	
STR_29:	
	retlw	32	;' '
	retlw	70	;'F'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	86	;'V'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	119	;'w'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	103	;'g'
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	32	;' '
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	103	;'g'
	retlw	115	;'s'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	67	;'C'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	71	;'G'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	71	;'G'
	retlw	50	;'2'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	71	;'G'
	retlw	51	;'3'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	71	;'G'
	retlw	52	;'4'
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	67	;'C'
	retlw	76	;'L'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	71	;'G'
	retlw	78	;'N'
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	67	;'C'
	retlw	80	;'P'
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	71	;'G'
	retlw	82	;'R'
	retlw	0
psect	stringtext
STR_28	equ	STR_26+0
STR_27	equ	STR_23+0
STR_20	equ	STR_8+0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "ON"
	config BOREN = "ON"
	config LVP = "OFF"
	config CPD = "OFF"
	config WRT = "OFF"
	config CP = "OFF"
	file	"dist/blackbox.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"car_black_box_def.c"
	line	16
_pos:
       ds      1

psect	dataCOMMON
	file	"digital_keypad.c"
	line	13
read_digital_keypad@once:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_clock_reg:
       ds      3

change_password@once:
       ds      2

change_password@pos:
       ds      2

_event_count:
       ds      2

isr@count:
       ds      2

view_log@rpos:
       ds      1

login_menu@menu_pos:
       ds      1

login@i:
       ds      1

login@attempt_rem:
       ds      1

_return_time:
       ds      1

_sec:
       ds      1

change_password@pwd:
       ds      9

_time:
       ds      7

login@npassword:
       ds      4

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"car_black_box_def.c"
	line	24
_menu:
       ds      6

psect	dataBANK0
	file	"main.c"
	line	42
main@F1228:
       ds      3

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_log:
       ds      11

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"main.c"
	line	26
_gear:
       ds      12

	file	"dist/blackbox.s"
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+12)
	movwf btemp-1
	movlw high(__pidataBANK1)
	movwf btemp
	movlw low(__pidataBANK1)
	movwf btemp+1
	movlw low(__pdataBANK1)
	movwf fsr
	fcall init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	movlw low(__pdataBANK0+9)
	movwf btemp-1
	movlw high(__pidataBANK0)
	movwf btemp
	movlw low(__pidataBANK0)
	movwf btemp+1
	movlw low(__pdataBANK0)
	movwf fsr
	fcall init_ram0
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+0Bh)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+025h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@j
main@j:	; 2 bytes @ 0x0
	ds	2
	global	main@menu_pos
main@menu_pos:	; 1 bytes @ 0x2
	ds	1
	global	main@event
main@event:	; 3 bytes @ 0x3
	ds	3
	global	main@gr
main@gr:	; 1 bytes @ 0x6
	ds	1
	global	main@control_flag
main@control_flag:	; 1 bytes @ 0x7
	ds	1
	global	main@reset_flag
main@reset_flag:	; 1 bytes @ 0x8
	ds	1
	global	main@speed
main@speed:	; 1 bytes @ 0x9
	ds	1
	global	main@key
main@key:	; 1 bytes @ 0xA
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_adc:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_init_ds1307:	; 1 bytes @ 0x0
?_init_digital_keypad:	; 1 bytes @ 0x0
?_init_timer2:	; 1 bytes @ 0x0
?_read_digital_keypad:	; 1 bytes @ 0x0
?_clear_screen:	; 1 bytes @ 0x0
?_clear_log:	; 1 bytes @ 0x0
?_i2c_stop:	; 1 bytes @ 0x0
?_read_ds1307:	; 1 bytes @ 0x0
?_eeprom_read:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_init_display_controller:	; 1 bytes @ 0x0
?_i2c_wait_for_idle:	; 1 bytes @ 0x0
?_i2c_start:	; 1 bytes @ 0x0
?_i2c_rep_start:	; 1 bytes @ 0x0
?_i2c_read:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
??_isr:	; 1 bytes @ 0x0
?_get_time:	; 1 bytes @ 0x0
?_display_time:	; 1 bytes @ 0x0
?_log_event:	; 1 bytes @ 0x0
?_i2c_write:	; 2 bytes @ 0x0
	ds	2
??_init_adc:	; 1 bytes @ 0x2
??_init_digital_keypad:	; 1 bytes @ 0x2
??_init_timer2:	; 1 bytes @ 0x2
?_eeprom_write:	; 1 bytes @ 0x2
??_read_digital_keypad:	; 1 bytes @ 0x2
?_strcpy:	; 1 bytes @ 0x2
?_clcd_write:	; 1 bytes @ 0x2
?_strncpy:	; 1 bytes @ 0x2
??_eeprom_read:	; 1 bytes @ 0x2
??_i2c_wait_for_idle:	; 1 bytes @ 0x2
?___bmul:	; 1 bytes @ 0x2
	global	?_read_adc
?_read_adc:	; 2 bytes @ 0x2
	global	?_strncmp
?_strncmp:	; 2 bytes @ 0x2
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x2
	global	?___awmod
?___awmod:	; 2 bytes @ 0x2
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x2
	global	clcd_write@mode
clcd_write@mode:	; 1 bytes @ 0x2
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0x2
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x2
	global	strncmp@r
strncmp@r:	; 1 bytes @ 0x2
	global	i2c_wait_for_idle@guard
i2c_wait_for_idle@guard:	; 2 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	global	strcpy@src
strcpy@src:	; 2 bytes @ 0x2
	global	strncpy@s
strncpy@s:	; 2 bytes @ 0x2
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x2
	ds	1
??_eeprom_write:	; 1 bytes @ 0x3
??_clcd_write:	; 1 bytes @ 0x3
??___bmul:	; 1 bytes @ 0x3
	global	read_digital_keypad@mode
read_digital_keypad@mode:	; 1 bytes @ 0x3
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x3
	global	strncmp@n
strncmp@n:	; 2 bytes @ 0x3
	ds	1
??_read_adc:	; 1 bytes @ 0x4
??_strcpy:	; 1 bytes @ 0x4
??_i2c_stop:	; 1 bytes @ 0x4
??_i2c_start:	; 1 bytes @ 0x4
??_i2c_rep_start:	; 1 bytes @ 0x4
??_i2c_read:	; 1 bytes @ 0x4
??_i2c_write:	; 1 bytes @ 0x4
	global	i2c_read@ack
i2c_read@ack:	; 1 bytes @ 0x4
	global	i2c_write@data
i2c_write@data:	; 1 bytes @ 0x4
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0x4
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x4
	global	read_adc@adc_reg_val
read_adc@adc_reg_val:	; 2 bytes @ 0x4
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x4
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x4
	global	strncpy@n
strncpy@n:	; 2 bytes @ 0x4
	ds	1
?_write_ds1307:	; 1 bytes @ 0x5
??_strncmp:	; 1 bytes @ 0x5
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0x5
	global	i2c_read@data
i2c_read@data:	; 1 bytes @ 0x5
	global	write_ds1307@data
write_ds1307@data:	; 1 bytes @ 0x5
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x5
	ds	1
??_clear_screen:	; 1 bytes @ 0x6
?_clcd_print:	; 1 bytes @ 0x6
??_read_ds1307:	; 1 bytes @ 0x6
??_write_ds1307:	; 1 bytes @ 0x6
??_strncpy:	; 1 bytes @ 0x6
??_init_display_controller:	; 1 bytes @ 0x6
??_log_event:	; 1 bytes @ 0x6
??___awdiv:	; 1 bytes @ 0x6
??___awmod:	; 1 bytes @ 0x6
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	read_ds1307@addr
read_ds1307@addr:	; 1 bytes @ 0x6
	global	write_ds1307@addr
write_ds1307@addr:	; 1 bytes @ 0x6
	global	clcd_print@str
clcd_print@str:	; 2 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x6
	ds	1
	global	read_ds1307@data
read_ds1307@data:	; 1 bytes @ 0x7
	global	log_event@add
log_event@add:	; 1 bytes @ 0x7
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x7
	global	strcpy@d
strcpy@d:	; 1 bytes @ 0x7
	global	strncmp@l
strncmp@l:	; 1 bytes @ 0x7
	ds	1
??_init_clcd:	; 1 bytes @ 0x8
??_init_ds1307:	; 1 bytes @ 0x8
??_get_time:	; 1 bytes @ 0x8
	global	clcd_print@addr
clcd_print@addr:	; 1 bytes @ 0x8
	global	init_ds1307@dummy
init_ds1307@dummy:	; 1 bytes @ 0x8
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x8
	global	strcpy@dest
strcpy@dest:	; 1 bytes @ 0x8
	global	log_event@i
log_event@i:	; 2 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	ds	1
??_clcd_print:	; 1 bytes @ 0x9
?_clcd_putch:	; 1 bytes @ 0x9
	global	clcd_putch@addr
clcd_putch@addr:	; 1 bytes @ 0x9
	global	clear_log@reset_flag
clear_log@reset_flag:	; 1 bytes @ 0x9
	ds	1
??_init_config:	; 1 bytes @ 0xA
??_clcd_putch:	; 1 bytes @ 0xA
??_display_time:	; 1 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_clear_log:	; 1 bytes @ 0x0
??___lldiv:	; 1 bytes @ 0x0
??___lwdiv:	; 1 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	strncpy@d
strncpy@d:	; 1 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x1
	global	strncpy@cp
strncpy@cp:	; 1 bytes @ 0x1
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x2
	ds	2
?_log_car_event:	; 1 bytes @ 0x4
	global	clcd_putch@data
clcd_putch@data:	; 1 bytes @ 0x4
	global	log_car_event@event
log_car_event@event:	; 2 bytes @ 0x4
	ds	1
?_display_dash_board:	; 1 bytes @ 0x5
?_login:	; 1 bytes @ 0x5
?_login_menu:	; 1 bytes @ 0x5
?_view_log:	; 1 bytes @ 0x5
?_change_password:	; 1 bytes @ 0x5
	global	display_dash_board@speed
display_dash_board@speed:	; 1 bytes @ 0x5
	global	login@reset_flag
login@reset_flag:	; 1 bytes @ 0x5
	global	login_menu@reset_flag
login_menu@reset_flag:	; 1 bytes @ 0x5
	global	view_log@reset_flag
view_log@reset_flag:	; 1 bytes @ 0x5
	global	change_password@reset_flag
change_password@reset_flag:	; 1 bytes @ 0x5
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x5
	ds	1
?_init_i2c:	; 1 bytes @ 0x6
??_display_dash_board:	; 1 bytes @ 0x6
??_login:	; 1 bytes @ 0x6
??_login_menu:	; 1 bytes @ 0x6
??_view_log:	; 1 bytes @ 0x6
??_change_password:	; 1 bytes @ 0x6
	global	log_car_event@speed
log_car_event@speed:	; 1 bytes @ 0x6
	global	init_i2c@baud
init_i2c@baud:	; 4 bytes @ 0x6
	ds	1
??_log_car_event:	; 1 bytes @ 0x7
	ds	1
	global	display_dash_board@event
display_dash_board@event:	; 1 bytes @ 0x8
	global	login_menu@key
login_menu@key:	; 1 bytes @ 0x8
	global	view_log@rlog
view_log@rlog:	; 11 bytes @ 0x8
	ds	1
	global	change_password@key
change_password@key:	; 1 bytes @ 0x9
	global	login@spassword
login@spassword:	; 4 bytes @ 0x9
	ds	1
??_init_i2c:	; 1 bytes @ 0xA
	global	change_password@i
change_password@i:	; 2 bytes @ 0xA
	ds	3
	global	login@key
login@key:	; 1 bytes @ 0xD
	ds	1
	global	login@j
login@j:	; 2 bytes @ 0xE
	ds	5
	global	view_log@add
view_log@add:	; 1 bytes @ 0x13
	ds	1
	global	view_log@key
view_log@key:	; 1 bytes @ 0x14
	ds	1
	global	view_log@i
view_log@i:	; 2 bytes @ 0x15
	ds	2
??_main:	; 1 bytes @ 0x17
	ds	2
;!
;!Data Sizes:
;!    Strings     276
;!    Constant    0
;!    Data        23
;!    BSS         48
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      12
;!    BANK0            80     25      71
;!    BANK1            80     11      34
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    clcd_print@str	PTR const unsigned char  size(2) Largest target is 18
;!		 -> main@event(BANK1[3]), STR_12(CODE[9]), STR_13(CODE[10]), STR_14(CODE[15]), 
;!		 -> STR_15(CODE[17]), STR_16(CODE[17]), STR_17(CODE[17]), STR_18(CODE[17]), 
;!		 -> STR_19(CODE[16]), STR_20(CODE[18]), STR_21(CODE[9]), STR_22(CODE[15]), 
;!		 -> STR_23(CODE[15]), STR_24(CODE[14]), STR_25(CODE[17]), STR_26(CODE[17]), 
;!		 -> STR_27(CODE[15]), STR_28(CODE[17]), STR_29(CODE[9]), STR_8(CODE[18]), 
;!		 -> STR_9(CODE[17]), 
;!
;!    display_dash_board@event	PTR unsigned char  size(1) Largest target is 3
;!		 -> main@event(BANK1[3]), 
;!
;!    gear	PTR unsigned char [6] size(2) Largest target is 3
;!		 -> STR_1(CODE[3]), STR_2(CODE[3]), STR_3(CODE[3]), STR_4(CODE[3]), 
;!		 -> STR_5(CODE[3]), STR_6(CODE[3]), 
;!
;!    log_car_event@event	PTR unsigned char  size(2) Largest target is 3
;!		 -> main@event(BANK1[3]), STR_10(CODE[3]), STR_11(CODE[3]), 
;!
;!    menu	PTR unsigned char [3] size(2) Largest target is 15
;!		 -> STR_12(CODE[9]), STR_13(CODE[10]), STR_14(CODE[15]), 
;!
;!    sp__strcpy	PTR unsigned char  size(1) Largest target is 3
;!		 -> main@event(BANK1[3]), 
;!
;!    sp__strncpy	PTR unsigned char  size(1) Largest target is 11
;!		 -> log(BANK1[11]), 
;!
;!    strcpy@d	PTR unsigned char  size(1) Largest target is 3
;!		 -> main@event(BANK1[3]), 
;!
;!    strcpy@dest	PTR unsigned char  size(1) Largest target is 3
;!		 -> main@event(BANK1[3]), 
;!
;!    strcpy@src	PTR const unsigned char  size(2) Largest target is 3
;!		 -> STR_1(CODE[3]), STR_2(CODE[3]), STR_3(CODE[3]), STR_4(CODE[3]), 
;!		 -> STR_5(CODE[3]), STR_6(CODE[3]), STR_7(CODE[3]), 
;!
;!    strncmp@l	PTR const unsigned char  size(1) Largest target is 9
;!		 -> change_password@pwd(BANK0[9]), login@npassword(BANK0[4]), 
;!
;!    strncmp@r	PTR const unsigned char  size(1) Largest target is 9
;!		 -> change_password@pwd(BANK0[9]), login@spassword(BANK0[4]), 
;!
;!    strncpy@cp	PTR unsigned char  size(1) Largest target is 11
;!		 -> log(BANK1[11]), 
;!
;!    strncpy@d	PTR unsigned char  size(1) Largest target is 11
;!		 -> log(BANK1[11]), 
;!
;!    strncpy@s	PTR const unsigned char  size(2) Largest target is 7
;!		 -> main@event(BANK1[3]), STR_10(CODE[3]), STR_11(CODE[3]), time(BANK0[7]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___lwdiv
;!    _main->_clear_log
;!    _view_log->_clcd_putch
;!    _login_menu->_clcd_putch
;!    _login->_clcd_putch
;!    _log_car_event->_log_event
;!    _log_event->___bmul
;!    _init_i2c->___lldiv
;!    _init_ds1307->_read_ds1307
;!    _write_ds1307->_i2c_write
;!    _init_clcd->_init_display_controller
;!    _init_display_controller->_clcd_write
;!    _display_dash_board->_clcd_putch
;!    _display_time->_clcd_putch
;!    _get_time->_read_ds1307
;!    _read_ds1307->_i2c_read
;!    _i2c_write->_i2c_wait_for_idle
;!    _i2c_stop->_i2c_wait_for_idle
;!    _i2c_start->_i2c_wait_for_idle
;!    _i2c_read->_i2c_wait_for_idle
;!    _clear_log->_clcd_print
;!    _change_password->_clcd_putch
;!    _clear_screen->_clcd_write
;!    _clcd_putch->___awmod
;!    _clcd_print->_clcd_write
;!    ___lwdiv->_read_adc
;!
;!Critical Paths under _isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_view_log
;!    _view_log->_clcd_putch
;!    _login_menu->_clcd_putch
;!    _login->_clcd_putch
;!    _log_car_event->___awdiv
;!    _init_config->_init_i2c
;!    _init_i2c->___lldiv
;!    _display_dash_board->_clcd_putch
;!    _display_time->_clcd_putch
;!    _change_password->_clcd_putch
;!    _clcd_putch->___awdiv
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                13    13      0  110326
;!                                             23 BANK0      2     2      0
;!                                              0 BANK1     11    11      0
;!                            ___lwdiv
;!                    _change_password
;!                         _clcd_print
;!                         _clcd_write
;!                          _clear_log
;!                       _clear_screen
;!                 _display_dash_board
;!                       _eeprom_write
;!                        _init_config
;!                      _log_car_event
;!                              _login
;!                         _login_menu
;!                           _read_adc
;!                _read_digital_keypad
;!                             _strcpy
;!                           _view_log
;! ---------------------------------------------------------------------------------
;! (1) _view_log                                            18    17      1   13483
;!                                              5 BANK0     18    17      1
;!                            ___awmod
;!                             ___bmul
;!                         _clcd_print
;!                         _clcd_putch
;!                        _eeprom_read
;! ---------------------------------------------------------------------------------
;! (2) _strcpy                                               7     5      2     481
;!                                              2 COMMON     7     5      2
;! ---------------------------------------------------------------------------------
;! (1) _read_digital_keypad                                  2     2      0      31
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _read_adc                                             4     2      2      34
;!                                              2 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _login_menu                                           4     3      1   13577
;!                                              5 BANK0      4     3      1
;!                         _clcd_print
;!                         _clcd_putch
;!                       _clear_screen
;! ---------------------------------------------------------------------------------
;! (1) _login                                               11    10      1   18777
;!                                              5 BANK0     11    10      1
;!                            ___awdiv
;!                            ___awmod
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                       _clear_screen
;!                        _eeprom_read
;!                            _strncmp
;! ---------------------------------------------------------------------------------
;! (2) _eeprom_read                                          2     2      0      31
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _log_car_event                                        5     2      3    5333
;!                                              4 BANK0      5     2      3
;!                            ___awdiv
;!                            ___awmod
;!                           _get_time
;!                          _log_event
;!                            _strncpy
;! ---------------------------------------------------------------------------------
;! (3) _strncpy                                              9     5      4     634
;!                                              2 COMMON     7     3      4
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _log_event                                            4     4      0    1023
;!                                              6 COMMON     4     4      0
;!                             ___bmul
;!                       _eeprom_write
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               4     3      1     316
;!                                              2 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0    3392
;!                           _init_adc
;!                          _init_clcd
;!                _init_digital_keypad
;!                        _init_ds1307
;!                           _init_i2c
;!                        _init_timer2
;! ---------------------------------------------------------------------------------
;! (2) _init_timer2                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_i2c                                             8     4      4     542
;!                                              6 BANK0      8     4      4
;!                            ___lldiv
;! ---------------------------------------------------------------------------------
;! (3) ___lldiv                                             14     6      8     421
;!                                              2 COMMON     8     0      8
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (2) _init_ds1307                                          1     1      0     718
;!                                              8 COMMON     1     1      0
;!                        _read_ds1307
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (3) _write_ds1307                                         2     1      1     285
;!                                              5 COMMON     2     1      1
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (2) _init_digital_keypad                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_clcd                                            0     0      0    2132
;!            _init_display_controller
;! ---------------------------------------------------------------------------------
;! (3) _init_display_controller                              2     2      0    2132
;!                                              6 COMMON     2     2      0
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _init_adc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _display_dash_board                                   4     3      1   19058
;!                                              5 BANK0      4     3      1
;!                            ___awdiv
;!                            ___awmod
;!                         _clcd_print
;!                         _clcd_putch
;!                       _display_time
;! ---------------------------------------------------------------------------------
;! (2) _display_time                                         0     0      0    5439
;!                         _clcd_putch
;!                           _get_time
;! ---------------------------------------------------------------------------------
;! (2) _get_time                                             1     1      0     365
;!                                              8 COMMON     1     1      0
;!                        _read_ds1307
;! ---------------------------------------------------------------------------------
;! (3) _read_ds1307                                          2     2      0     365
;!                                              6 COMMON     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (4) _i2c_write                                            1     1      0      65
;!                                              4 COMMON     1     1      0
;!                  _i2c_wait_for_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_rep_start                                        0     0      0      68
;!                          _i2c_start
;!                           _i2c_stop
;! ---------------------------------------------------------------------------------
;! (4) _i2c_stop                                             0     0      0      34
;!                  _i2c_wait_for_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_start                                            0     0      0      34
;!                  _i2c_wait_for_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_read                                             2     2      0      99
;!                                              4 COMMON     2     2      0
;!                  _i2c_wait_for_idle
;! ---------------------------------------------------------------------------------
;! (5) _i2c_wait_for_idle                                    2     2      0      34
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4    1153
;!                                              2 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     985
;!                                              2 COMMON     5     1      4
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _clear_log                                            4     4      0    6219
;!                                              9 COMMON     1     1      0
;!                                              0 BANK0      3     3      0
;!                         _clcd_print
;! ---------------------------------------------------------------------------------
;! (1) _change_password                                      7     6      1   17130
;!                                              5 BANK0      7     6      1
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                       _clear_screen
;!                       _eeprom_write
;!                            _strncmp
;! ---------------------------------------------------------------------------------
;! (2) _strncmp                                              6     3      3     689
;!                                              2 COMMON     6     3      3
;! ---------------------------------------------------------------------------------
;! (3) _eeprom_write                                         3     2      1     602
;!                                              2 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (2) _clear_screen                                         1     1      0    2132
;!                                              6 COMMON     1     1      0
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _clcd_putch                                           2     1      1    5074
;!                                              9 COMMON     1     0      1
;!                                              4 BANK0      1     1      0
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _clcd_print                                           3     0      3    6188
;!                                              6 COMMON     3     0      3
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (3) _clcd_write                                           4     3      1    2132
;!                                              2 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) ___lwdiv                                              8     4      4     421
;!                                              6 COMMON     4     0      4
;!                                              0 BANK0      4     4      0
;!                           _read_adc (ARG)
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (8) _isr                                                  2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___lwdiv
;!     _read_adc (ARG)
;!   _change_password
;!     _clcd_print
;!       _clcd_write
;!     _clcd_putch
;!       ___awdiv (ARG)
;!       ___awmod (ARG)
;!       _clcd_write (ARG)
;!     _clcd_write
;!     _clear_screen
;!       _clcd_write
;!     _eeprom_write
;!     _strncmp
;!   _clcd_print
;!   _clcd_write
;!   _clear_log
;!     _clcd_print
;!   _clear_screen
;!   _display_dash_board
;!     ___awdiv
;!     ___awmod
;!     _clcd_print
;!     _clcd_putch
;!     _display_time
;!       _clcd_putch
;!       _get_time
;!         _read_ds1307
;!           _i2c_read
;!             _i2c_wait_for_idle
;!           _i2c_rep_start
;!             _i2c_start
;!               _i2c_wait_for_idle
;!             _i2c_stop
;!               _i2c_wait_for_idle
;!           _i2c_start
;!           _i2c_stop
;!           _i2c_write
;!             _i2c_wait_for_idle
;!   _eeprom_write
;!   _init_config
;!     _init_adc
;!     _init_clcd
;!       _init_display_controller
;!         _clcd_write
;!     _init_digital_keypad
;!     _init_ds1307
;!       _read_ds1307
;!       _write_ds1307
;!         _i2c_start
;!         _i2c_stop
;!         _i2c_write
;!     _init_i2c
;!       ___lldiv
;!     _init_timer2
;!   _log_car_event
;!     ___awdiv
;!     ___awmod
;!     _get_time
;!     _log_event
;!       ___bmul
;!       _eeprom_write
;!     _strncpy
;!   _login
;!     ___awdiv
;!     ___awmod
;!     _clcd_print
;!     _clcd_putch
;!     _clcd_write
;!     _clear_screen
;!     _eeprom_read
;!     _strncmp
;!   _login_menu
;!     _clcd_print
;!     _clcd_putch
;!     _clear_screen
;!   _read_adc
;!   _read_digital_keypad
;!   _strcpy
;!   _view_log
;!     ___awmod
;!     ___bmul
;!     _clcd_print
;!     _clcd_putch
;!     _eeprom_read
;!
;! _isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      B      22       7       42.5%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     19      47       5       88.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      A       C       1       85.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      75      12        0.0%
;!ABS                  0      0      75       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 42 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2    0[BANK1 ] int 
;;  event           3    3[BANK1 ] unsigned char [3]
;;  key             1   10[BANK1 ] unsigned char 
;;  speed           1    9[BANK1 ] unsigned char 
;;  reset_flag      1    8[BANK1 ] unsigned char 
;;  control_flag    1    7[BANK1 ] unsigned char 
;;  gr              1    6[BANK1 ] unsigned char 
;;  menu_pos        1    2[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      11       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2      11       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels required when called: 8
;; This function calls:
;;		___lwdiv
;;		_change_password
;;		_clcd_print
;;		_clcd_write
;;		_clear_log
;;		_clear_screen
;;		_display_dash_board
;;		_eeprom_write
;;		_init_config
;;		_log_car_event
;;		_login
;;		_login_menu
;;		_read_adc
;;		_read_digital_keypad
;;		_strcpy
;;		_view_log
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	42
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	42
	
_main:	
;incstack = 0
	callstack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	43
	
l3558:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@F1228),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@event)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@F1228+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@event+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@F1228+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@event+2)^080h
	line	44
	
l3560:	
	line	45
	
l3562:	
	movlw	low(02h)
	movwf	(main@control_flag)^080h
	line	47
	clrf	(main@gr)^080h
	line	49
	
l3564:	
	fcall	_init_config
	line	50
	
l3566:	
	movlw	(low(main@event|((0x0)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log_car_event@event)
	movlw	(0x0)
	movwf	(log_car_event@event+1)
	clrf	(log_car_event@speed)
	fcall	_log_car_event
	line	52
	
l3568:	
	movlw	low(032h)
	movwf	(eeprom_write@value)
	movlw	low(0)
	fcall	_eeprom_write
	line	53
	
l3570:	
	movlw	low(034h)
	movwf	(eeprom_write@value)
	movlw	low(01h)
	fcall	_eeprom_write
	line	54
	
l3572:	
	movlw	low(032h)
	movwf	(eeprom_write@value)
	movlw	low(02h)
	fcall	_eeprom_write
	line	55
	
l3574:	
	movlw	low(034h)
	movwf	(eeprom_write@value)
	movlw	low(03h)
	fcall	_eeprom_write
	line	58
	
l3576:	
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	fcall	_read_adc
	movf	(1+(?_read_adc)),w
	movwf	(___lwdiv@dividend+1)
	movf	(0+(?_read_adc)),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@speed)^080h
	line	59
	
l3578:	
	movlw	low(064h)
	subwf	(main@speed)^080h,w
	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l3582
u3460:
	line	61
	
l3580:	
	movlw	low(063h)
	movwf	(main@speed)^080h
	line	63
	
l3582:	
	movlw	low(01h)
	fcall	_read_digital_keypad
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@key)^080h
	line	64
	
l3584:	
	movlw	0B8h
	movwf	(main@j)^080h
	movlw	0Bh
	movwf	((main@j)^080h)+1
	
l3586:	
	movlw	0FFh
	addwf	(main@j)^080h,f
	skipnc
	incf	(main@j+1)^080h,f
	movlw	0FFh
	addwf	(main@j+1)^080h,f
		incf	(((main@j)^080h)),w
	skipz
	goto	u3471
	incf	(((main@j+1)^080h)),w
	btfss	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l3586
u3470:
	line	65
	
l3588:	
		movlw	62
	xorwf	((main@key)^080h),w
	btfss	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l3592
u3480:
	line	67
	
l3590:	
	movlw	low(((STR_7)|8000h))
	movwf	(strcpy@src)
	movlw	high(((STR_7)|8000h))
	movwf	((strcpy@src))+1
	movlw	(low(main@event|((0x0)<<8)))&0ffh
	fcall	_strcpy
	line	68
	movlw	(low(main@event|((0x0)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log_car_event@event)
	movlw	(0x0)
	movwf	(log_car_event@event+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@speed)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log_car_event@speed)
	fcall	_log_car_event
	line	69
	goto	l3716
	line	70
	
l3592:	
		movlw	61
	xorwf	((main@key)^080h),w
	btfss	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l3600
u3490:
	
l3594:	
	movlw	low(06h)
	subwf	(main@gr)^080h,w
	skipnc
	goto	u3501
	goto	u3500
u3501:
	goto	l3600
u3500:
	line	72
	
l3596:	
	movf	(main@gr)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	low(_gear|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
		movf	indf,w
	movwf	(strcpy@src)
	incf	fsr0,f
	movf	indf,w
	decf	fsr0,f
	movwf	(strcpy@src+1)

	movlw	(low(main@event|((0x0)<<8)))&0ffh
	fcall	_strcpy
	line	73
	movlw	(low(main@event|((0x0)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log_car_event@event)
	movlw	(0x0)
	movwf	(log_car_event@event+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@speed)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log_car_event@speed)
	fcall	_log_car_event
	line	74
	
l3598:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@gr)^080h,f
	line	75
	goto	l3716
	line	76
	
l3600:	
		movlw	59
	xorwf	((main@key)^080h),w
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l3610
u3510:
	
l3602:	
	movf	((main@gr)^080h),w
	btfsc	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l3610
u3520:
	line	78
	
l3604:	
	movlw	01h
	subwf	(main@gr)^080h,f
	line	79
	
l3606:	
	movf	(main@gr)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	low(_gear|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
		movf	indf,w
	movwf	(strcpy@src)
	incf	fsr0,f
	movf	indf,w
	decf	fsr0,f
	movwf	(strcpy@src+1)

	movlw	(low(main@event|((0x0)<<8)))&0ffh
	fcall	_strcpy
	line	80
	
l3608:	
	movlw	(low(main@event|((0x0)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log_car_event@event)
	movlw	(0x0)
	movwf	(log_car_event@event+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@speed)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log_car_event@speed)
	fcall	_log_car_event
	line	81
	goto	l3716
	line	82
	
l3610:	
		movlw	2
	xorwf	((main@control_flag)^080h),w
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l3632
u3530:
	
l3612:	
		movlw	55
	xorwf	((main@key)^080h),w
	btfsc	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l3616
u3540:
	
l3614:	
		movlw	47
	xorwf	((main@key)^080h),w
	btfss	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l3632
u3550:
	line	84
	
l3616:	
	fcall	_clear_screen
	line	85
	
l3618:	
	movlw	low(((STR_8)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_8)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(080h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	86
	
l3620:	
	clrf	(clcd_write@mode)
	movlw	low(0C6h)
	fcall	_clcd_write
	line	87
	
l3622:	
	clrf	(clcd_write@mode)
	movlw	low(0Fh)
	fcall	_clcd_write
	line	88
	
l3624:	
	asmopt push
asmopt off
	movlw	165
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0)
	u3597:
decfsz	(??_main+0)+0,f
	goto	u3597
	nop2
asmopt pop

	line	89
	
l3626:	
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control_flag)^080h
	line	90
	
l3628:	
	movlw	low(011h)
	movwf	(main@reset_flag)^080h
	line	91
	
l3630:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	92
	goto	l3716
	line	93
	
l3632:	
		movlw	6
	xorwf	((main@control_flag)^080h),w
	btfss	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l3716
u3560:
	
l3634:	
		movlw	31
	xorwf	((main@key)^080h),w
	btfss	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l3716
u3570:
	goto	l3664
	line	98
	
l3638:	
	fcall	_clear_screen
	line	99
	
l3640:	
	movlw	low(((STR_9)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_9)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(080h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	100
	
l3642:	
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control_flag)^080h
	line	101
	
l3644:	
	movlw	low(015h)
	movwf	(main@reset_flag)^080h
	line	102
	goto	l3716
	line	104
	
l3646:	
	movlw	low(((STR_10)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log_car_event@event)
	movlw	high(((STR_10)|8000h))
	movwf	((log_car_event@event))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@speed)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log_car_event@speed)
	fcall	_log_car_event
	line	105
	
l3648:	
	fcall	_clear_screen
	line	106
	
l3650:	
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control_flag)^080h
	line	107
	
l3652:	
	movlw	low(017h)
	movwf	(main@reset_flag)^080h
	line	108
	goto	l3716
	line	110
	
l3654:	
	movlw	low(((STR_11)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log_car_event@event)
	movlw	high(((STR_11)|8000h))
	movwf	((log_car_event@event))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@speed)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log_car_event@speed)
	fcall	_log_car_event
	line	111
	
l3656:	
	fcall	_clear_screen
	line	112
	
l3658:	
	movlw	low(0Bh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control_flag)^080h
	line	113
	
l3660:	
	movlw	low(019h)
	movwf	(main@reset_flag)^080h
	line	114
	goto	l3716
	line	115
	
l3664:	
	movf	(main@menu_pos)^080h,w
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           17     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l3638
	xorlw	1^0	; case 1
	skipnz
	goto	l3646
	xorlw	2^1	; case 2
	skipnz
	goto	l3654
	goto	l70
	asmopt pop

	line	116
	
l70:	
	goto	l3716
	line	121
	
l3666:	
	movf	(main@speed)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(display_dash_board@speed)
	movlw	(low(main@event|((0x0)<<8)))&0ffh
	fcall	_display_dash_board
	line	122
	goto	l3718
	line	127
	
l3668:	
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control_flag)^080h
	line	128
	
l3670:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(146/8),(146)&7	;volatile
	line	129
	
l3672:	
	clrf	(clcd_write@mode)
	movlw	low(0Ch)
	fcall	_clcd_write
	line	130
	
l3674:	
	asmopt push
asmopt off
	movlw	165
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0)
	u3607:
decfsz	(??_main+0)+0,f
	goto	u3607
	nop2
asmopt pop

	line	131
	goto	l3718
	line	133
	
l3676:	
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control_flag)^080h
	line	134
	movlw	low(013h)
	movwf	(main@reset_flag)^080h
	line	135
	
l3678:	
	fcall	_clear_screen
	line	136
	
l3680:	
	clrf	(clcd_write@mode)
	movlw	low(0Ch)
	fcall	_clcd_write
	line	137
	asmopt push
asmopt off
	movlw	165
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0)
	u3617:
decfsz	(??_main+0)+0,f
	goto	u3617
	nop2
asmopt pop

	line	138
	
l3682:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(146/8),(146)&7	;volatile
	line	139
	goto	l3576
	line	140
	
l3686:	
	movf	(main@reset_flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(login@reset_flag)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@key)^080h,w
	fcall	_login
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 2 to 17
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           59    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	2^0	; case 2
	skipnz
	goto	l3668
	xorlw	17^2	; case 17
	skipnz
	goto	l3676
	goto	l3718
	asmopt pop

	line	143
	
l3688:	
	movf	(main@reset_flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(login_menu@reset_flag)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@key)^080h,w
	fcall	_login_menu
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@menu_pos)^080h
	line	144
	goto	l3718
	line	146
	
l3690:	
	movf	(main@reset_flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(view_log@reset_flag)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@key)^080h,w
	fcall	_view_log
	line	147
	goto	l3718
	line	149
	
l3692:	
	movf	(main@reset_flag)^080h,w
	fcall	_clear_log
	xorlw	011h
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l3718
u3580:
	line	151
	
l3694:	
	fcall	_clear_screen
	line	152
	
l3696:	
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control_flag)^080h
	line	153
	
l3698:	
	movlw	low(013h)
	movwf	(main@reset_flag)^080h
	line	154
	goto	l3576
	line	161
	
l3700:	
	fcall	_clear_screen
	line	162
	clrf	(clcd_write@mode)
	movlw	low(0Ch)
	fcall	_clcd_write
	line	163
	
l3702:	
	asmopt push
asmopt off
	movlw	165
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0)
	u3627:
decfsz	(??_main+0)+0,f
	goto	u3627
	nop2
asmopt pop

	goto	l3696
	line	168
	
l3712:	
	movf	(main@reset_flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(change_password@reset_flag)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@key)^080h,w
	fcall	_change_password
	; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 17 to 17
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	17^0	; case 17
	skipnz
	goto	l3700
	goto	l3718
	asmopt pop

	line	171
	
l3716:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@control_flag)^080h,w
	; Switch size 1, requested type "simple"
; Number of cases is 6, Range of values is 2 to 11
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           41    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	2^0	; case 2
	skipnz
	goto	l3666
	xorlw	4^2	; case 4
	skipnz
	goto	l3686
	xorlw	6^4	; case 6
	skipnz
	goto	l3688
	xorlw	8^6	; case 8
	skipnz
	goto	l3690
	xorlw	10^8	; case 10
	skipnz
	goto	l3692
	xorlw	11^10	; case 11
	skipnz
	goto	l3712
	goto	l3718
	asmopt pop

	line	172
	
l3718:	
	movlw	low(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@reset_flag)^080h
	goto	l3576
	global	start
	ljmp	start
	callstack 0
	line	175
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_view_log

;; *************** function _view_log *****************
;; Defined at:
;;		line 212 in file "car_black_box_def.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     unsigned char 
;;  reset_flag      1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  key             1   20[BANK0 ] unsigned char 
;;  i               2   21[BANK0 ] int 
;;  rlog           11    8[BANK0 ] unsigned char [11]
;;  add             1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0      15       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___awmod
;;		___bmul
;;		_clcd_print
;;		_clcd_putch
;;		_eeprom_read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"car_black_box_def.c"
	line	212
global __ptext1
__ptext1:	;psect for function _view_log
psect	text1
	file	"car_black_box_def.c"
	line	212
	
_view_log:	
;incstack = 0
	callstack 4
; Regs used in _view_log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(view_log@key)
	line	217
	
l3388:	
		incf	((_event_count)),w
	skipz
	goto	u3211
	incf	((_event_count+1)),w
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l3392
u3210:
	line	219
	
l3390:	
	movlw	low(((STR_21)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_21)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C0h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	220
	goto	l389
	line	223
	
l3392:	
		movlw	21
	xorwf	((view_log@reset_flag)),w
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l3396
u3220:
	line	225
	
l3394:	
	clrf	(view_log@rpos)
	line	227
	
l3396:	
		movlw	47
	xorwf	((view_log@key)),w
	btfss	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l3402
u3230:
	
l3398:	
	movf	(_event_count),w
	addlw	low(-1)
	movwf	(??_view_log+0)+0
	movf	(_event_count+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(??_view_log+0)+0
	movf	1+(??_view_log+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u3245
	movf	0+(??_view_log+0)+0,w
	subwf	(view_log@rpos),w
u3245:

	skipnc
	goto	u3241
	goto	u3240
u3241:
	goto	l3402
u3240:
	line	229
	
l3400:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_view_log+0)+0
	movf	(??_view_log+0)+0,w
	addwf	(view_log@rpos),f
	line	230
	goto	l3408
	line	231
	
l3402:	
		movlw	55
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((view_log@key)),w
	btfss	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l3408
u3250:
	
l3404:	
	movf	((view_log@rpos)),w
	btfsc	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l3408
u3260:
	line	233
	
l3406:	
	movlw	01h
	subwf	(view_log@rpos),f
	line	235
	
l3408:	
	clrf	(view_log@i)
	clrf	(view_log@i+1)
	line	237
	
l3414:	
	movlw	low(0Ah)
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(view_log@rpos),w
	fcall	___bmul
	addlw	05h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(view_log@add)
	line	238
	
l3416:	
	movf	(view_log@i),w
	addlw	low(view_log@rlog|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(view_log@i),w
	addwf	(view_log@add),w
	fcall	_eeprom_read
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	239
	
l3418:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(view_log@i),f
	skipnc
	incf	(view_log@i+1),f
	movlw	0
	addwf	(view_log@i+1),f
	
l3420:	
	movf	(view_log@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3275
	movlw	0Ah
	subwf	(view_log@i),w
u3275:

	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l3414
u3270:
	line	241
	
l3422:	
	movlw	low(0C0h)
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(view_log@rpos),w
	movwf	(??_view_log+0)+0
	clrf	(??_view_log+0)+0+1
	movf	0+(??_view_log+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_view_log+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_clcd_putch
	line	243
	movlw	low(0C2h)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(view_log@rlog),w
	fcall	_clcd_putch
	line	244
	movlw	low(0C3h)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(view_log@rlog)+01h,w
	fcall	_clcd_putch
	line	245
	movlw	low(0C4h)
	movwf	(clcd_putch@addr)
	movlw	low(03Ah)
	fcall	_clcd_putch
	line	247
	movlw	low(0C5h)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(view_log@rlog)+02h,w
	fcall	_clcd_putch
	line	248
	movlw	low(0C6h)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(view_log@rlog)+03h,w
	fcall	_clcd_putch
	line	249
	movlw	low(0C7h)
	movwf	(clcd_putch@addr)
	movlw	low(03Ah)
	fcall	_clcd_putch
	line	251
	movlw	low(0C8h)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(view_log@rlog)+04h,w
	fcall	_clcd_putch
	line	252
	movlw	low(0C9h)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(view_log@rlog)+05h,w
	fcall	_clcd_putch
	line	254
	movlw	low(0CBh)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(view_log@rlog)+06h,w
	fcall	_clcd_putch
	line	255
	movlw	low(0CCh)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(view_log@rlog)+07h,w
	fcall	_clcd_putch
	line	257
	movlw	low(0CEh)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(view_log@rlog)+08h,w
	fcall	_clcd_putch
	line	258
	movlw	low(0CFh)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(view_log@rlog)+09h,w
	fcall	_clcd_putch
	line	260
	
l389:	
	return
	callstack 0
GLOBAL	__end_of_view_log
	__end_of_view_log:
	signat	_view_log,8313
	global	_strcpy

;; *************** function _strcpy *****************
;; Defined at:
;;		line 3 in file "/opt/microchip/xc8/v2.46/pic/sources/c99/common/strcpy.c"
;; Parameters:    Size  Location     Type
;;  dest            1    wreg     PTR unsigned char 
;;		 -> main@event(3), 
;;  src             2    2[COMMON] PTR const unsigned char 
;;		 -> STR_7(3), STR_6(3), STR_5(3), STR_4(3), 
;;		 -> STR_3(3), STR_2(3), STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  dest            1    8[COMMON] PTR unsigned char 
;;		 -> main@event(3), 
;;  d               1    7[COMMON] PTR unsigned char 
;;		 -> main@event(3), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 2
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=2
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/strcpy.c"
	line	3
global __ptext2
__ptext2:	;psect for function _strcpy
psect	text2
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/strcpy.c"
	line	3
	
_strcpy:	
;incstack = 0
	callstack 5
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	movwf	(strcpy@dest)
	line	5
	
l3228:	
	movf	(strcpy@dest),w
	movwf	(strcpy@d)
	line	6
	
l3230:	
	movf	(strcpy@src+1),w
	movwf	(??_strcpy+0)+0+1
	movf	(strcpy@src),w
	movwf	(??_strcpy+0)+0
	incf	(strcpy@src),f
	skipnz
	incf	(strcpy@src+1),f
	movf	1+(??_strcpy+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	0+(??_strcpy+0)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_strcpy+2)+0
	movf	(strcpy@d),w
	movwf	fsr0
	movlw	01h
	addwf	(strcpy@d),f
	movf	(??_strcpy+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	movf	((indf)),w
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l3230
u3020:
	line	8
	
l999:	
	return
	callstack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
	signat	_strcpy,8313
	global	_read_digital_keypad

;; *************** function _read_digital_keypad *****************
;; Defined at:
;;		line 11 in file "digital_keypad.c"
;; Parameters:    Size  Location     Type
;;  mode            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  mode            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"digital_keypad.c"
	line	11
global __ptext3
__ptext3:	;psect for function _read_digital_keypad
psect	text3
	file	"digital_keypad.c"
	line	11
	
_read_digital_keypad:	
;incstack = 0
	callstack 6
; Regs used in _read_digital_keypad: [wreg+status,2+status,0]
	movwf	(read_digital_keypad@mode)
	line	15
	
l3200:	
	movf	((read_digital_keypad@mode)),w
	btfss	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l3208
u2980:
	line	17
	
l3202:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	andlw	03Fh
	goto	l248
	line	21
	
l3208:	
	movlw	low(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),w	;volatile
	movwf	(??_read_digital_keypad+0)+0
		movlw	63
	xorwf	((??_read_digital_keypad+0)+0),w
	btfsc	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l3220
u2990:
	
l3210:	
	movf	((read_digital_keypad@once)),w
	btfsc	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l3220
u3000:
	line	23
	
l3212:	
	clrf	(read_digital_keypad@once)
	goto	l3202
	line	27
	
l3220:	
	movlw	low(03Fh)
	andwf	(6),w	;volatile
	movwf	(??_read_digital_keypad+0)+0
		movlw	63
	xorwf	((??_read_digital_keypad+0)+0),w
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l3224
u3010:
	line	29
	
l3222:	
	clrf	(read_digital_keypad@once)
	incf	(read_digital_keypad@once),f
	line	33
	
l3224:	
	movlw	low(03Fh)
	line	34
	
l248:	
	return
	callstack 0
GLOBAL	__end_of_read_digital_keypad
	__end_of_read_digital_keypad:
	signat	_read_digital_keypad,4217
	global	_read_adc

;; *************** function _read_adc *****************
;; Defined at:
;;		line 19 in file "adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adc_reg_val     2    4[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned short 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"adc.c"
	line	19
global __ptext4
__ptext4:	;psect for function _read_adc
psect	text4
	file	"adc.c"
	line	19
	
_read_adc:	
;incstack = 0
	callstack 6
; Regs used in _read_adc: [wreg]
	line	24
	
l3194:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	27
	
l232:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u2971
	goto	u2970
u2971:
	goto	l232
u2970:
	line	29
	
l3196:	
	movf	(30),w	;volatile
	movwf	(read_adc@adc_reg_val+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(read_adc@adc_reg_val)
	line	31
	movf	(read_adc@adc_reg_val+1),w
	movwf	(?_read_adc+1)
	movf	(read_adc@adc_reg_val),w
	movwf	(?_read_adc)
	line	33
	
l235:	
	return
	callstack 0
GLOBAL	__end_of_read_adc
	__end_of_read_adc:
	signat	_read_adc,90
	global	_login_menu

;; *************** function _login_menu *****************
;; Defined at:
;;		line 180 in file "car_black_box_def.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     unsigned char 
;;  reset_flag      1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  key             1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clear_screen
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"car_black_box_def.c"
	line	180
global __ptext5
__ptext5:	;psect for function _login_menu
psect	text5
	file	"car_black_box_def.c"
	line	180
	
_login_menu:	
;incstack = 0
	callstack 4
; Regs used in _login_menu: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(login_menu@key)
	line	183
	
l3350:	
		movlw	19
	xorwf	((login_menu@reset_flag)),w
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l3354
u3140:
	line	185
	
l3352:	
	clrf	(login_menu@menu_pos)
	line	187
	
l3354:	
		movlw	47
	xorwf	((login_menu@key)),w
	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l3362
u3150:
	
l3356:	
	movlw	low(02h)
	subwf	(login_menu@menu_pos),w
	skipnc
	goto	u3161
	goto	u3160
u3161:
	goto	l3362
u3160:
	line	189
	
l3358:	
	movlw	low(01h)
	movwf	(??_login_menu+0)+0
	movf	(??_login_menu+0)+0,w
	addwf	(login_menu@menu_pos),f
	line	190
	
l3360:	
	fcall	_clear_screen
	line	191
	goto	l3370
	line	192
	
l3362:	
		movlw	55
	xorwf	((login_menu@key)),w
	btfss	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l3370
u3170:
	
l3364:	
	movf	((login_menu@menu_pos)),w
	btfsc	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l3370
u3180:
	line	194
	
l3366:	
	movlw	01h
	subwf	(login_menu@menu_pos),f
	goto	l3360
	line	197
	
l3370:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(login_menu@menu_pos),w
	skipnc
	goto	u3191
	goto	u3190
u3191:
	goto	l3378
u3190:
	line	199
	
l3372:	
	movlw	low(080h)
	movwf	(clcd_putch@addr)
	movlw	low(02Ah)
	fcall	_clcd_putch
	line	200
	
l3374:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(login_menu@menu_pos),w
	movwf	(??_login_menu+0)+0
	addwf	(??_login_menu+0)+0,w
	addlw	low(_menu|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
		movf	indf,w
	movwf	(clcd_print@str)
	incf	fsr0,f
	movf	indf,w
	decf	fsr0,f
	movwf	(clcd_print@str+1)

	movlw	low(082h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	201
	
l3376:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(login_menu@menu_pos),w
	movwf	(??_login_menu+0)+0
	addwf	(??_login_menu+0)+0,w
	addlw	low(_menu|((0x0)<<8)+02h)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
		movf	indf,w
	movwf	(clcd_print@str)
	incf	fsr0,f
	movf	indf,w
	decf	fsr0,f
	movwf	(clcd_print@str+1)

	movlw	low(0C2h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	202
	goto	l3384
	line	203
	
l3378:	
		movlw	2
	xorwf	((login_menu@menu_pos)),w
	btfss	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l3384
u3200:
	line	205
	
l3380:	
	movf	(login_menu@menu_pos),w
	movwf	(??_login_menu+0)+0
	addwf	(??_login_menu+0)+0,w
	addlw	low(_menu|((0x0)<<8)+0FEh)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
		movf	indf,w
	movwf	(clcd_print@str)
	incf	fsr0,f
	movf	indf,w
	decf	fsr0,f
	movwf	(clcd_print@str+1)

	movlw	low(082h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	206
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(login_menu@menu_pos),w
	movwf	(??_login_menu+0)+0
	addwf	(??_login_menu+0)+0,w
	addlw	low(_menu|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
		movf	indf,w
	movwf	(clcd_print@str)
	incf	fsr0,f
	movf	indf,w
	decf	fsr0,f
	movwf	(clcd_print@str+1)

	movlw	low(0C2h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	207
	
l3382:	
	movlw	low(0C0h)
	movwf	(clcd_putch@addr)
	movlw	low(02Ah)
	fcall	_clcd_putch
	line	209
	
l3384:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(login_menu@menu_pos),w
	line	210
	
l376:	
	return
	callstack 0
GLOBAL	__end_of_login_menu
	__end_of_login_menu:
	signat	_login_menu,8313
	global	_login

;; *************** function _login *****************
;; Defined at:
;;		line 97 in file "car_black_box_def.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     unsigned char 
;;  reset_flag      1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  key             1   13[BANK0 ] unsigned char 
;;  j               2   14[BANK0 ] int 
;;  spassword       4    9[BANK0 ] unsigned char [4]
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_clear_screen
;;		_eeprom_read
;;		_strncmp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	97
global __ptext6
__ptext6:	;psect for function _login
psect	text6
	file	"car_black_box_def.c"
	line	97
	
_login:	
;incstack = 0
	callstack 4
; Regs used in _login: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(login@key)
	line	102
	
l3238:	
		movlw	17
	xorwf	((login@reset_flag)),w
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l3254
u3030:
	line	104
	
l3240:	
	movlw	low(05h)
	movwf	(_return_time)
	line	105
	movlw	low(033h)
	movwf	(login@attempt_rem)
	line	106
	
l3242:	
	clrf	(login@i)
	line	107
	
l3244:	
	clrf	(login@npassword)
	line	108
	
l3246:	
	clrf	0+(login@npassword)+01h
	line	109
	
l3248:	
	clrf	0+(login@npassword)+02h
	line	110
	
l3250:	
	clrf	0+(login@npassword)+03h
	line	111
	
l3252:	
	movlw	low(03Fh)
	movwf	(login@key)
	line	113
	
l3254:	
	movf	((_return_time)),w
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l3260
u3040:
	line	115
	
l3256:	
	movlw	low(02h)
	goto	l351
	line	117
	
l3260:	
		movlw	55
	xorwf	((login@key)),w
	btfss	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l3272
u3050:
	
l3262:	
	movlw	low(04h)
	subwf	(login@i),w
	skipnc
	goto	u3061
	goto	u3060
u3061:
	goto	l3272
u3060:
	line	119
	
l3264:	
	movf	(login@i),w
	addlw	low(login@npassword|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	low(034h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	120
	
l3266:	
	movf	(login@i),w
	addlw	0C6h
	movwf	(clcd_putch@addr)
	movlw	low(02Ah)
	fcall	_clcd_putch
	line	121
	
l3268:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_login+0)+0
	movf	(??_login+0)+0,w
	addwf	(login@i),f
	line	122
	
l3270:	
	movlw	low(05h)
	movwf	(_return_time)
	line	123
	goto	l3284
	line	124
	
l3272:	
		movlw	47
	xorwf	((login@key)),w
	btfss	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l3284
u3070:
	
l3274:	
	movlw	low(04h)
	subwf	(login@i),w
	skipnc
	goto	u3081
	goto	u3080
u3081:
	goto	l3284
u3080:
	line	126
	
l3276:	
	movf	(login@i),w
	addlw	low(login@npassword|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	low(032h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	127
	
l3278:	
	movf	(login@i),w
	addlw	0C6h
	movwf	(clcd_putch@addr)
	movlw	low(02Ah)
	fcall	_clcd_putch
	goto	l3268
	line	131
	
l3284:	
		movlw	4
	xorwf	((login@i)),w
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l3346
u3090:
	line	133
	
l3286:	
	clrf	(login@j)
	clrf	(login@j+1)
	line	135
	
l3292:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(login@j),w
	addlw	low(login@spassword|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(login@j),w
	fcall	_eeprom_read
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	136
	
l3294:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(login@j),f
	skipnc
	incf	(login@j+1),f
	movlw	0
	addwf	(login@j+1),f
	
l3296:	
	movf	(login@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3105
	movlw	04h
	subwf	(login@j),w
u3105:

	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l3292
u3100:
	line	137
	
l3298:	
	movlw	(low(login@spassword|((0x0)<<8)))&0ffh
	movwf	(strncmp@r)
	movlw	04h
	movwf	(strncmp@n)
	movlw	0
	movwf	((strncmp@n))+1
	movlw	(low(login@npassword|((0x0)<<8)))&0ffh
	fcall	_strncmp
	movf	((0+(?_strncmp))),w
iorwf	((1+(?_strncmp))),w
	btfss	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l3306
u3110:
	line	140
	
l3300:	
	movlw	low(011h)
	goto	l351
	line	144
	
l3306:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(login@attempt_rem),f
	line	145
		movlw	48
	xorwf	((login@attempt_rem)),w
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l3324
u3120:
	line	147
	
l3308:	
	clrf	(clcd_write@mode)
	movlw	low(0Ch)
	fcall	_clcd_write
	line	148
	
l3310:	
	asmopt push
asmopt off
	movlw	165
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_login+0)+0)
	u3637:
decfsz	(??_login+0)+0,f
	goto	u3637
	nop2
asmopt pop

	line	149
	
l3312:	
	movlw	low(((STR_16)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_16)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(080h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	150
	
l3314:	
	movlw	low(((STR_17)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_17)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C0h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	151
	
l3316:	
	movlw	low(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_sec)
	line	152
	goto	l3320
	line	154
	
l3318:	
	movlw	low(0CBh)
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_sec),w
	movwf	(??_login+0)+0
	clrf	(??_login+0)+0+1
	movf	0+(??_login+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_login+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_clcd_putch
	line	155
	movlw	low(0CCh)
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_sec),w
	movwf	(??_login+0)+0
	clrf	(??_login+0)+0+1
	movf	0+(??_login+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_login+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_clcd_putch
	line	152
	
l3320:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_sec)),w
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l3318
u3130:
	line	157
	
l3322:	
	movlw	low(033h)
	movwf	(login@attempt_rem)
	line	158
	goto	l3332
	line	161
	
l3324:	
	fcall	_clear_screen
	line	163
	
l3326:	
	movlw	low(((STR_18)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_18)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(080h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	164
	
l3328:	
	movlw	low(0C0h)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(login@attempt_rem),w
	fcall	_clcd_putch
	line	165
	movlw	low(((STR_19)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_19)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C1h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	166
	
l3330:	
	asmopt push
asmopt off
movlw  77
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_login+0)+0+2)
movlw	25
movwf	((??_login+0)+0+1)
	movlw	79
movwf	((??_login+0)+0)
	u3647:
decfsz	((??_login+0)+0),f
	goto	u3647
	decfsz	((??_login+0)+0+1),f
	goto	u3647
	decfsz	((??_login+0)+0+2),f
	goto	u3647
asmopt pop

	line	168
	
l3332:	
	fcall	_clear_screen
	line	169
	
l3334:	
	movlw	low(((STR_20)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_20)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(080h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	170
	
l3336:	
	clrf	(clcd_write@mode)
	movlw	low(0C6h)
	fcall	_clcd_write
	line	171
	
l3338:	
	clrf	(clcd_write@mode)
	movlw	low(0Fh)
	fcall	_clcd_write
	line	172
	
l3340:	
	asmopt push
asmopt off
	movlw	165
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_login+0)+0)
	u3657:
decfsz	(??_login+0)+0,f
	goto	u3657
	nop2
asmopt pop

	line	173
	
l3342:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(login@i)
	line	174
	
l3344:	
	movlw	low(05h)
	movwf	(_return_time)
	line	177
	
l3346:	
	movlw	low(010h)
	line	178
	
l351:	
	return
	callstack 0
GLOBAL	__end_of_login
	__end_of_login:
	signat	_login,8313
	global	_eeprom_read

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 6 in file "/opt/microchip/xc8/v2.46/pic/sources/c99/pic/__eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_login
;;		_view_log
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/pic/__eeread.c"
	line	6
global __ptext7
__ptext7:	;psect for function _eeprom_read
psect	text7
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/pic/__eeread.c"
	line	6
	
_eeprom_read:	
;incstack = 0
	callstack 5
; Regs used in _eeprom_read: [wreg+status,2+status,0]
	movwf	(eeprom_read@addr)
	line	8
	
l507:	
	line	9
# 9 "/opt/microchip/xc8/v2.46/pic/sources/c99/pic/__eeread.c"
clrwdt ;# 
psect	text7
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(396)^0180h,1	;volsfr
	goto	u2721
	goto	u2720
u2721:
	goto	l507
u2720:
	line	18
	
l3070:	
	movf	(eeprom_read@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movlw	low(03Fh)
	movwf	(??_eeprom_read+0)+0
	movf	(??_eeprom_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volsfr
	bsf	(396)^0180h,0	;volsfr
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	line	19
	
l509:	
	return
	callstack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
	signat	_eeprom_read,4217
	global	_log_car_event

;; *************** function _log_car_event *****************
;; Defined at:
;;		line 80 in file "car_black_box_def.c"
;; Parameters:    Size  Location     Type
;;  event           2    4[BANK0 ] PTR unsigned char 
;;		 -> STR_11(3), STR_10(3), main@event(3), 
;;  speed           1    6[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_get_time
;;		_log_event
;;		_strncpy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"car_black_box_def.c"
	line	80
global __ptext8
__ptext8:	;psect for function _log_car_event
psect	text8
	file	"car_black_box_def.c"
	line	80
	
_log_car_event:	
;incstack = 0
	callstack 1
; Regs used in _log_car_event: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	82
	
l3184:	
	fcall	_get_time
	line	83
	
l3186:	
	movlw	(low(_time|((0x0)<<8))&0ffh)
	movwf	(strncpy@s)
	movlw	(0x0)
	movwf	(strncpy@s+1)
	movlw	06h
	movwf	(strncpy@n)
	movlw	0
	movwf	((strncpy@n))+1
	movlw	(low(_log|((0x0)<<8)))&0ffh
	fcall	_strncpy
	line	84
	
l3188:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(log_car_event@event),w
	movwf	(strncpy@s)
movf	(log_car_event@event+1),w
	movwf	(strncpy@s+1)

	movlw	02h
	movwf	(strncpy@n)
	movlw	0
	movwf	((strncpy@n))+1
	movlw	(low(_log|((0x0)<<8)+06h))&0ffh
	fcall	_strncpy
	line	85
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log_car_event@speed),w
	movwf	(??_log_car_event+0)+0
	clrf	(??_log_car_event+0)+0+1
	movf	0+(??_log_car_event+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_log_car_event+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_log)^080h+08h
	line	86
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log_car_event@speed),w
	movwf	(??_log_car_event+0)+0
	clrf	(??_log_car_event+0)+0+1
	movf	0+(??_log_car_event+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_log_car_event+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_log)^080h+09h
	line	87
	
l3190:	
	clrf	0+(_log)^080h+0Ah
	line	88
	
l3192:	
	fcall	_log_event
	line	89
	
l337:	
	return
	callstack 0
GLOBAL	__end_of_log_car_event
	__end_of_log_car_event:
	signat	_log_car_event,8313
	global	_strncpy

;; *************** function _strncpy *****************
;; Defined at:
;;		line 3 in file "/opt/microchip/xc8/v2.46/pic/sources/c99/common/strncpy.c"
;; Parameters:    Size  Location     Type
;;  d               1    wreg     PTR unsigned char 
;;		 -> log(11), 
;;  s               2    2[COMMON] PTR const unsigned char 
;;		 -> time(7), STR_11(3), STR_10(3), main@event(3), 
;;  n               2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  d               1    0[BANK0 ] PTR unsigned char 
;;		 -> log(11), 
;;  cp              1    1[BANK0 ] PTR unsigned char 
;;		 -> log(11), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       2       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 2
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_log_car_event
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=2
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/strncpy.c"
	line	3
global __ptext9
__ptext9:	;psect for function _strncpy
psect	text9
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/strncpy.c"
	line	3
	
_strncpy:	
;incstack = 0
	callstack 4
; Regs used in _strncpy: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strncpy@d)
	line	6
	
l3054:	
	movf	(strncpy@d),w
	movwf	(strncpy@cp)
	line	7
	goto	l3062
	line	8
	
l3056:	
	movlw	01h
	subwf	(strncpy@n),f
	movlw	0
	skipc
	decf	(strncpy@n+1),f
	subwf	(strncpy@n+1),f
	line	9
	
l3058:	
	movf	(strncpy@s+1),w
	movwf	(??_strncpy+0)+0+1
	movf	(strncpy@s),w
	movwf	(??_strncpy+0)+0
	incf	(strncpy@s),f
	skipnz
	incf	(strncpy@s+1),f
	movf	1+(??_strncpy+0)+0,w
	movwf	btemp+1
	movf	0+(??_strncpy+0)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_strncpy+2)+0
	movf	(strncpy@cp),w
	movwf	fsr0
	movlw	01h
	addwf	(strncpy@cp),f
	movf	(??_strncpy+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	movf	((indf)),w
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l3062
u2690:
	goto	l3068
	line	7
	
l3062:	
	movf	((strncpy@n)),w
iorwf	((strncpy@n+1)),w
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l3056
u2700:
	goto	l3068
	line	13
	
l3064:	
	movf	(strncpy@cp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	
l3066:	
	movlw	low(01h)
	movwf	(??_strncpy+0)+0
	movf	(??_strncpy+0)+0,w
	addwf	(strncpy@cp),f
	line	12
	
l3068:	
	movlw	01h
	subwf	(strncpy@n),f
	movlw	0
	skipc
	decf	(strncpy@n+1),f
	subwf	(strncpy@n+1),f
		incf	(((strncpy@n))),w
	skipz
	goto	u2711
	incf	(((strncpy@n+1))),w
	btfss	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l3064
u2710:
	line	15
	
l1018:	
	return
	callstack 0
GLOBAL	__end_of_strncpy
	__end_of_strncpy:
	signat	_strncpy,12409
	global	_log_event

;; *************** function _log_event *****************
;; Defined at:
;;		line 62 in file "car_black_box_def.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    8[COMMON] int 
;;  add             1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___bmul
;;		_eeprom_write
;; This function is called by:
;;		_log_car_event
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"car_black_box_def.c"
	line	62
global __ptext10
__ptext10:	;psect for function _log_event
psect	text10
	file	"car_black_box_def.c"
	line	62
	
_log_event:	
;incstack = 0
	callstack 4
; Regs used in _log_event: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	65
	
l3034:	
	movlw	low(01h)
	movwf	(??_log_event+0)+0
	movf	(??_log_event+0)+0,w
	addwf	(_pos),f
	line	66
		movlw	10
	xorwf	((_pos)),w
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l3038
u2660:
	line	68
	
l3036:	
	clrf	(_pos)
	line	70
	
l3038:	
	movlw	low(0Ah)
	movwf	(___bmul@multiplicand)
	movf	(_pos),w
	fcall	___bmul
	addlw	05h
	movwf	(log_event@add)
	line	71
	
l3040:	
	clrf	(log_event@i)
	clrf	(log_event@i+1)
	goto	l3048
	line	73
	
l3042:	
	movf	(log_event@i),w
	addlw	low(_log|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(eeprom_write@value)
	movf	(log_event@add),w
	fcall	_eeprom_write
	line	74
	
l3044:	
	movlw	low(01h)
	movwf	(??_log_event+0)+0
	movf	(??_log_event+0)+0,w
	addwf	(log_event@add),f
	line	75
	
l3046:	
	movlw	01h
	addwf	(log_event@i),f
	skipnc
	incf	(log_event@i+1),f
	movlw	0
	addwf	(log_event@i+1),f
	
l3048:	
	movf	(log_event@i),w
	addlw	low(_log|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	(indf),w
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l3042
u2670:
	line	76
	
l3050:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_event_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2685
	movlw	09h
	subwf	(_event_count),w
u2685:

	skipnc
	goto	u2681
	goto	u2680
u2681:
	goto	l334
u2680:
	line	77
	
l3052:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_event_count),f
	skipnc
	incf	(_event_count+1),f
	movlw	0
	addwf	(_event_count+1),f
	line	78
	
l334:	
	return
	callstack 0
GLOBAL	__end_of_log_event
	__end_of_log_event:
	signat	_log_event,89
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v2.46/pic/sources/c99/common/Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    5[COMMON] unsigned char 
;;  product         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_log_event
;;		_view_log
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/Umul8.c"
	line	4
global __ptext11
__ptext11:	;psect for function ___bmul
psect	text11
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/Umul8.c"
	line	4
	
___bmul:	
;incstack = 0
	callstack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
	movwf	(___bmul@multiplier)
	line	6
	
l2944:	
	clrf	(___bmul@product)
	line	43
	
l2946:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l2950
u2550:
	line	44
	
l2948:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	line	45
	
l2950:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l2952:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l2946
u2560:
	line	50
	
l2954:	
	movf	(___bmul@product),w
	line	51
	
l563:	
	return
	callstack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 28 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_init_adc
;;		_init_clcd
;;		_init_digital_keypad
;;		_init_ds1307
;;		_init_i2c
;;		_init_timer2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	28
global __ptext12
__ptext12:	;psect for function _init_config
psect	text12
	file	"main.c"
	line	28
	
_init_config:	
;incstack = 0
	callstack 1
; Regs used in _init_config: [wreg+status,2+status,0+pclath+cstack]
	line	31
	
l3178:	
	fcall	_init_adc
	line	32
	fcall	_init_clcd
	line	33
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(init_i2c@baud+3)
	movlw	01h
	movwf	(init_i2c@baud+2)
	movlw	086h
	movwf	(init_i2c@baud+1)
	movlw	0A0h
	movwf	(init_i2c@baud)

	fcall	_init_i2c
	line	34
	fcall	_init_ds1307
	line	35
	fcall	_init_digital_keypad
	line	36
	fcall	_init_timer2
	line	37
	
l3180:	
	bsf	(94/8),(94)&7	;volatile
	line	38
	
l3182:	
	bsf	(95/8),(95)&7	;volatile
	line	39
	
l53:	
	return
	callstack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_init_timer2

;; *************** function _init_timer2 *****************
;; Defined at:
;;		line 5 in file "timers.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"timers.c"
	line	5
global __ptext13
__ptext13:	;psect for function _init_timer2
psect	text13
	file	"timers.c"
	line	5
	
_init_timer2:	
;incstack = 0
	callstack 5
; Regs used in _init_timer2: [wreg]
	line	8
	
l3012:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(144/8),(144)&7	;volatile
	line	9
	bsf	(145/8),(145)&7	;volatile
	line	12
	
l3014:	
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	15
	
l3016:	
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	18
	
l3018:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(146/8),(146)&7	;volatile
	line	19
	
l283:	
	return
	callstack 0
GLOBAL	__end_of_init_timer2
	__end_of_init_timer2:
	signat	_init_timer2,89
	global	_init_i2c

;; *************** function _init_i2c *****************
;; Defined at:
;;		line 4 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  baud            4    6[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___lldiv
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	file	"i2c.c"
	line	4
global __ptext14
__ptext14:	;psect for function _init_i2c
psect	text14
	file	"i2c.c"
	line	4
	
_init_i2c:	
;incstack = 0
	callstack 4
; Regs used in _init_i2c: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l2998:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(163/8),(163)&7	;volatile
	line	10
	
l3000:	
	movf	(init_i2c@baud),w
	movwf	(??_init_i2c+0)+0
	movf	(init_i2c@baud+1),w
	movwf	((??_init_i2c+0)+0+1)
	movf	(init_i2c@baud+2),w
	movwf	((??_init_i2c+0)+0+2)
	movf	(init_i2c@baud+3),w
	movwf	((??_init_i2c+0)+0+3)
	movlw	02h
u2645:
	clrc
	rlf	(??_init_i2c+0)+0,f
	rlf	(??_init_i2c+0)+1,f
	rlf	(??_init_i2c+0)+2,f
	rlf	(??_init_i2c+0)+3,f
u2640:
	addlw	-1
	skipz
	goto	u2645
	movf	3+(??_init_i2c+0)+0,w
	movwf	(___lldiv@divisor+3)
	movf	2+(??_init_i2c+0)+0,w
	movwf	(___lldiv@divisor+2)
	movf	1+(??_init_i2c+0)+0,w
	movwf	(___lldiv@divisor+1)
	movf	0+(??_init_i2c+0)+0,w
	movwf	(___lldiv@divisor)

	movlw	01h
	movwf	(___lldiv@dividend+3)
	movlw	031h
	movwf	(___lldiv@dividend+2)
	movlw	02Dh
	movwf	(___lldiv@dividend+1)
	movlw	0
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(0+(?___lldiv)),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(147)^080h	;volatile
	line	13
	
l3002:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(165/8),(165)&7	;volatile
	line	14
	
l160:	
	return
	callstack 0
GLOBAL	__end_of_init_i2c
	__end_of_init_i2c:
	signat	_init_i2c,4217
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v2.46/pic/sources/c99/common/__lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    2[COMMON] unsigned long 
;;  dividend        4    6[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    1[BANK0 ] unsigned long 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         8       6       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_i2c
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/__lldiv.c"
	line	5
global __ptext15
__ptext15:	;psect for function ___lldiv
psect	text15
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/__lldiv.c"
	line	5
	
___lldiv:	
;incstack = 0
	callstack 4
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	13
	
l2958:	
	movlw	high highword(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___lldiv@quotient+2)
	movlw	high(0)
	movwf	(___lldiv@quotient+1)
	movlw	low(0)
	movwf	(___lldiv@quotient)

	line	14
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u2571
	goto	u2570
u2571:
	goto	l2978
u2570:
	line	15
	
l2960:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	16
	goto	l2964
	line	17
	
l2962:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u2585:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u2585
	line	18
	movlw	low(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	line	16
	
l2964:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l2962
u2590:
	line	21
	
l2966:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u2605:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u2605
	line	22
	
l2968:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u2615
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u2615
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u2615
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u2615:
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l2974
u2610:
	line	23
	
l2970:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	24
	
l2972:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	26
	
l2974:	
	movlw	01h
u2625:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u2625

	line	27
	
l2976:	
	movlw	01h
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l2966
u2630:
	line	29
	
l2978:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	30
	
l573:	
	return
	callstack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_init_ds1307

;; *************** function _init_ds1307 *****************
;; Defined at:
;;		line 5 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_read_ds1307
;;		_write_ds1307
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"ds1307.c"
	line	5
global __ptext16
__ptext16:	;psect for function _init_ds1307
psect	text16
	file	"ds1307.c"
	line	5
	
_init_ds1307:	
;incstack = 0
	callstack 1
; Regs used in _init_ds1307: [wreg+status,2+status,0+pclath+cstack]
	line	9
	
l3004:	
	movlw	low(0)
	fcall	_read_ds1307
	movwf	(init_ds1307@dummy)
	line	10
	
l3006:	
	movf	(init_ds1307@dummy),w
	andlw	07Fh
	movwf	(init_ds1307@dummy)
	line	11
	
l3008:	
	movf	(init_ds1307@dummy),w
	movwf	(write_ds1307@data)
	movlw	low(0)
	fcall	_write_ds1307
	line	12
	
l204:	
	return
	callstack 0
GLOBAL	__end_of_init_ds1307
	__end_of_init_ds1307:
	signat	_init_ds1307,89
	global	_write_ds1307

;; *************** function _write_ds1307 *****************
;; Defined at:
;;		line 29 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  data            1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	29
global __ptext17
__ptext17:	;psect for function _write_ds1307
psect	text17
	file	"ds1307.c"
	line	29
	
_write_ds1307:	
;incstack = 0
	callstack 2
; Regs used in _write_ds1307: [wreg+status,2+status,0+pclath+cstack]
	movwf	(write_ds1307@addr)
	line	31
	
l2926:	
	fcall	_i2c_start
	line	32
	movlw	low(0D0h)
	fcall	_i2c_write
	line	33
	movf	(write_ds1307@addr),w
	fcall	_i2c_write
	line	34
	movf	(write_ds1307@data),w
	fcall	_i2c_write
	line	35
	fcall	_i2c_stop
	line	36
	
l210:	
	return
	callstack 0
GLOBAL	__end_of_write_ds1307
	__end_of_write_ds1307:
	signat	_write_ds1307,8313
	global	_init_digital_keypad

;; *************** function _init_digital_keypad *****************
;; Defined at:
;;		line 4 in file "digital_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"digital_keypad.c"
	line	4
global __ptext18
__ptext18:	;psect for function _init_digital_keypad
psect	text18
	file	"digital_keypad.c"
	line	4
	
_init_digital_keypad:	
;incstack = 0
	callstack 5
; Regs used in _init_digital_keypad: [wreg+status,2]
	line	7
	
l3010:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(134)^080h,w	;volatile
	iorlw	03Fh
	movwf	(134)^080h	;volatile
	line	9
	
l242:	
	return
	callstack 0
GLOBAL	__end_of_init_digital_keypad
	__end_of_init_digital_keypad:
	signat	_init_digital_keypad,89
	global	_init_clcd

;; *************** function _init_clcd *****************
;; Defined at:
;;		line 39 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_init_display_controller
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"clcd.c"
	line	39
global __ptext19
__ptext19:	;psect for function _init_clcd
psect	text19
	file	"clcd.c"
	line	39
	
_init_clcd:	
;incstack = 0
	callstack 3
; Regs used in _init_clcd: [wreg+status,2+status,0+pclath+cstack]
	line	42
	
l2990:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	45
	
l2992:	
	bcf	(1098/8)^080h,(1098)&7	;volatile
	line	46
	
l2994:	
	bcf	(1097/8)^080h,(1097)&7	;volatile
	line	48
	
l2996:	
	fcall	_init_display_controller
	line	49
	
l122:	
	return
	callstack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
	global	_init_display_controller

;; *************** function _init_display_controller *****************
;; Defined at:
;;		line 16 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_init_clcd
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	16
global __ptext20
__ptext20:	;psect for function _init_display_controller
psect	text20
	file	"clcd.c"
	line	16
	
_init_display_controller:	
;incstack = 0
	callstack 3
; Regs used in _init_display_controller: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l2904:	
	asmopt push
asmopt off
movlw	195
movwf	((??_init_display_controller+0)+0+1)
	movlw	205
movwf	((??_init_display_controller+0)+0)
	u3667:
decfsz	((??_init_display_controller+0)+0),f
	goto	u3667
	decfsz	((??_init_display_controller+0)+0+1),f
	goto	u3667
asmopt pop

	line	22
	
l2906:	
	clrf	(clcd_write@mode)
	movlw	low(033h)
	fcall	_clcd_write
	line	23
	
l2908:	
	asmopt push
asmopt off
movlw	27
movwf	((??_init_display_controller+0)+0+1)
	movlw	158
movwf	((??_init_display_controller+0)+0)
	u3677:
decfsz	((??_init_display_controller+0)+0),f
	goto	u3677
	decfsz	((??_init_display_controller+0)+0+1),f
	goto	u3677
	nop
asmopt pop

	line	24
	clrf	(clcd_write@mode)
	movlw	low(033h)
	fcall	_clcd_write
	line	25
	
l2910:	
	asmopt push
asmopt off
	movlw	166
movwf	((??_init_display_controller+0)+0)
	u3687:
decfsz	(??_init_display_controller+0)+0,f
	goto	u3687
	nop
asmopt pop

	line	26
	
l2912:	
	clrf	(clcd_write@mode)
	movlw	low(033h)
	fcall	_clcd_write
	line	27
	
l2914:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop
	asmopt pop

	line	29
	
l2916:	
	clrf	(clcd_write@mode)
	movlw	low(038h)
	fcall	_clcd_write
	line	30
	
l2918:	
	asmopt push
asmopt off
	movlw	166
movwf	((??_init_display_controller+0)+0)
	u3697:
decfsz	(??_init_display_controller+0)+0,f
	goto	u3697
	nop
asmopt pop

	line	32
	clrf	(clcd_write@mode)
	movlw	low(01h)
	fcall	_clcd_write
	line	33
	
l2920:	
	asmopt push
asmopt off
	movlw	166
movwf	((??_init_display_controller+0)+0)
	u3707:
decfsz	(??_init_display_controller+0)+0,f
	goto	u3707
	nop
asmopt pop

	line	35
	
l2922:	
	clrf	(clcd_write@mode)
	movlw	low(0Ch)
	fcall	_clcd_write
	line	36
	asmopt push
asmopt off
	movlw	166
movwf	((??_init_display_controller+0)+0)
	u3717:
decfsz	(??_init_display_controller+0)+0,f
	goto	u3717
	nop
asmopt pop

	line	37
	
l119:	
	return
	callstack 0
GLOBAL	__end_of_init_display_controller
	__end_of_init_display_controller:
	signat	_init_display_controller,89
	global	_init_adc

;; *************** function _init_adc *****************
;; Defined at:
;;		line 3 in file "adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"adc.c"
	line	3
global __ptext21
__ptext21:	;psect for function _init_adc
psect	text21
	file	"adc.c"
	line	3
	
_init_adc:	
;incstack = 0
	callstack 5
; Regs used in _init_adc: [wreg]
	line	8
	
l2982:	
	movlw	low(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	12
	
l2984:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(255/8),(255)&7	;volatile
	line	13
	
l2986:	
	bcf	(254/8),(254)&7	;volatile
	line	16
	
l2988:	
	bsf	(248/8),(248)&7	;volatile
	line	17
	
l229:	
	return
	callstack 0
GLOBAL	__end_of_init_adc
	__end_of_init_adc:
	signat	_init_adc,89
	global	_display_dash_board

;; *************** function _display_dash_board *****************
;; Defined at:
;;		line 53 in file "car_black_box_def.c"
;; Parameters:    Size  Location     Type
;;  event           1    wreg     PTR unsigned char 
;;		 -> main@event(3), 
;;  speed           1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  event           1    8[BANK0 ] PTR unsigned char 
;;		 -> main@event(3), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_clcd_print
;;		_clcd_putch
;;		_display_time
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"car_black_box_def.c"
	line	53
global __ptext22
__ptext22:	;psect for function _display_dash_board
psect	text22
	file	"car_black_box_def.c"
	line	53
	
_display_dash_board:	
;incstack = 0
	callstack 0
; Regs used in _display_dash_board: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(display_dash_board@event)
	line	55
	
l3232:	
	movlw	low(((STR_15)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_15)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(080h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	56
	
l3234:	
	fcall	_display_time
	line	57
	
l3236:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(display_dash_board@event),w
	movwf	(clcd_print@str)
	movlw	0x0
	movwf	(clcd_print@str+1)

	movlw	low(0CBh)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	58
	movlw	low(0CEh)
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display_dash_board@speed),w
	movwf	(??_display_dash_board+0)+0
	clrf	(??_display_dash_board+0)+0+1
	movf	0+(??_display_dash_board+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_display_dash_board+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_clcd_putch
	line	59
	movlw	low(0CFh)
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display_dash_board@speed),w
	movwf	(??_display_dash_board+0)+0
	clrf	(??_display_dash_board+0)+0+1
	movf	0+(??_display_dash_board+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_display_dash_board+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_clcd_putch
	line	60
	
l326:	
	return
	callstack 0
GLOBAL	__end_of_display_dash_board
	__end_of_display_dash_board:
	signat	_display_dash_board,8313
	global	_display_time

;; *************** function _display_time *****************
;; Defined at:
;;		line 40 in file "car_black_box_def.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_clcd_putch
;;		_get_time
;; This function is called by:
;;		_display_dash_board
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	40
global __ptext23
__ptext23:	;psect for function _display_time
psect	text23
	file	"car_black_box_def.c"
	line	40
	
_display_time:	
;incstack = 0
	callstack 0
; Regs used in _display_time: [wreg+status,2+status,0+pclath+cstack]
	line	42
	
l3032:	
	fcall	_get_time
	line	43
	movlw	low(0C2h)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time),w
	fcall	_clcd_putch
	line	44
	movlw	low(0C3h)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_time)+01h,w
	fcall	_clcd_putch
	line	45
	movlw	low(0C4h)
	movwf	(clcd_putch@addr)
	movlw	low(03Ah)
	fcall	_clcd_putch
	line	46
	movlw	low(0C5h)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_time)+02h,w
	fcall	_clcd_putch
	line	47
	movlw	low(0C6h)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_time)+03h,w
	fcall	_clcd_putch
	line	48
	movlw	low(0C7h)
	movwf	(clcd_putch@addr)
	movlw	low(03Ah)
	fcall	_clcd_putch
	line	49
	movlw	low(0C8h)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_time)+04h,w
	fcall	_clcd_putch
	line	50
	movlw	low(0C9h)
	movwf	(clcd_putch@addr)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_time)+05h,w
	fcall	_clcd_putch
	line	51
	
l323:	
	return
	callstack 0
GLOBAL	__end_of_display_time
	__end_of_display_time:
	signat	_display_time,89
	global	_get_time

;; *************** function _get_time *****************
;; Defined at:
;;		line 26 in file "car_black_box_def.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_read_ds1307
;; This function is called by:
;;		_display_time
;;		_log_car_event
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	26
global __ptext24
__ptext24:	;psect for function _get_time
psect	text24
	file	"car_black_box_def.c"
	line	26
	
_get_time:	
;incstack = 0
	callstack 1
; Regs used in _get_time: [wreg+status,2+status,0+pclath+cstack]
	line	28
	
l2928:	
	movlw	low(02h)
	fcall	_read_ds1307
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_clock_reg)
	line	29
	movlw	low(01h)
	fcall	_read_ds1307
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_clock_reg)+01h
	line	30
	movlw	low(0)
	fcall	_read_ds1307
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_clock_reg)+02h
	line	31
	
l2930:	
	movf	(_clock_reg),w
	movwf	(??_get_time+0)+0
	movlw	04h
u2525:
	clrc
	rrf	(??_get_time+0)+0,f
	addlw	-1
	skipz
	goto	u2525
	movf	0+(??_get_time+0)+0,w
	andlw	03h
	addlw	030h
	movwf	(_time)
	line	32
	
l2932:	
	movf	(_clock_reg),w
	andlw	0Fh
	addlw	030h
	movwf	0+(_time)+01h
	line	33
	
l2934:	
	movf	0+(_clock_reg)+01h,w
	movwf	(??_get_time+0)+0
	movlw	04h
u2535:
	clrc
	rrf	(??_get_time+0)+0,f
	addlw	-1
	skipz
	goto	u2535
	movf	0+(??_get_time+0)+0,w
	andlw	07h
	addlw	030h
	movwf	0+(_time)+02h
	line	34
	
l2936:	
	movf	0+(_clock_reg)+01h,w
	andlw	0Fh
	addlw	030h
	movwf	0+(_time)+03h
	line	35
	
l2938:	
	movf	0+(_clock_reg)+02h,w
	movwf	(??_get_time+0)+0
	movlw	04h
u2545:
	clrc
	rrf	(??_get_time+0)+0,f
	addlw	-1
	skipz
	goto	u2545
	movf	0+(??_get_time+0)+0,w
	andlw	07h
	addlw	030h
	movwf	0+(_time)+04h
	line	36
	
l2940:	
	movf	0+(_clock_reg)+02h,w
	andlw	0Fh
	addlw	030h
	movwf	0+(_time)+05h
	line	37
	
l2942:	
	clrf	0+(_time)+06h
	line	38
	
l320:	
	return
	callstack 0
GLOBAL	__end_of_get_time
	__end_of_get_time:
	signat	_get_time,89
	global	_read_ds1307

;; *************** function _read_ds1307 *****************
;; Defined at:
;;		line 14 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    6[COMMON] unsigned char 
;;  data            1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_get_time
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"ds1307.c"
	line	14
global __ptext25
__ptext25:	;psect for function _read_ds1307
psect	text25
	file	"ds1307.c"
	line	14
	
_read_ds1307:	
;incstack = 0
	callstack 1
; Regs used in _read_ds1307: [wreg+status,2+status,0+pclath+cstack]
	movwf	(read_ds1307@addr)
	line	18
	
l2878:	
	fcall	_i2c_start
	line	19
	movlw	low(0D0h)
	fcall	_i2c_write
	line	20
	movf	(read_ds1307@addr),w
	fcall	_i2c_write
	line	21
	fcall	_i2c_rep_start
	line	22
	movlw	low(0D1h)
	fcall	_i2c_write
	line	23
	movlw	low(0)
	fcall	_i2c_read
	movwf	(read_ds1307@data)
	line	24
	fcall	_i2c_stop
	line	26
	
l2880:	
	movf	(read_ds1307@data),w
	line	27
	
l207:	
	return
	callstack 0
GLOBAL	__end_of_read_ds1307
	__end_of_read_ds1307:
	signat	_read_ds1307,4217
	global	_i2c_write

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 69 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2  186[None  ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_wait_for_idle
;; This function is called by:
;;		_read_ds1307
;;		_write_ds1307
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"i2c.c"
	line	69
global __ptext26
__ptext26:	;psect for function _i2c_write
psect	text26
	file	"i2c.c"
	line	69
	
_i2c_write:	
;incstack = 0
	callstack 2
; Regs used in _i2c_write: [wreg+status,2+status,0+pclath+cstack]
	movwf	(i2c_write@data)
	line	71
	
l2862:	
	fcall	_i2c_wait_for_idle
	line	72
	
l2864:	
	movf	(i2c_write@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	74
	
l2866:	
;	Return value of _i2c_write is never used
	line	75
	
l187:	
	return
	callstack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
	signat	_i2c_write,4218
	global	_i2c_rep_start

;; *************** function _i2c_rep_start *****************
;; Defined at:
;;		line 32 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;; This function is called by:
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	32
global __ptext27
__ptext27:	;psect for function _i2c_rep_start
psect	text27
	file	"i2c.c"
	line	32
	
_i2c_rep_start:	
;incstack = 0
	callstack 1
; Regs used in _i2c_rep_start: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l2846:	
	fcall	_i2c_stop
	line	35
	fcall	_i2c_start
	line	37
	
l176:	
	return
	callstack 0
GLOBAL	__end_of_i2c_rep_start
	__end_of_i2c_rep_start:
	signat	_i2c_rep_start,89
	global	_i2c_stop

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 39 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_wait_for_idle
;; This function is called by:
;;		_i2c_rep_start
;;		_read_ds1307
;;		_write_ds1307
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	line	39
global __ptext28
__ptext28:	;psect for function _i2c_stop
psect	text28
	file	"i2c.c"
	line	39
	
_i2c_stop:	
;incstack = 0
	callstack 2
; Regs used in _i2c_stop: [wreg+status,2+status,0+pclath+cstack]
	line	41
	
l2842:	
	fcall	_i2c_wait_for_idle
	line	42
	
l2844:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7	;volatile
	line	43
	
l179:	
	return
	callstack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
	signat	_i2c_stop,89
	global	_i2c_start

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 26 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_wait_for_idle
;; This function is called by:
;;		_i2c_rep_start
;;		_read_ds1307
;;		_write_ds1307
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	line	26
global __ptext29
__ptext29:	;psect for function _i2c_start
psect	text29
	file	"i2c.c"
	line	26
	
_i2c_start:	
;incstack = 0
	callstack 2
; Regs used in _i2c_start: [wreg+status,2+status,0+pclath+cstack]
	line	28
	
l2838:	
	fcall	_i2c_wait_for_idle
	line	29
	
l2840:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	30
	
l173:	
	return
	callstack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
	signat	_i2c_start,89
	global	_i2c_read

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 45 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  ack             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ack             1    4[COMMON] unsigned char 
;;  data            1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_wait_for_idle
;; This function is called by:
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	line	45
global __ptext30
__ptext30:	;psect for function _i2c_read
psect	text30
	file	"i2c.c"
	line	45
	
_i2c_read:	
;incstack = 0
	callstack 2
; Regs used in _i2c_read: [wreg+status,2+status,0+pclath+cstack]
	movwf	(i2c_read@ack)
	line	49
	
l2848:	
	fcall	_i2c_wait_for_idle
	line	50
	
l2850:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7	;volatile
	line	52
	fcall	_i2c_wait_for_idle
	line	53
	
l2852:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(i2c_read@data)
	line	55
	
l2854:	
		decf	((i2c_read@ack)),w
	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l182
u2460:
	line	57
	
l2856:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	58
	goto	l183
	line	59
	
l182:	
	line	61
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7	;volatile
	line	62
	
l183:	
	line	64
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	66
	
l2858:	
	movf	(i2c_read@data),w
	line	67
	
l184:	
	return
	callstack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
	signat	_i2c_read,4217
	global	_i2c_wait_for_idle

;; *************** function _i2c_wait_for_idle *****************
;; Defined at:
;;		line 16 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  guard           2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_read
;;		_i2c_write
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	line	16
global __ptext31
__ptext31:	;psect for function _i2c_wait_for_idle
psect	text31
	file	"i2c.c"
	line	16
	
_i2c_wait_for_idle:	
;incstack = 0
	callstack 2
; Regs used in _i2c_wait_for_idle: [wreg+status,2+status,0]
	line	22
	
l2832:	
	movlw	0D0h
	movwf	(i2c_wait_for_idle@guard)
	movlw	07h
	movwf	((i2c_wait_for_idle@guard))+1
	line	23
	
l163:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7	;volatile
	goto	u2431
	goto	u2430
u2431:
	goto	l2836
u2430:
	
l2834:	
	movf	(145)^080h,w	;volatile
	andlw	01Fh
	btfsc	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l170
u2440:
	
l2836:	
	movlw	01h
	subwf	(i2c_wait_for_idle@guard),f
	movlw	0
	skipc
	decf	(i2c_wait_for_idle@guard+1),f
	subwf	(i2c_wait_for_idle@guard+1),f
	movf	(((i2c_wait_for_idle@guard))),w
iorwf	(((i2c_wait_for_idle@guard+1))),w
	btfss	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l163
u2450:
	line	24
	
l170:	
	return
	callstack 0
GLOBAL	__end_of_i2c_wait_for_idle
	__end_of_i2c_wait_for_idle:
	signat	_i2c_wait_for_idle,89
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v2.46/pic/sources/c99/common/awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] int 
;;  dividend        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    8[COMMON] unsigned char 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_dash_board
;;		_log_car_event
;;		_login
;;		_view_log
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/awmod.c"
	line	5
global __ptext32
__ptext32:	;psect for function ___awmod
psect	text32
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/awmod.c"
	line	5
	
___awmod:	
;incstack = 0
	callstack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	12
	
l3140:	
	clrf	(___awmod@sign)
	line	13
	
l3142:	
	btfss	(___awmod@dividend+1),7
	goto	u2881
	goto	u2880
u2881:
	goto	l3148
u2880:
	line	14
	
l3144:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	15
	
l3146:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	17
	
l3148:	
	btfss	(___awmod@divisor+1),7
	goto	u2891
	goto	u2890
u2891:
	goto	l3152
u2890:
	line	18
	
l3150:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	19
	
l3152:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l3170
u2900:
	line	20
	
l3154:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	21
	goto	l3160
	line	22
	
l3156:	
	movlw	01h
	
u2915:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2915
	line	23
	
l3158:	
	movlw	low(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	21
	
l3160:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l3156
u2920:
	line	26
	
l3162:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2935
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2935:
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l3166
u2930:
	line	27
	
l3164:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	28
	
l3166:	
	movlw	01h
	
u2945:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2945
	line	29
	
l3168:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l3162
u2950:
	line	31
	
l3170:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l3174
u2960:
	line	32
	
l3172:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	33
	
l3174:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	34
	
l703:	
	return
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v2.46/pic/sources/c99/common/awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] int 
;;  dividend        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       4       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_dash_board
;;		_log_car_event
;;		_login
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/awdiv.c"
	line	5
global __ptext33
__ptext33:	;psect for function ___awdiv
psect	text33
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/awdiv.c"
	line	5
	
___awdiv:	
;incstack = 0
	callstack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	13
	
l3096:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	14
	
l3098:	
	btfss	(___awdiv@divisor+1),7
	goto	u2781
	goto	u2780
u2781:
	goto	l3104
u2780:
	line	15
	
l3100:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	16
	
l3102:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	18
	
l3104:	
	btfss	(___awdiv@dividend+1),7
	goto	u2791
	goto	u2790
u2791:
	goto	l3110
u2790:
	line	19
	
l3106:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	20
	
l3108:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	22
	
l3110:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	23
	
l3112:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l3132
u2800:
	line	24
	
l3114:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	25
	goto	l3120
	line	26
	
l3116:	
	movlw	01h
	
u2815:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2815
	line	27
	
l3118:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	25
	
l3120:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l3116
u2820:
	line	30
	
l3122:	
	movlw	01h
	
u2835:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2835
	line	31
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2845
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2845:
	skipc
	goto	u2841
	goto	u2840
u2841:
	goto	l3128
u2840:
	line	32
	
l3124:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	33
	
l3126:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	35
	
l3128:	
	movlw	01h
	
u2855:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2855
	line	36
	
l3130:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l3122
u2860:
	line	38
	
l3132:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l3136
u2870:
	line	39
	
l3134:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	40
	
l3136:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	41
	
l690:	
	return
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_clear_log

;; *************** function _clear_log *****************
;; Defined at:
;;		line 262 in file "car_black_box_def.c"
;; Parameters:    Size  Location     Type
;;  reset_flag      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  reset_flag      1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_clcd_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	file	"car_black_box_def.c"
	line	262
global __ptext34
__ptext34:	;psect for function _clear_log
psect	text34
	file	"car_black_box_def.c"
	line	262
	
_clear_log:	
;incstack = 0
	callstack 4
; Regs used in _clear_log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(clear_log@reset_flag)
	line	266
	
l3424:	
		movlw	23
	xorwf	((clear_log@reset_flag)),w
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l3434
u3280:
	line	268
	
l3426:	
	movlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_event_count)
	movlw	0FFh
	movwf	((_event_count))+1
	line	269
	movlw	low(0FFh)
	movwf	(_pos)
	line	270
	
l3428:	
	movlw	low(((STR_22)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_22)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(080h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	271
	
l3430:	
	movlw	low(((STR_23)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_23)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C0h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	272
	asmopt push
asmopt off
movlw  77
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_clear_log+0)+0+2)
movlw	25
movwf	((??_clear_log+0)+0+1)
	movlw	79
movwf	((??_clear_log+0)+0)
	u3727:
decfsz	((??_clear_log+0)+0),f
	goto	u3727
	decfsz	((??_clear_log+0)+0+1),f
	goto	u3727
	decfsz	((??_clear_log+0)+0+2),f
	goto	u3727
asmopt pop

	line	273
	movlw	low(011h)
	goto	l393
	line	275
	
l3434:	
	movlw	low(022h)
	line	276
	
l393:	
	return
	callstack 0
GLOBAL	__end_of_clear_log
	__end_of_clear_log:
	signat	_clear_log,4217
	global	_change_password

;; *************** function _change_password *****************
;; Defined at:
;;		line 278 in file "car_black_box_def.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     unsigned char 
;;  reset_flag      1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  key             1    9[BANK0 ] unsigned char 
;;  i               2   10[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_clear_screen
;;		_eeprom_write
;;		_strncmp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=0
	line	278
global __ptext35
__ptext35:	;psect for function _change_password
psect	text35
	file	"car_black_box_def.c"
	line	278
	
_change_password:	
;incstack = 0
	callstack 4
; Regs used in _change_password: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(change_password@key)
	line	282
	
l3438:	
		movlw	25
	xorwf	((change_password@reset_flag)),w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l3444
u3290:
	line	284
	
l3440:	
	clrf	(change_password@pos)
	clrf	(change_password@pos+1)
	line	285
	
l3442:	
	movlw	01h
	movwf	(change_password@once)
	movlw	0
	movwf	((change_password@once))+1
	line	287
	
l3444:	
	movf	(change_password@pos+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3305
	movlw	04h
	subwf	(change_password@pos),w
u3305:

	skipnc
	goto	u3301
	goto	u3300
u3301:
	goto	l3456
u3300:
	
l3446:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((change_password@once)),w
iorwf	((change_password@once+1)),w
	btfsc	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l3456
u3310:
	line	289
	
l3448:	
	clrf	(change_password@once)
	clrf	(change_password@once+1)
	line	290
	
l3450:	
	movlw	low(((STR_24)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_24)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(080h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	291
	
l3452:	
	clrf	(clcd_write@mode)
	movlw	low(0C0h)
	fcall	_clcd_write
	line	292
	
l3454:	
	clrf	(clcd_write@mode)
	movlw	low(0Fh)
	fcall	_clcd_write
	line	293
	goto	l3470
	line	294
	
l3456:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(change_password@pos+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3325
	movlw	04h
	subwf	(change_password@pos),w
u3325:

	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l3470
u3320:
	
l3458:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((change_password@once)),w
iorwf	((change_password@once+1)),w
	btfss	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l3470
u3330:
	line	296
	
l3460:	
	movlw	01h
	movwf	(change_password@once)
	movlw	0
	movwf	((change_password@once))+1
	line	297
	
l3462:	
	fcall	_clear_screen
	line	298
	
l3464:	
	movlw	low(((STR_25)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_25)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(080h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	299
	
l3466:	
	clrf	(clcd_write@mode)
	movlw	low(0C0h)
	fcall	_clcd_write
	line	300
	
l3468:	
	clrf	(clcd_write@mode)
	movlw	low(0Fh)
	fcall	_clcd_write
	line	302
	
l3470:	
		movlw	55
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((change_password@key)),w
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l3478
u3340:
	line	304
	
l3472:	
	movf	(change_password@pos),w
	addlw	low(change_password@pwd|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	low(034h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	305
	
l3474:	
	movf	(change_password@pos),w
	andlw	03h
	addlw	0C0h
	movwf	(clcd_putch@addr)
	movlw	low(02Ah)
	fcall	_clcd_putch
	line	306
	
l3476:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(change_password@pos),f
	skipnc
	incf	(change_password@pos+1),f
	movlw	0
	addwf	(change_password@pos+1),f
	line	307
	goto	l3486
	line	308
	
l3478:	
		movlw	47
	xorwf	((change_password@key)),w
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l3486
u3350:
	line	310
	
l3480:	
	movf	(change_password@pos),w
	addlw	low(change_password@pwd|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	low(032h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	311
	
l3482:	
	movf	(change_password@pos),w
	andlw	03h
	addlw	0C0h
	movwf	(clcd_putch@addr)
	movlw	low(02Ah)
	fcall	_clcd_putch
	goto	l3476
	line	314
	
l3486:	
		movlw	8
	xorwf	((change_password@pos)),w
iorwf	((change_password@pos+1)),w
	btfss	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l3528
u3360:
	line	316
	
l3488:	
	movlw	(low(change_password@pwd|((0x0)<<8)+04h))&0ffh
	movwf	(strncmp@r)
	movlw	04h
	movwf	(strncmp@n)
	movlw	0
	movwf	((strncmp@n))+1
	movlw	(low(change_password@pwd|((0x0)<<8)))&0ffh
	fcall	_strncmp
	movf	((0+(?_strncmp))),w
iorwf	((1+(?_strncmp))),w
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l3516
u3370:
	line	319
	
l3490:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(change_password@i)
	clrf	(change_password@i+1)
	line	321
	
l3496:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(change_password@i),w
	addlw	low(change_password@pwd|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(eeprom_write@value)
	movf	(change_password@i),w
	fcall	_eeprom_write
	line	322
	
l3498:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(change_password@i),f
	skipnc
	incf	(change_password@i+1),f
	movlw	0
	addwf	(change_password@i+1),f
	
l3500:	
	movf	(change_password@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3385
	movlw	04h
	subwf	(change_password@i),w
u3385:

	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l3496
u3380:
	line	323
	
l3502:	
	fcall	_clear_screen
	line	324
	
l3504:	
	movlw	low(((STR_26)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_26)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(080h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	325
	
l3506:	
	movlw	low(((STR_27)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_27)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C0h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	326
	
l3508:	
	asmopt push
asmopt off
movlw  77
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_change_password+0)+0+2)
movlw	25
movwf	((??_change_password+0)+0+1)
	movlw	79
movwf	((??_change_password+0)+0)
	u3737:
decfsz	((??_change_password+0)+0),f
	goto	u3737
	decfsz	((??_change_password+0)+0+1),f
	goto	u3737
	decfsz	((??_change_password+0)+0+2),f
	goto	u3737
asmopt pop

	line	327
	
l3510:	
	movlw	low(011h)
	goto	l413
	line	331
	
l3516:	
	fcall	_clear_screen
	line	332
	
l3518:	
	movlw	low(((STR_28)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_28)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(080h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	333
	
l3520:	
	movlw	low(((STR_29)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_29)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C0h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	goto	l3508
	line	339
	
l3528:	
	movlw	low(010h)
	line	340
	
l413:	
	return
	callstack 0
GLOBAL	__end_of_change_password
	__end_of_change_password:
	signat	_change_password,8313
	global	_strncmp

;; *************** function _strncmp *****************
;; Defined at:
;;		line 3 in file "/opt/microchip/xc8/v2.46/pic/sources/c99/common/strncmp.c"
;; Parameters:    Size  Location     Type
;;  l               1    wreg     PTR const unsigned char 
;;		 -> change_password@pwd(9), login@npassword(4), 
;;  r               1    2[COMMON] PTR const unsigned char 
;;		 -> change_password@pwd(9), login@spassword(4), 
;;  n               2    3[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  l               1    7[COMMON] PTR const unsigned char 
;;		 -> change_password@pwd(9), login@npassword(4), 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_login
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=2
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/strncmp.c"
	line	3
global __ptext36
__ptext36:	;psect for function _strncmp
psect	text36
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/strncmp.c"
	line	3
	
_strncmp:	
;incstack = 0
	callstack 5
; Regs used in _strncmp: [wreg-fsr0h+status,2+status,0]
	movwf	(strncmp@l)
	line	5
	
l3074:	
	movlw	01h
	subwf	(strncmp@n),f
	movlw	0
	skipc
	decf	(strncmp@n+1),f
	subwf	(strncmp@n+1),f
		incf	(((strncmp@n))),w
	skipz
	goto	u2731
	incf	(((strncmp@n+1))),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l3084
u2730:
	
l3076:	
	clrf	(?_strncmp)
	clrf	(?_strncmp+1)
	goto	l1003
	line	6
	
l3080:	
	movlw	low(01h)
	movwf	(??_strncmp+0)+0
	movf	(??_strncmp+0)+0,w
	addwf	(strncmp@l),f
	movlw	low(01h)
	movwf	(??_strncmp+0)+0
	movf	(??_strncmp+0)+0,w
	addwf	(strncmp@r),f
	
l3082:	
	movlw	01h
	subwf	(strncmp@n),f
	movlw	0
	skipc
	decf	(strncmp@n+1),f
	subwf	(strncmp@n+1),f
	
l3084:	
	movf	(strncmp@l),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	(indf),w
	btfsc	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l3092
u2740:
	
l3086:	
	movf	(strncmp@r),w
	movwf	fsr0
	movf	(indf),w
	btfsc	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l3092
u2750:
	
l3088:	
	movf	((strncmp@n)),w
iorwf	((strncmp@n+1)),w
	btfsc	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l3092
u2760:
	
l3090:	
	movf	(strncmp@r),w
	movwf	fsr
	movf	indf,w
	movwf	(??_strncmp+0)+0
	movf	(strncmp@l),w
	movwf	fsr0
	movf	indf,w
	xorwf	(??_strncmp+0)+0,w
	skipnz
	goto	u2771
	goto	u2770
u2771:
	goto	l3080
u2770:
	line	7
	
l3092:	
	movf	(strncmp@r),w
	movwf	fsr
	movf	indf,w
	movwf	(??_strncmp+0)+0
	movf	(strncmp@l),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_strncmp+1)+0
	movf	(??_strncmp+0)+0,w
	subwf	(??_strncmp+1)+0,w
	movwf	(?_strncmp)
	clrf	(?_strncmp)+1
	skipc
	decf	1+(?_strncmp),f
	
	line	8
	
l1003:	
	return
	callstack 0
GLOBAL	__end_of_strncmp
	__end_of_strncmp:
	signat	_strncmp,12410
	global	_eeprom_write

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 6 in file "/opt/microchip/xc8/v2.46/pic/sources/c99/pic/__eewrite.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  value           1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_log_event
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/pic/__eewrite.c"
	line	6
global __ptext37
__ptext37:	;psect for function _eeprom_write
psect	text37
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/pic/__eewrite.c"
	line	6
	
_eeprom_write:	
;incstack = 0
	callstack 4
; Regs used in _eeprom_write: [wreg+status,2+status,0]
	movwf	(eeprom_write@addr)
	line	8
	
l526:	
	
l527:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(396)^0180h,1	;volsfr
	goto	u2491
	goto	u2490
u2491:
	goto	l527
u2490:
	
l2884:	
	movf	(eeprom_write@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movf	(eeprom_write@value),w
	movwf	(268)^0100h	;volatile
	
l2886:	
	movlw	low(03Fh)
	movwf	(??_eeprom_write+0)+0
	movf	(??_eeprom_write+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volsfr
	
l2888:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(3),0	;volatile
	
l2890:	
	btfss	(11),7	;volatile
	goto	u2501
	goto	u2500
u2501:
	goto	l530
u2500:
	
l2892:	
	bsf	(3),0	;volatile
	
l530:	
	bcf	(11),7	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(396)^0180h,2	;volsfr
	
l2894:	
	movlw	low(055h)
	movwf	(397)^0180h	;volsfr
	movlw	low(0AAh)
	movwf	(397)^0180h	;volsfr
	
l2896:	
	bsf	(396)^0180h,1	;volsfr
	
l2898:	
	bcf	(396)^0180h,2	;volsfr
	
l2900:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(3),0	;volatile
	goto	u2511
	goto	u2510
u2511:
	goto	l533
u2510:
	
l2902:	
	bsf	(11),7	;volatile
	line	9
	
l533:	
	return
	callstack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
	signat	_eeprom_write,8313
	global	_clear_screen

;; *************** function _clear_screen *****************
;; Defined at:
;;		line 91 in file "car_black_box_def.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_main
;;		_login
;;		_login_menu
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=0
	file	"car_black_box_def.c"
	line	91
global __ptext38
__ptext38:	;psect for function _clear_screen
psect	text38
	file	"car_black_box_def.c"
	line	91
	
_clear_screen:	
;incstack = 0
	callstack 4
; Regs used in _clear_screen: [wreg+status,2+status,0+pclath+cstack]
	line	93
	
l3020:	
	clrf	(clcd_write@mode)
	movlw	low(01h)
	fcall	_clcd_write
	line	94
	
l3022:	
	asmopt push
asmopt off
	movlw	166
movwf	((??_clear_screen+0)+0)
	u3747:
decfsz	(??_clear_screen+0)+0,f
	goto	u3747
	nop
asmopt pop

	line	95
	
l340:	
	return
	callstack 0
GLOBAL	__end_of_clear_screen
	__end_of_clear_screen:
	signat	_clear_screen,89
	global	_clcd_putch

;; *************** function _clcd_putch *****************
;; Defined at:
;;		line 51 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     const unsigned char 
;;  addr            1    9[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    4[BANK0 ] const unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       1       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_display_time
;;		_display_dash_board
;;		_login
;;		_login_menu
;;		_view_log
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	file	"clcd.c"
	line	51
global __ptext39
__ptext39:	;psect for function _clcd_putch
psect	text39
	file	"clcd.c"
	line	51
	
_clcd_putch:	
;incstack = 0
	callstack 4
; Regs used in _clcd_putch: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@data)
	line	53
	
l2924:	
	clrf	(clcd_write@mode)
	movf	(clcd_putch@addr),w
	fcall	_clcd_write
	line	54
	clrf	(clcd_write@mode)
	incf	(clcd_write@mode),f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(clcd_putch@data),w
	fcall	_clcd_write
	line	55
	
l125:	
	return
	callstack 0
GLOBAL	__end_of_clcd_putch
	__end_of_clcd_putch:
	signat	_clcd_putch,8313
	global	_clcd_print

;; *************** function _clcd_print *****************
;; Defined at:
;;		line 57 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  str             2    6[COMMON] PTR const unsigned char 
;;		 -> STR_29(9), STR_28(17), STR_27(15), STR_26(17), 
;;		 -> STR_25(17), STR_24(14), STR_23(15), STR_22(15), 
;;		 -> STR_21(9), STR_20(18), STR_19(16), STR_18(17), 
;;		 -> STR_17(17), STR_16(17), STR_15(17), STR_14(15), 
;;		 -> STR_13(10), STR_12(9), STR_9(17), STR_8(18), 
;;		 -> main@event(3), 
;;  addr            1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_main
;;		_display_dash_board
;;		_login
;;		_login_menu
;;		_view_log
;;		_clear_log
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	line	57
global __ptext40
__ptext40:	;psect for function _clcd_print
psect	text40
	file	"clcd.c"
	line	57
	
_clcd_print:	
;incstack = 0
	callstack 4
; Regs used in _clcd_print: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	59
	
l3024:	
	clrf	(clcd_write@mode)
	movf	(clcd_print@addr),w
	fcall	_clcd_write
	line	61
	goto	l3030
	line	63
	
l3026:	
	clrf	(clcd_write@mode)
	incf	(clcd_write@mode),f
	movf	(clcd_print@str+1),w
	movwf	btemp+1
	movf	(clcd_print@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_clcd_write
	line	64
	
l3028:	
	movlw	01h
	addwf	(clcd_print@str),f
	skipnc
	incf	(clcd_print@str+1),f
	movlw	0
	addwf	(clcd_print@str+1),f
	line	61
	
l3030:	
	movf	(clcd_print@str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(clcd_print@str),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u2651
	goto	u2650
u2651:
	goto	l3026
u2650:
	line	66
	
l131:	
	return
	callstack 0
GLOBAL	__end_of_clcd_print
	__end_of_clcd_print:
	signat	_clcd_print,8313
	global	_clcd_write

;; *************** function _clcd_write *****************
;; Defined at:
;;		line 4 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;;  mode            1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_init_display_controller
;;		_clcd_putch
;;		_clcd_print
;;		_clear_screen
;;		_login
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1,group=0
	line	4
global __ptext41
__ptext41:	;psect for function _clcd_write
psect	text41
	file	"clcd.c"
	line	4
	
_clcd_write:	
;incstack = 0
	callstack 4
; Regs used in _clcd_write: [wreg]
	movwf	(clcd_write@byte)
	line	6
	
l2870:	
	btfsc	(clcd_write@mode),0
	goto	u2471
	goto	u2470
	
u2471:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7	;volatile
	goto	u2484
u2470:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7	;volatile
u2484:
	line	7
	
l2872:	
	movf	(clcd_write@byte),w
	movwf	(8)	;volatile
	line	9
	
l2874:	
	bsf	(73/8),(73)&7	;volatile
	line	10
	asmopt push
asmopt off
	movlw	166
movwf	((??_clcd_write+0)+0)
	u3757:
decfsz	(??_clcd_write+0)+0,f
	goto	u3757
	nop
asmopt pop

	line	11
	
l2876:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7	;volatile
	line	13
	asmopt push
asmopt off
movlw	27
movwf	((??_clcd_write+0)+0+1)
	movlw	158
movwf	((??_clcd_write+0)+0)
	u3767:
decfsz	((??_clcd_write+0)+0),f
	goto	u3767
	decfsz	((??_clcd_write+0)+0+1),f
	goto	u3767
	nop
asmopt pop

	line	14
	
l116:	
	return
	callstack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v2.46/pic/sources/c99/common/lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[COMMON] unsigned int 
;;  dividend        2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] unsigned int 
;;  counter         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         4       4       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/lwdiv.c"
	line	5
global __ptext42
__ptext42:	;psect for function ___lwdiv
psect	text42
	file	"/opt/microchip/xc8/v2.46/pic/sources/c99/common/lwdiv.c"
	line	5
	
___lwdiv:	
;incstack = 0
	callstack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l3532:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l3534:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l3554
u3390:
	line	15
	
l3536:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	16
	goto	l3542
	line	17
	
l3538:	
	movlw	01h
	
u3405:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3405
	line	18
	
l3540:	
	movlw	low(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	16
	
l3542:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3411
	goto	u3410
u3411:
	goto	l3538
u3410:
	line	21
	
l3544:	
	movlw	01h
	
u3425:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3425
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3435
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3435:
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l3550
u3430:
	line	23
	
l3546:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l3548:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l3550:	
	movlw	01h
	
u3445:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3445
	line	27
	
l3552:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l3544
u3450:
	line	29
	
l3554:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l817:	
	return
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 4 in file "isr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1,group=0
	file	"isr.c"
	line	4
global __ptext43
__ptext43:	;psect for function _isr
psect	text43
	file	"isr.c"
	line	4
	
_isr:	
;incstack = 0
	callstack 0
; Regs used in _isr: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_isr+0)
	movf	pclath,w
	movwf	(??_isr+1)
	ljmp	_isr
psect	text43
	line	8
	
i1l2814:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l270
u238_20:
	line	10
	
i1l2816:	
	movlw	01h
	addwf	(isr@count),f
	skipnc
	incf	(isr@count+1),f
	movlw	0
	addwf	(isr@count+1),f
		movlw	226
	xorwf	(((isr@count))),w
	movlw	4
	skipnz
	xorwf	(((isr@count+1))),w
	btfss	status,2
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l2830
u239_20:
	line	12
	
i1l2818:	
	clrf	(isr@count)
	clrf	(isr@count+1)
	line	13
	
i1l2820:	
	movf	((_sec)),w
	btfsc	status,2
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l2824
u240_20:
	line	15
	
i1l2822:	
	movlw	01h
	subwf	(_sec),f
	line	16
	goto	i1l2830
	line	17
	
i1l2824:	
	movf	((_sec)),w
	btfss	status,2
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l2830
u241_20:
	
i1l2826:	
	movf	((_return_time)),w
	btfsc	status,2
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l2830
u242_20:
	line	18
	
i1l2828:	
	movlw	01h
	subwf	(_return_time),f
	line	22
	
i1l2830:	
	bcf	(97/8),(97)&7	;volatile
	line	24
	
i1l270:	
	movf	(??_isr+1),w
	movwf	pclath
	swapf	(??_isr+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
