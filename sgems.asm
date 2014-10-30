; Disassembly of sgems.bin
; Disassembled Wed Oct 29 10:13:44 2014
; Using DiStella v3.01a
;
; Command Line: ./distella -pafs sgems.bin 
;

    processor 6502
    include "vcs.h"
    include "macro.h"

L73BB   =   $73BB

       ORG $7000
L7000: .byte $38,$64,$66,$66,$66,$26,$1C,$00,$38,$1C,$18,$18,$38,$18,$08,$00
       .byte $7C,$22,$10,$0C,$06,$46,$3C,$00,$38,$64,$06,$1C,$06,$26,$1C,$00
       .byte $0C,$0C,$7F,$64,$26,$16,$0E,$00,$38,$64,$06,$06,$3C,$30,$1E,$00
       .byte $38,$64,$66,$66,$3C,$10,$0E,$00,$10,$18,$18,$08,$04,$46,$3E,$00
       .byte $3C,$66,$26,$1C,$32,$32,$1C,$00,$10,$08,$04,$3E,$66,$26,$1C,$00
       .byte $00,$46,$2C,$18,$34,$62,$00,$00
TITLE_WORDS_S: .byte $3C,$62,$43,$07,$0E,$38,$70,$61,$23,$1E
TITLE_WORDS_T: .byte $18,$18,$18,$18,$18,$18,$18,$18,$18,$7E
TITLE_WORDS_R: .byte $C6,$CC,$CC,$D8,$F8,$CC,$C6,$C6,$CC,$F8
TITLE_WORDS_A: .byte $83,$83,$83,$FF,$46,$46,$46,$2C,$2C,$18,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$63,$94,$14,$14,$13,$10,$38,$00,$00,$EE,$8A,$8A,$8E,$80
       .byte $E0,$00,$25,$A5,$A5,$B5,$29,$20,$20,$00,$8E,$82,$EE,$AA,$EA,$00
       .byte $00,$00,$22,$22,$22,$A3,$42,$02,$03,$00,$07,$91,$97,$95,$D7,$00
       .byte $10,$00,$1D,$24,$1C,$85,$59,$40,$80,$00,$00,$53,$52,$52,$77,$42
       .byte $40,$00,$18,$85,$CD,$29,$24,$00,$00,$00,$00,$1B,$12,$12,$0A,$0A
       .byte $1B,$00,$C9,$29,$29,$2D,$CA,$00,$00,$00,$00,$BB,$A9,$A9
L70E4: .byte $AB,$AA,$BB,$00,$7E,$7E,$3C,$18,$7F,$7F,$7F,$3E,$7F,$3E,$3E,$08
       .byte $7E,$7E,$7E,$7E,$5D,$6B,$36,$1C,$6B,$63,$5D,$3E,$6B,$36,$3E,$08
       .byte $66,$5A,$3C,$7E,$3E,$5D,$6B,$36
TITLE_WORDS_O: .byte $18,$3C,$7E,$FF,$E7,$FF,$7E,$3C,$18,$00
TITLE_WORDS_G: .byte $1D,$33,$63,$63,$67,$67,$60,$60,$33,$1E
TITLE_WORDS_E: .byte $7E,$60,$60,$60,$60,$7C,$60,$60,$60,$7E
TITLE_WORDS_M: .byte $83,$83,$83,$83,$93,$BB,$FF,$E7,$C3,$81,$00,$17,$00,$1D,$43,$85
       .byte $47,$87
L713C: .byte $00,$17
L713E: .byte $00,$1D,$43,$85,$47,$87,$67,$A7,$6C,$AB,$C4,$0E,$C7,$0E,$67,$A7
       .byte $6C,$AB,$C4,$0E,$C7,$0E,$00,$17,$00,$1D,$43,$85,$47,$87,$00,$17
       .byte $00,$1D,$43,$85,$47,$87,$67,$A7,$6C,$AB,$C4,$0E,$C7,$0E,$67,$A7
       .byte $6C,$AB,$C4,$0E,$C7,$0E,$00,$17,$00,$1D,$43,$85,$47,$87,$0F,$47
       .byte $0B,$15,$67,$87,$45,$65,$67,$A7,$6C,$AB,$C4,$0E,$C7,$0E,$A7,$C7
       .byte $85,$A5,$17,$10,$C5,$0B,$00,$1B,$01,$1E,$47,$87,$4B,$89,$0B,$1E
       .byte $0D,$1E,$4E,$8E,$4E,$8E,$6B,$AB,$6E,$AE,$C9,$05,$CB,$09,$6E,$AE
       .byte $6E,$AE,$CE,$0E,$CE,$0E
L71B4: .byte $8C,$8C,$8C,$8C,$8C,$8C,$8C,$8A,$8A,$8A,$8A,$8A,$8A,$88,$88,$88
       .byte $88
L71C5: .byte $86,$86,$84
L71C8: .byte $16
L71C9: .byte $54
L71CA: .byte $92
L71CB: .byte $B4,$16,$54,$92
TITLE_WORDS_P01_COL: .byte $00,$02,$04,$06,$08,$08,$06,$04,$02,$00
TITLE_WORDS_PF_COL:  .byte $88,$88,$86,$86,$86,$86,$86,$86,$86
L71E2: .byte $86,$01,$02,$04,$06,$08,$0A,$0C,$0F,$12

START:
       CLD            ;2
       LDA    #$00    ;2
       LDX    #$04    ;2
L71F1: STA    VSYNC,X ;4
       INX            ;2
       BNE    L71F1   ;2
       LDA    INTIM   ;4
       STA    $E9     ;3
       LDA    #$80    ;2
       STA    TIM64T  ;4
       LDA    #$01    ;2
       STA    $83     ;3
       STA    $EA     ;3
       LDA    #$11    ;2
       STA    $E5     ;3
       LDA    #$71    ;2
       STA    $CE     ;3
       STA    $D0     ;3
L7210: LDA    #$00    ;2
       STA    $EE     ;3
L7214: LDA    #$80    ;2
       STA    $EF     ;3
       LDA    #$02    ;2
       BIT    $EE     ;3
       BEQ    L7234   ;2
       EOR    $EE     ;3
       STA    $EE     ;3
       SED            ;2
       CLC            ;2
       LDA    $E5     ;3
L7226: ADC    #$09    ;2
       BCS    L7226   ;2
       STA    $E5     ;3
       CLD            ;2
       JSR    L7F56   ;6
       LDA    #$00    ;2
       STA    $DE     ;3
L7234: JSR    L7F43   ;6
       LDX    #$FF    ;2
       TXS            ;2
       LDA    #$3C    ;2
       STA    $CD     ;3
       JSR    L7587   ;6
       LDX    #$3B    ;2
       LDA    #$0F    ;2
L7245: STA    $91,X   ;4
       DEX            ;2
       BPL    L7245   ;2
       LDA    $E5     ;3
       LSR            ;2
       ORA    #$07    ;2
       TAY            ;2
       LDX    #$08    ;2
L7252: LDA    L7000,Y ;4
       DEY            ;2
       LSR            ;2
       LSR            ;2
       ROL    $BC,X   ;6
       LSR            ;2
       ROL    $BC,X   ;6
       LSR            ;2
       ROL    $A8,X   ;6
       LSR            ;2
       ROL    $A8,X   ;6
       LSR            ;2
       ROL    $94,X   ;6
       LSR            ;2
       ROL    $94,X   ;6
       DEX            ;2
       BPL    L7252   ;2
       LDA    $EE     ;3
       AND    #$81    ;2
       BEQ    L7214   ;2
       JSR    L7EEC   ;6
       LDX    #$FF    ;2
       TXS            ;2
       JSR    L7587   ;6
       JSR    L7F56   ;6
       LDA    #$00    ;2
       STA    $EB     ;3
       STA    $EE     ;3
       STA    $E6     ;3
       STA    $E7     ;3
       STA    $E8     ;3
       STA    $DE     ;3
       STA    $EF     ;3
       LDX    #$3B    ;2
L7290: STA    $91,X   ;4
       DEX            ;2
       BPL    L7290   ;2
L7295: LDA    #$3C    ;2
       STA    $CD     ;3
       JSR    L7587   ;6
       LDA    #$00    ;2
       STA    $E1     ;3
       JSR    L7EEC   ;6
       LDA    #$02    ;2
       STA    $D1     ;3
       LDA    #$12    ;2
       STA    $D2     ;3
       LDA    #$00    ;2
       STA    $E4     ;3
       STA    $E3     ;3
L72B1: JSR    L7587   ;6
       JSR    L7BCD   ;6
       JSR    L7F43   ;6
       DEC    $D2     ;5
       BMI    L72CB   ;2
       JSR    L7BDC   ;6
       LDY    #$00    ;2
       EOR    #$FF    ;2
       AND    ($DA),Y ;5
       STA    $DC     ;3
       BEQ    L72CE   ;2
L72CB: JMP    L73D0   ;3
L72CE: JSR    L7546   ;6
       JSR    L7BB6   ;6
       LDA    $E3     ;3
       BNE    L7337   ;2
       JSR    L7BCD   ;6
       LDA    $D1     ;3
       STA    $DD     ;3
       LDA    SWCHA   ;4
       BMI    L72F0   ;2
       LDA    $D1     ;3
       CMP    #$05    ;2
       BCS    L72F0   ;2
       INC    $D1     ;5
       LDA    #$06    ;2
       STA    $E3     ;3
L72F0: BIT    SWCHA   ;4
       BVS    L72FF   ;2
       LDA    $D1     ;3
       BEQ    L72FF   ;2
       DEC    $D1     ;5
       LDA    #$06    ;2
       STA    $E3     ;3
L72FF: LDA    $ED     ;3
       AND    $EE     ;3
       AND    #$10    ;2
       BEQ    L7313   ;2
       LDA    $E3     ;3
       BNE    L7313   ;2
       LDA    #$FF    ;2
       STA    $E4     ;3
       LDA    #$02    ;2
       STA    $E3     ;3
L7313: LDA    #$08    ;2
       BIT    $EE     ;3
       BEQ    L7328   ;2
       EOR    $EE     ;3
       STA    $EE     ;3
       LDA    $D5     ;3
       BEQ    L7328   ;2
       LDA    $D8     ;3
       BEQ    L7328   ;2
       JSR    L7F35   ;6
L7328: JSR    L7BDC   ;6
       LDY    #$00    ;2
       EOR    #$FF    ;2
       AND    ($DA),Y ;5
       BEQ    L7337   ;2
       LDA    $DD     ;3
       STA    $D1     ;3
L7337: BIT    $EE     ;3
       BPL    L734F   ;2
       LDA    #$7F    ;2
       AND    $EE     ;3
       STA    $EE     ;3
       LDX    $D5     ;3
       BEQ    L734F   ;2
       LDY    $D3     ;3
       STY    $D5     ;3
       LDY    $D4     ;3
       STY    $D3     ;3
       STX    $D4     ;3
L734F: JSR    L7BB6   ;6
       LDA    $F6     ;3
       BNE    L7365   ;2
       LDA    $E5     ;3
       AND    #$0F    ;2
       TAX            ;2
       LDA    $E4     ;3
       CLC            ;2
       ADC    L71E2,X ;4
       STA    $E4     ;3
       BCS    L7381   ;2
L7365: LDA    $EE     ;3
       LSR            ;2
       BCC    L737E   ;2
       LDA    #$C0    ;2
       STA    $EE     ;3
       STA    $EF     ;3
L7370: JSR    L7587   ;6
       LDA    $EE     ;3
       LSR            ;2
       BCC    L7370   ;2
       LDA    #$00    ;2
       STA    $EE     ;3
       STA    $EF     ;3
L737E: JMP    L72CE   ;3
L7381: SBC    #$78    ;2
       STA    $E4     ;3
       JSR    L7546   ;6
       JMP    L72B1   ;3
L738B: LDA    #$01    ;2
       STA    $F4     ;3
       LDA    #$78    ;2
       STA    $E3     ;3
L7393: LDA    #$FF    ;2
       EOR    $E3     ;3
       CMP    #$A0    ;2
       BCS    L739D   ;2
       STA    $F5     ;3
L739D: JSR    L7587   ;6
       JSR    L7F43   ;6
       LDX    #$03    ;2
L73A5: LDA    $E3     ;3
       BEQ    L73CD   ;2
       STA    $DC     ;3
       LDA    #$FF    ;2
       STA    $DD     ;3
       LDY    #$07    ;2
L73B1: JSR    L7ED7   ;6
       LSR    $DC     ;5
       BCC    L73BB   ;2
       ORA    $DD     ;3
       BIT    $DD25   ;4
       STA    $DD     ;3
       DEY            ;2
       BNE    L73B1   ;2
       LDA    $DD     ;3
       AND    $F0,X   ;4
       STA    $F0,X   ;4
       DEX            ;2
       BPL    L73A5   ;2
       BMI    L7393   ;2
L73CD: JMP    L7210   ;3
L73D0: LDA    #$34    ;2
       STA    $CD     ;3
       LDA    $DE     ;3
       AND    #$07    ;2
       STA    $F7     ;3
       LDA    $DE     ;3
       AND    #$38    ;2
       LSR            ;2
       LSR            ;2
       LSR            ;2
       ADC    $F7     ;3
       TAX            ;2
       LDA    L7FD0,X ;4
       STA    $F7     ;3
       LDA    #$01    ;2
       STA    $F6     ;3
       INC    $DE     ;5
       INC    $D2     ;5
       LDA    #$00    ;2
       STA    $E1     ;3
       STA    $E2     ;3
       STA    $DF     ;3
       LDA    #$EF    ;2
       AND    $EE     ;3
       STA    $EE     ;3
       LDA    $D5     ;3
       BNE    L746C   ;2
       LDX    $D2     ;3
       BEQ    L740F   ;2
       LDA    $DC     ;3
       JSR    L7E1D   ;6
       JMP    L74A9   ;3
L740F: LDA    #$83    ;2
       STA    $F5     ;3
       LDA    #$01    ;2
       STA    $F4     ;3
       LDA    #$01    ;2
       STA    $D3     ;3
       LDA    #$EC    ;2
       STA    $DF     ;3
L741F: LDX    $D3     ;3
       LDA    L7F6D,X ;4
       STA    $91     ;3
       STA    $A5     ;3
       STA    $B9     ;3
       CPX    #$07    ;2
       BEQ    L7452   ;2
       INX            ;2
       STX    $D3     ;3
       JSR    L7C0C   ;6
       JMP    L741F   ;3
L7437: LDA    $A2     ;3
       ORA    $B6     ;3
       ORA    $CA     ;3
       BNE    L7469   ;2
       LDA    $DE     ;3
       CMP    #$40    ;2
       BNE    L744F   ;2
       LDA    $E5     ;3
       AND    #$0F    ;2
       CMP    #$09    ;2
       BCS    L744F   ;2
       INC    $E5     ;5
L744F: JMP    L7295   ;3
L7452: LDA    #$04    ;2
       STA    $E2     ;3
       LDA    $E5     ;3
       AND    #$0F    ;2
       STA    $E1     ;3
       SED            ;2
       CLC            ;2
       ADC    $E1     ;3
       ADC    $E1     ;3
       ADC    $E1     ;3
       CLD            ;2
       STA    $E1     ;3
       BNE    L74A9   ;2
L7469: JMP    L738B   ;3
L746C: LDA    $D2     ;3
       CMP    #$12    ;2
       BCS    L7469   ;2
       LDA    $D3     ;3
       CMP    #$07    ;2
       BCC    L748C   ;2
       LDA    #$09    ;2
       STA    $D3     ;3
       STA    $D4     ;3
       STA    $D5     ;3
       LDA    #$FB    ;2
       STA    $DF     ;3
       LDA    #$83    ;2
       STA    $F5     ;3
       LDA    #$01    ;2
       STA    $F4     ;3
L748C: JSR    L7BB6   ;6
L748F: LDA    $D5     ;3
       CMP    #$0F    ;2
       BEQ    L74A9   ;2
       JSR    L7C0C   ;6
       LDA    $D5     ;3
       AND    #$08    ;2
       BEQ    L74A9   ;2
       JSR    L7587   ;6
       INC    $D3     ;5
       INC    $D4     ;5
       INC    $D5     ;5
       BNE    L748C   ;2
L74A9: LDA    $DF     ;3
       BEQ    L7437   ;2
       LDA    #$54    ;2
       STA    $CD     ;3
       LDA    #$07    ;2
       STA    $E3     ;3
       LDX    $E2     ;3
       CPX    #$08    ;2
       BCC    L74BF   ;2
       LDX    #$08    ;2
       LDY    #$01    ;2
L74BF: LDA    L7FC7,X ;4
       STA    $F5     ;3
       LDA    #$01    ;2
       STA    $D5     ;3
       STA    $F4     ;3
       SED            ;2
       CLC            ;2
       INC    $E2     ;5
       LDA    $E5     ;3
       AND    #$0F    ;2
       ADC    $E1     ;3
       BCC    L74D8   ;2
       LDA    #$99    ;2
L74D8: STA    $E1     ;3
       LDA    #$00    ;2
       STA    $E0     ;3
L74DE: BIT    INTIM   ;4
       BMI    L74E7   ;2
       CLD            ;2
       JSR    L7587   ;6
L74E7: SED            ;2
       CLC            ;2
       LDA    $E6     ;3
       ADC    $E1     ;3
       STA    $E6     ;3
       BCC    L74FD   ;2
       LDA    $E7     ;3
       ADC    #$00    ;2
       STA    $E7     ;3
       LDA    $E8     ;3
       ADC    #$00    ;2
       STA    $E8     ;3
L74FD: LDA    $E0     ;3
       ADC    #$01    ;2
       BCC    L7506   ;2
       LDA    #$99    ;2
       CLC            ;2
L7506: STA    $E0     ;3
       DEC    $DF     ;5
       BNE    L74DE   ;2
       CLD            ;2
L750D: JSR    L7587   ;6
       LDA    $E3     ;3
       BNE    L750D   ;2
       LDA    #$5C    ;2
       STA    $CD     ;3
       LDA    #$07    ;2
       STA    $E3     ;3
       LDA    #$FF    ;2
       JSR    L7DD4   ;6
       LDA    #$C0    ;2
       JSR    L7DD4   ;6
L7526: JSR    L7587   ;6
       LDA    $E3     ;3
       BNE    L7526   ;2
       LDA    #$54    ;2
       STA    $CD     ;3
       LDA    #$FF    ;2
       JSR    L7DD4   ;6
       LDA    #$C0    ;2
       JSR    L7DD4   ;6
       LDA    #$00    ;2
       JSR    L7DD4   ;6
       JSR    L7E5B   ;6
       JMP    L748F   ;3
L7546: LDX    #$00    ;2
       JSR    L754E   ;6
       JMP    L7587   ;3
L754E: LDA    $D5,X   ;4
       BNE    L7561   ;2
       LDA    $EB     ;3
       EOR    $D3,X   ;4
       AND    #$04    ;2
       BEQ    L7582   ;2
       LDA    $D3,X   ;4
       EOR    #$07    ;2
       TAY            ;2
       BNE    L7580   ;2
L7561: LDA    $D3,X   ;4
       AND    #$08    ;2
       BEQ    L7582   ;2
       LDA    $EB     ;3
       LSR            ;2
       LSR            ;2
       EOR    $D3,X   ;4
       AND    #$01    ;2
       BEQ    L7582   ;2
       LDY    $D3,X   ;4
       LDA    $D4,X   ;4
       STA    $D5,X   ;4
       STY    $D4,X   ;4
       INY            ;2
       CPY    #$0F    ;2
       BCC    L7580   ;2
       LDY    #$09    ;2
L7580: STY    $D3,X   ;4
L7582: LDX    $81     ;3
       LDY    $82     ;3
       RTS            ;6

L7587: STY    $82     ;3
       STX    $81     ;3
L758B: STA    WSYNC   ;3
       LDA    INTIM   ;4
       CMP    #$7D    ;2
       BCS    L758B   ;2
       DEC    $83     ;5
       BNE    L75ED   ;2
       LDA    #$02    ;2
       STA    WSYNC   ;3
       STA    VBLANK  ;3
       STA    VSYNC   ;3
       LDA    #$00    ;2
       STA    GRP1    ;3
       STA    NUSIZ0  ;3
       STA    NUSIZ1  ;3
       STA    WSYNC   ;3
       LDA    #$A2    ;2
       STA    TIM64T  ;4
       LDA    #$00    ;2
       STA    WSYNC   ;3
       STA    VSYNC   ;3
       LDA    REFP1   ;3
       ASL            ;2
       LDA    SWCHA   ;4
       ROR            ;2
       STA    $85     ;3
       LDA    SWCHB   ;4
       EOR    $85     ;3
       AND    #$03    ;2
       EOR    $85     ;3
       EOR    #$FF    ;2
       TAX            ;2
       STA    $85     ;3
       EOR    $ED     ;3
       STX    $ED     ;3
       AND    $ED     ;3
       ORA    $EE     ;3
       STA    $EE     ;3
       TXA            ;2
       AND    #$03    ;2
       BNE    L75DD   ;2
       STA    $EC     ;3
L75DD: INC    $EC     ;5
       INC    $EC     ;5
       BPL    L75E8   ;2
       STX    $EC     ;3
       JMP    L7210   ;3
L75E8: LDX    #$03    ;2
       JMP    L754E   ;3
L75ED: LDA    $E3     ;3
       BEQ    L75F3   ;2
       DEC    $E3     ;5
L75F3: LDA    $CD     ;3
       CLC            ;2
       ADC    #$02    ;2
       STA    $CF     ;3
       TSX            ;2
       STX    $80     ;3
       LDA    #$10    ;2
       STA    $84     ;3
       LDA    #$00    ;2
       STA    WSYNC   ;3
       STA    VBLANK  ;3
       LDA    #$7D    ;2
       STA    COLUBK  ;3
       STA    COLUPF  ;3
       STA    CTRLPF  ;3
       LDA    #$03    ;2
       STA    PF2     ;3
       LDA    #$CC    ;2
       STA    PF1     ;3
       BIT    $EF     ;3
       BMI    L761E   ;2
       JMP    L7747   ;3
L761E: STA    WSYNC   ;3
       STA    WSYNC   ;3
       LDA    #$0E    ;2
       STA    $84     ;3
       LDA    #$D0    ;2
       STA    HMP0    ;3
       LDA    #$C0    ;2
       STA    HMP1    ;3
       LDA    #$06    ;2
       STA    NUSIZ0  ;3
       LDA    #$02    ;2
       STA    NUSIZ1  ;3
       LDA    #$00    ;2
       STA    GRP0    ;3
       STA    GRP1    ;3
       STA    RESP0   ;3
       LDY    #$09    ;2
       STA    RESP1   ;3
       STA    WSYNC   ;3

       ; draw top bars on title screen
       STA    COLUBK  ;3
       LDA    #$82    ;2
       STA    COLUPF  ;3
       LDX    #$08    ;2
DRAW_TITLE_BARS_TOP: 
       STA    WSYNC   ;3 ;Scanlines 2-10
       DEX            ;2
       BNE    DRAW_TITLE_BARS_TOP ;2

       ; more top bars, different color
       LDA    #$84    ;2
       STA    COLUPF  ;3
       LDX    #$06    ;2
DRAW_TITLE_BARS_TOP_MORE: 
       STA    WSYNC   ;3
       DEX            ;2
       BNE    DRAW_TITLE_BARS_TOP_MORE ;2

       ; prep playfield for drawing top of box surrounding title words, same color
       LDA    #$FF    ;2
       STA    PF2     ;3
       LDA    #$CF    ;2
       STA    PF1     ;3
       ; draw two lines like this
       STA    WSYNC   ;3
       STA    WSYNC   ;3

       ; draw another line, slightly different playfield
       LDA    #$00    ;2
       STA    PF2     ;3
       LDA    #$C8    ;2
       STA    PF1     ;3
       STA    WSYNC   ;3

       LDA    #$86    ;2
       STA    COLUPF  ;3
       LDA    $EB     ;3
       LSR            ;2
       LSR            ;2
       LSR            ;2
       AND    #$03    ;2
       TAX            ;2
       LDA    L71C8,X ;4
       STA    $85     ;3
       EOR    #$FF    ;2
       SEC            ;2
       ADC    L71CA,X ;4
       STA    $86     ;3
       LDA    L71CB,X ;4
       STA    $87     ;3
       EOR    #$FF    ;2
       SEC            ;2
       ADC    L71C9,X ;4
       STA    $88     ;3
       CLC            ;2
       LDA    TITLE_WORDS_P01_COL,Y ;4
       ADC    $85     ;3
       STA    WSYNC   ;3

DRAW_TITLE_WORDS:  
       STA    WSYNC   ;3
       ; Set HMOVE to -8 (set up at end of line)
       STA    HMOVE   ;3
       STA    COLUP0  ;3
       ADC    $86     ;3
       STA    COLUP1  ;3
       LDA    TITLE_WORDS_PF_COL,Y ;4
       STA    COLUPF  ;3
       NOP            ;2
       LDA    TITLE_WORDS_T,Y ;4  ;T
       STA    GRP0    ;3
       LDA    TITLE_WORDS_A,Y ;4 ; A
       STA    GRP1    ;3
       LDA    TITLE_WORDS_O,Y ;4 ; O
       STA    GRP0    ;3
       LDA    TITLE_WORDS_E,Y ;4 ; E
       STA    GRP1    ;3
       LDA    TITLE_WORDS_S,Y ;4 ; S (Last S, but already set up to be first S of next line. Rad)
       STA    GRP0    ;3
       ; Reset HMOVE positions to no offset
       LDX    #$00    ;2
       STX    HMP0    ;3
       STX    HMP1    ;3
       ; Waste 7 cycles in 3 bytes
       PLA            ;4
       NOP    $00     ;3
       STA    HMOVE   ;3
       ; Waste 4 cycles in 1 byte
       PLA            ;4
       ; Writing #80 to HMP0/1 will offset the sprites by -8, for "odd" lines of the title text, but needs triggered by HMOVE read/write
       LDX    #$80    ;2
       ; Get base color from color table
       LDA    TITLE_WORDS_P01_COL,Y ;4
       CLC            ;2
       ADC    $87     ;3
       STA    COLUP0  ;3
       ADC    $88     ;3
       STA    COLUP1  ;3
       STX    HMP0    ;3
       CLC            ;2
       LDA    TITLE_WORDS_R,Y ;4  ; R
       STA    GRP1    ;3
       LDA    TITLE_WORDS_T,Y ;4  ; T
       STA    GRP0    ;3
       LDA    TITLE_WORDS_G,Y ;4  ; G
       STA    GRP1    ;3
       LDA    TITLE_WORDS_M,Y ;4  ; M
       STA    GRP0    ;3
       STX    HMP1    ;3
       LDA    TITLE_WORDS_P01_COL,Y ;4
       ADC    $85     ;3
       DEY            ;2
       BPL    DRAW_TITLE_WORDS ;2

       LDA    #$00    ;2
       STA    GRP0    ;3
       STA    GRP1    ;3
       STA    WSYNC   ;3
       STA    WSYNC   ;3
       LDA    #$03    ;2
       STA    NUSIZ0  ;3
       STA    NUSIZ1  ;3
       LDX    #$04    ;2
L7716: DEX            ;2
       NOP            ;2
       BNE    L7716   ;2
       STA    RESP0   ;3
       STA    RESP1   ;3
       LDA    #$18    ;2
       STA    HMP0    ;3
       LDA    #$28    ;2
       STA    HMP1    ;3
       STA    WSYNC   ;3
       STA    HMOVE   ;3
       LDA    #$CF    ;2
       STA    PF1     ;3
       LDA    #$FF    ;2
       STA    PF2     ;3
       STA    WSYNC   ;3
       STA    WSYNC   ;3
       LDA    #$CC    ;2
       STA    PF1     ;3
       LDA    #$03    ;2
       STA    PF2     ;3
       STA    WSYNC   ;3
       STA    WSYNC   ;3
       PLA            ;4
       NOP            ;2
       JMP    L78E5   ;3
L7747: STA    WSYNC   ;3
       LDA    $D1     ;3
       ASL            ;2
       ASL            ;2
       ASL            ;2
       ADC    #$42    ;2
L7750: SBC    #$0F    ;2
       BCS    L7750   ;2
       EOR    #$07    ;2
       STA    RESP0   ;3
       ASL            ;2
       ASL            ;2
       ASL            ;2
       ASL            ;2
       STA    HMP0    ;3
       STA    WSYNC   ;3
       LDX    #$0A    ;2
L7762: DEX            ;2
       BPL    L7762   ;2
       STA    RESP1   ;3
       STA    WSYNC   ;3
       STA    HMOVE   ;3
       LDA    #$00    ;2
       STA    COLUBK  ;3
       LDA    #$82    ;2
       STA    COLUPF  ;3
       LDX    #$02    ;2
       STA    WSYNC   ;3
L7777: STA    WSYNC   ;3
       LDA    #$00    ;2
       STA    GRP0    ;3
       STA    GRP1    ;3
       STA    WSYNC   ;3
       LDA    $A2,X   ;4
       ORA    $B6,X   ;4
       ORA    $CA,X   ;4
       STA    $85     ;3
       LSR            ;2
       ORA    $85     ;3
       AND    #$55    ;2
       TAY            ;2
       LDA    ($CD),Y ;5
       STA    $85     ;3
       LDA    ($CF),Y ;5
       STA    $86     ;3
       LDY    $D6,X   ;4
       LDA    L7F65,Y ;4
       AND    #$55    ;2
       TAY            ;2
       LDA    L713C,Y ;4
       STA    $87     ;3
       LDA    L713E,Y ;4
       STA    $88     ;3
       STA    WSYNC   ;3
       LDA    $F0     ;3
       STA    GRP0    ;3
       STA    GRP1    ;3
       LDA    $85     ;3
       STA    COLUP0  ;3
       LDA    $87     ;3
       STA    COLUP1  ;3
       LDA    $C9     ;3
       .byte $4B ;.ASR;2
       TAX            ;2
       TAY            ;2
       LDA    ($CD),Y ;5
       STA    $8F     ;3
       LDA    ($CF),Y ;5
       STA    $90     ;3
       LDA    $C9     ;3
       AND    #$55    ;2
       TAY            ;2
       LDA    ($CD),Y ;5
       STA    $8D     ;3
       LDA    ($CF),Y ;5
       STA    $8E     ;3
       STA    WSYNC   ;3
       LDA    $F1     ;3
       STA    GRP0    ;3
       STA    GRP1    ;3
       LDY    $85     ;3
       INY            ;2
       STY    COLUP0  ;3
       LDY    $87     ;3
       INY            ;2
       STY    COLUP1  ;3
       LDA    $B5     ;3
       .byte $4B ;.ASR;2
       TAX            ;2
       TAY            ;2
       LDA    ($CD),Y ;5
       STA    $8B     ;3
       LDA    ($CF),Y ;5
       STA    $8C     ;3
       LDA    $B5     ;3
       AND    #$55    ;2
       TAY            ;2
       LDA    ($CD),Y ;5
       STA    $89     ;3
       LDA    ($CF),Y ;5
       STA    $8A     ;3
       STA    WSYNC   ;3
       LDA    $F2     ;3
       STA    GRP0    ;3
       STA    GRP1    ;3
       LDA    $86     ;3
       STA    COLUP0  ;3
       LDA    $88     ;3
       STA    COLUP1  ;3
       STA    WSYNC   ;3
       LDA    $F3     ;3
       STA    GRP0    ;3
       STA    GRP1    ;3
       LDY    $86     ;3
       INY            ;2
       STY    COLUP0  ;3
       LDY    $88     ;3
       INY            ;2
       STY    COLUP1  ;3
       STA    WSYNC   ;3
       LDA    $F2     ;3
       STA    GRP0    ;3
       STA    GRP1    ;3
       LDA    $86     ;3
       STA    COLUP0  ;3
       LDA    $88     ;3
       STA    COLUP1  ;3
       LDA    L71C5,X ;4
       STA    COLUPF  ;3
       STA    WSYNC   ;3
       LDA    $F1     ;3
       STA    GRP0    ;3
       STA    GRP1    ;3
       LDY    $85     ;3
       INY            ;2
       STY    COLUP0  ;3
       LDY    $87     ;3
       INY            ;2
       STY    COLUP1  ;3
       STA    WSYNC   ;3
       LDA    $F0     ;3
       STA    GRP0    ;3
       STA    GRP1    ;3
       LDY    $85     ;3
       STY    COLUP0  ;3
       LDY    $87     ;3
       STY    COLUP1  ;3
       DEX            ;2
       BMI    L785E   ;2
       JMP    L7777   ;3
L785E: LDA    $A1     ;3
       .byte $4B ;.ASR;2
       TAX            ;2
       TAY            ;2
       LDA    ($CD),Y ;5
       STA    $87     ;3
       LDA    ($CF),Y ;5
       STA    $88     ;3
       LDA    $A1     ;3
       AND    #$55    ;2
       TAY            ;2
       LDA    ($CD),Y ;5
       STA    $85     ;3
       LDA    ($CF),Y ;5
       STA    $86     ;3
       STA    WSYNC   ;3
       LDA    #$03    ;2
       STA    NUSIZ0  ;3
       STA    NUSIZ1  ;3
       LDA    #$00    ;2
       STA    GRP0    ;3
       STA    GRP1    ;3
       LDA    #$06    ;2
       STA    COLUP0  ;3
       STA    COLUP1  ;3
       PLA            ;4
       PLA            ;4
       .byte $04 ;.NOOP;3
       BRK            ;7
       LDX    #$FF    ;2
       STA    RESP0   ;3
       STA    RESP1   ;3
       LDA    #$18    ;2
       STA    HMP0    ;3
       LDA    #$28    ;2
       STA    HMP1    ;3
       LDA    #$F0    ;2
       STA    HMBL    ;3
       STX    GRP0    ;3
       STX    GRP1    ;3
       STA    WSYNC   ;3
       STA    HMOVE   ;3
       JMP    L7939   ;3
L78AD: LDX    #$0B    ;2
L78AF: LDA    #$04    ;2
       STA    $85,X   ;4
       DEX            ;2
       BPL    L78AF   ;2
       JMP    L7939   ;3
L78B9: LDX    $8F     ;3
       LDY    $F0     ;3
       STA    WSYNC   ;3
       PLA            ;4
       PLA            ;4
       LDA    $89     ;3
       TXS            ;2
       LDX    $8D     ;3
       STY    GRP0    ;3
       STY    GRP1    ;3
       LDY    $85     ;3
       STY    COLUP0  ;3
       LDY    $87     ;3
       NOP            ;2
       STY    COLUP1  ;3
       LDY    $8B     ;3
       NOP            ;2
       STA    COLUP0  ;3
       STY    COLUP1  ;3
       STX    COLUP0  ;3
       TSX            ;2
       STX    COLUP1  ;3
       LDA    #$00    ;2
       STA    GRP0    ;3
       STA    GRP1    ;3
L78E5: LDX    $84     ;3
       BIT    $EF     ;3
       BVS    L78AD   ;2
       LDA    $91,X   ;4
       AND    #$55    ;2
       TAY            ;2
       LDA    ($CD),Y ;5
       STA    $85     ;3
       LDA    ($CF),Y ;5
       STA    $86     ;3
       LDA    $91,X   ;4
       .byte $4B ;.ASR;2
       TAX            ;2
       TAY            ;2
       LDA    ($CD),Y ;5
       STA    $87     ;3
       LDA    ($CF),Y ;5
       STA    $88     ;3
       LDA    $A5,X   ;4
       AND    #$55    ;2
       TAY            ;2
       LDA    ($CD),Y ;5
       STA    $89     ;3
       LDA    ($CF),Y ;5
       STA    $8A     ;3
       LDA    $A5,X   ;4
       .byte $4B ;.ASR;2
       TAX            ;2
       TAY            ;2
       LDA    ($CD),Y ;5
       STA    $8B     ;3
       LDA    ($CF),Y ;5
       STA    $8C     ;3
       LDA    $B9,X   ;4
       AND    #$55    ;2
       TAY            ;2
       LDA    ($CD),Y ;5
       STA    $8D     ;3
       LDA    ($CF),Y ;5
       STA    $8E     ;3
       LDA    $B9,X   ;4
       .byte $4B ;.ASR;2
       TAX            ;2
       TAY            ;2
       LDA    ($CD),Y ;5
       STA    $8F     ;3
       LDA    ($CF),Y ;5
       STA    $90     ;3
L7939: STA    WSYNC   ;3
       LDA    $89     ;3
       LDY    $F0     ;3
       NOP            ;2
       NOP            ;2
       NOP            ;2
       LDX    $8F     ;3
       TXS            ;2
       LDX    $8D     ;3
       STY    GRP0    ;3
       STY    GRP1    ;3
       LDY    $85     ;3
       STY    COLUP0  ;3
       LDY    $87     ;3
       STY    COLUP1  ;3
       LDY    $8B     ;3
       STA    COLUP0  ;3
       STY    COLUP1  ;3
       STX    COLUP0  ;3
       TSX            ;2
       STX    COLUP1  ;3
       LDA    $89     ;3
       ADC    #$01    ;2
       LDY    $F1     ;3
       STA    WSYNC   ;3
       LDX    $8F     ;3
       INX            ;2
       TXS            ;2
       LDX    $8D     ;3
       NOP            ;2
       STY    GRP0    ;3
       INX            ;2
       STY    GRP1    ;3
       LDY    $85     ;3
       INY            ;2
       STY    COLUP0  ;3
       LDY    $87     ;3
       INY            ;2
       STY    COLUP1  ;3
       LDY    $8B     ;3
       INY            ;2
       STA    COLUP0  ;3
       STY    COLUP1  ;3
       STX    COLUP0  ;3
       TSX            ;2
       STX    COLUP1  ;3
       LDA    $8A     ;3
       NOP            ;2
       LDY    $F2     ;3
       STA    WSYNC   ;3
       LDX    $90     ;3
       NOP            ;2
       TXS            ;2
       LDX    $8E     ;3
       NOP            ;2
       STY    GRP0    ;3
       NOP            ;2
       STY    GRP1    ;3
       LDY    $86     ;3
       NOP            ;2
       STY    COLUP0  ;3
       LDY    $88     ;3
       NOP            ;2
       STY    COLUP1  ;3
       LDY    $8C     ;3
       NOP            ;2
       STA    COLUP0  ;3
       STY    COLUP1  ;3
       STX    COLUP0  ;3
       TSX            ;2
       STX    COLUP1  ;3
       LDA    $8A     ;3
       ADC    #$01    ;2
       LDY    $F3     ;3
       STA    WSYNC   ;3
       LDX    $90     ;3
       INX            ;2
       TXS            ;2
       LDX    $8E     ;3
       NOP            ;2
       STY    GRP0    ;3
       INX            ;2
       STY    GRP1    ;3
       LDY    $86     ;3
       INY            ;2
       STY    COLUP0  ;3
       LDY    $88     ;3
       INY            ;2
       STY    COLUP1  ;3
       LDY    $8C     ;3
       INY            ;2
       STA    COLUP0  ;3
       STY    COLUP1  ;3
       STX    COLUP0  ;3
       TSX            ;2
       STX    COLUP1  ;3
       LDY    $84     ;3
       LDX    L71B4,Y ;4
       LDA    $8A     ;3
       LDY    $F2     ;3
       STX    COLUPF  ;3
       STA    WSYNC   ;3
       LDX    $90     ;3
       NOP            ;2
       TXS            ;2
       LDX    $8E     ;3
       NOP            ;2
       STY    GRP0    ;3
       NOP            ;2
       STY    GRP1    ;3
       LDY    $86     ;3
       NOP            ;2
       STY    COLUP0  ;3
       LDY    $88     ;3
       NOP            ;2
       STY    COLUP1  ;3
       LDY    $8C     ;3
       NOP            ;2
       STA    COLUP0  ;3
       STY    COLUP1  ;3
       STX    COLUP0  ;3
       TSX            ;2
       STX    COLUP1  ;3
       LDA    $89     ;3
       ADC    #$01    ;2
       LDY    $F1     ;3
       STA    WSYNC   ;3
       LDX    $8F     ;3
       INX            ;2
       TXS            ;2
       LDX    $8D     ;3
       NOP            ;2
       STY    GRP0    ;3
       INX            ;2
       STY    GRP1    ;3
       LDY    $85     ;3
       INY            ;2
       STY    COLUP0  ;3
       LDY    $87     ;3
       INY            ;2
       STY    COLUP1  ;3
       LDY    $8B     ;3
       INY            ;2
       STA    COLUP0  ;3
       STY    COLUP1  ;3
       STX    COLUP0  ;3
       TSX            ;2
       STX    COLUP1  ;3
       DEC    $84     ;5
       BMI    L7A3B   ;2
       JMP    L78B9   ;3
L7A3B: LDA    $89     ;3
       LDY    $F0     ;3
       STA    WSYNC   ;3
       LDX    $8F     ;3
       NOP            ;2
       TXS            ;2
       LDX    $8D     ;3
       NOP            ;2
       STY    GRP0    ;3
       NOP            ;2
       STY    GRP1    ;3
       LDY    $85     ;3
       NOP            ;2
       STY    COLUP0  ;3
       LDY    $87     ;3
       NOP            ;2
       STY    COLUP1  ;3
       LDY    $8B     ;3
       NOP            ;2
       STA    COLUP0  ;3
       STY    COLUP1  ;3
       STX    COLUP0  ;3
       TSX            ;2
       STX    COLUP1  ;3
       LDA    #$00    ;2
       STA    GRP0    ;3
       STA    GRP1    ;3
       LDA    $E1     ;3
       BNE    L7AD9   ;2
       LDA    $DE     ;3
       BNE    L7AA6   ;2
       LDA    $EB     ;3
       LSR            ;2
       LSR            ;2
       EOR    #$3F    ;2
       SEC            ;2
       SBC    #$14    ;2
       BCS    L7A80   ;2
       LDA    #$00    ;2
       BEQ    L7A86   ;2
L7A80: CMP    #$08    ;2
       BCC    L7A86   ;2
       LDA    #$07    ;2
L7A86: ADC    #$88    ;2
       STA    $85     ;3
       ADC    #$10    ;2
       STA    $87     ;3
       ADC    #$10    ;2
       STA    $89     ;3
       ADC    #$10    ;2
       STA    $8B     ;3
       ADC    #$10    ;2
       STA    $8D     ;3
       ADC    #$10    ;2
       STA    $8F     ;3
       LDX    #$05    ;2
L7AA0: DEX            ;2
       BNE    L7AA0   ;2
       JMP    L7B08   ;3
L7AA6: LDA    $E6     ;3
       AND    #$0F    ;2
       ASL            ;2
       ASL            ;2
       ASL            ;2
       STA    $8F     ;3
       LDA    $E7     ;3
       AND    #$0F    ;2
       ASL            ;2
       ASL            ;2
       ASL            ;2
       STA    $8B     ;3
       LDA    $E8     ;3
       AND    #$0F    ;2
       ASL            ;2
       ASL            ;2
       ASL            ;2
       STA    $87     ;3
       LDA    $E6     ;3
       LSR            ;2
       AND    #$78    ;2
       STA    $8D     ;3
       LDA    $E7     ;3
       LSR            ;2
       AND    #$78    ;2
       STA    $89     ;3
       LDA    $E8     ;3
       LSR            ;2
       AND    #$78    ;2
       STA    $85     ;3
       JMP    L7B08   ;3
L7AD9: LDA    $E1     ;3
       AND    #$F0    ;2
       CMP    #$01    ;2
       ROR            ;2
       EOR    #$80    ;2
       STA    $85     ;3
       LDA    $E1     ;3
       AND    #$0F    ;2
       ASL            ;2
       ASL            ;2
       ASL            ;2
       STA    $87     ;3
       LDA    #$50    ;2
       STA    $89     ;3
       LDA    $E0     ;3
       LSR            ;2
       AND    #$78    ;2
       STA    $8B     ;3
       LDA    $E0     ;3
       AND    #$0F    ;2
       ASL            ;2
       ASL            ;2
       ASL            ;2
       STA    $8D     ;3
       LDA    #$80    ;2
       STA    $8F     ;3
       PLA            ;4
       PLA            ;4
       PLA            ;4
L7B08: LDA    #$00    ;2
       STA    GRP0    ;3
       STA    PF1     ;3
       STA    PF2     ;3
       LDA    #$8E    ;2
       STA    COLUBK  ;3
       LDA    #$A5    ;2
       STA    COLUP0  ;3
       STA    COLUP1  ;3
       STA    VDELP0  ;3
       STA    VDELP1  ;3
       LDA    #$70    ;2
       STA    $86     ;3
       STA    $88     ;3
       STA    $8A     ;3
       STA    $8C     ;3
       STA    $8E     ;3
       STA    $90     ;3
       LDY    #$06    ;2
       STY    $84     ;3
L7B30: LDY    $84     ;3
       LDA    ($85),Y ;5
       STA    GRP0    ;3
       STA    WSYNC   ;3
       LDA    ($87),Y ;5
       STA    GRP1    ;3
       LDA    ($89),Y ;5
       STA    GRP0    ;3
       LDA    ($8B),Y ;5
       TAX            ;2
       LDA    ($8F),Y ;5
       STA    $83     ;3
       LDA    ($8D),Y ;5
       TAY            ;2
       LDA    $83     ;3
       STX    GRP1    ;3
       STY    GRP0    ;3
       STA    GRP1    ;3
       STA    GRP0    ;3
       DEC    $84     ;5
       BPL    L7B30   ;2
       LDA    #$00    ;2
       STA    GRP0    ;3
       STA    GRP1    ;3
       STA    VDELP0  ;3
       STA    VDELP1  ;3
       STA    WSYNC   ;3
       LDA    #$02    ;2
       STA    VBLANK  ;3
       LDA    #$A2    ;2
       STA    TIM64T  ;4
       LDA    $EA     ;3
       LSR            ;2
       ROL    $E9     ;5
       BCC    L7B76   ;2
       EOR    #$BD    ;2
L7B76: STA    $EA     ;3
       LDX    $F6     ;3
       INC    $F6     ;5
       LDA    L7FA1,X ;4
       BNE    L7B83   ;2
       STA    $F6     ;3
L7B83: STA    AUDV1   ;3
       LDY    #$0C    ;2
       LDA    $F7     ;3
       STA    AUDF1   ;3
       BPL    L7B8F   ;2
       LDY    #$04    ;2
L7B8F: STY    AUDC1   ;3
       LDX    $F4     ;3
       LDA    L7F78,X ;4
       BEQ    L7B9A   ;2
       INC    $F4     ;5
L7B9A: STA    AUDV0   ;3
       LDY    #$04    ;2
       LDA    $F5     ;3
       STA    AUDF0   ;3
       BPL    L7BA6   ;2
       LDY    #$01    ;2
L7BA6: STY    AUDC0   ;3
       INC    $EB     ;5
       LDA    #$01    ;2
       STA    $83     ;3
       LDX    $80     ;3
       TXS            ;2
       LDX    $81     ;3
       LDY    $82     ;3
       RTS            ;6

L7BB6: JSR    L7BDC   ;6
       BEQ    L7BCC   ;2
L7BBB: LDX    $D3,Y   ;4
       LDA    ($DA),Y ;5
       EOR    L7F65,X ;4
       AND    $D9     ;3
       EOR    L7F65,X ;4
       STA    ($DA),Y ;6
       DEY            ;2
       BPL    L7BBB   ;2
L7BCC: RTS            ;6

L7BCD: JSR    L7BDC   ;6
       BEQ    L7BDB   ;2
L7BD2: LDA    ($DA),Y ;5
       AND    $D9     ;3
       STA    ($DA),Y ;6
       DEY            ;2
       BPL    L7BD2   ;2
L7BDB: RTS            ;6

L7BDC: LDA    #$00    ;2
       STA    $DB     ;3
       LDA    $D1     ;3
       LDX    #$55    ;2
       LSR            ;2
       BCS    L7BE9   ;2
       LDX    #$AA    ;2
L7BE9: STX    $D9     ;3
       TAX            ;2
       LDA    L7F75,X ;4
       CLC            ;2
       ADC    #$91    ;2
       ADC    $D2     ;3
       STA    $DA     ;3
       LDY    #$02    ;2
       LDA    $D2     ;3
       CMP    #$12    ;2
       BCC    L7C06   ;2
       BEQ    L7C05   ;2
       CMP    #$14    ;2
       BCS    L7C09   ;2
       DEY            ;2
L7C05: DEY            ;2
L7C06: LDA    $D9     ;3
       RTS            ;6

L7C09: LDA    #$00    ;2
       RTS            ;6

L7C0C: LDA    #$27    ;2
       STA    $DD     ;3
       LDY    #$39    ;2
L7C12: BIT    INTIM   ;4
       BMI    L7C1A   ;2
       JSR    L7587   ;6
L7C1A: LDA.wy $0091,Y ;4
       EOR.wy $0092,Y ;4
       STA    $DC     ;3
       LDA.wy $0091,Y ;4
       EOR.wy $0093,Y ;4
       ORA    $DC     ;3
       TAX            ;2
       AND    #$15    ;2
       BNE    L7C4C   ;2
       LDA.wy $0091,Y ;4
       AND    #$15    ;2
       BEQ    L7C4C   ;2
       TXA            ;2
       AND    #$2A    ;2
       BNE    L7C48   ;2
       LDA.wy $0091,Y ;4
       AND    #$2A    ;2
       BEQ    L7C48   ;2
       LDA    #$C0    ;2
       INC    $DF     ;5
       BNE    L7C5A   ;2
L7C48: LDA    #$40    ;2
       BNE    L7C5A   ;2
L7C4C: TXA            ;2
       AND    #$2A    ;2
       BNE    L7C71   ;2
       LDA.wy $0091,Y ;4
       AND    #$2A    ;2
       BEQ    L7C71   ;2
       LDA    #$80    ;2
L7C5A: INC    $DF     ;5
       TAX            ;2
       ORA.wy $0091,Y ;4
       STA.wy $0091,Y ;5
       TXA            ;2
       ORA.wy $0092,Y ;4
       STA.wy $0092,Y ;5
       TXA            ;2
       ORA.wy $0093,Y ;4
       STA.wy $0093,Y ;5
L7C71: DEY            ;2
       LDA    $DD     ;3
       CPY    $DD     ;3
       BNE    L7C12   ;2
       CPY    #$27    ;2
       BNE    L7C82   ;2
       LDA    #$13    ;2
       STA    $DD     ;3
       LDY    #$25    ;2
L7C82: CPY    #$13    ;2
       BNE    L7C8C   ;2
       LDA    #$FF    ;2
       STA    $DD     ;3
       LDY    #$11    ;2
L7C8C: STA    $DD     ;3
       TYA            ;2
       BMI    L7C94   ;2
       JMP    L7C12   ;3
L7C94: LDX    #$27    ;2
L7C96: BIT    INTIM   ;4
       BMI    L7C9E   ;2
       JSR    L7587   ;6
L7C9E: LDA    $91,X   ;4
       LSR            ;2
       EOR    $91,X   ;4
       AND    #$15    ;2
       BNE    L7CC3   ;2
       LDA    $91,X   ;4
       TAY            ;2
       EOR    $A5,X   ;4
       AND    #$15    ;2
       BNE    L7CC3   ;2
       TYA            ;2
       AND    #$15    ;2
       BEQ    L7CC3   ;2
       INC    $DF     ;5
       LDA    #$C0    ;2
       ORA    $91,X   ;4
       STA    $91,X   ;4
       LDA    #$40    ;2
       ORA    $A5,X   ;4
       STA    $A5,X   ;4
L7CC3: LDA    $A5,X   ;4
       LSR            ;2
       EOR    $A5,X   ;4
       AND    #$15    ;2
       BNE    L7CE8   ;2
       LDA    $91,X   ;4
       TAY            ;2
       EOR    $A5,X   ;4
       AND    #$2A    ;2
       BNE    L7CE8   ;2
       TYA            ;2
       AND    #$2A    ;2
       BEQ    L7CE8   ;2
       INC    $DF     ;5
       LDA    #$80    ;2
       ORA    $91,X   ;4
       STA    $91,X   ;4
       LDA    #$C0    ;2
       ORA    $A5,X   ;4
       STA    $A5,X   ;4
L7CE8: DEX            ;2
       BPL    L7C96   ;2
       LDA    #$13    ;2
       STA    $DD     ;3
       LDX    #$25    ;2
L7CF1: BIT    INTIM   ;4
       BMI    L7CF9   ;2
       JSR    L7587   ;6
L7CF9: LDA    $91,X   ;4
       TAY            ;2
       EOR    $A7,X   ;4
       AND    #$15    ;2
       BNE    L7D23   ;2
       TYA            ;2
       ASL            ;2
       EOR    $92,X   ;4
       AND    #$2A    ;2
       BNE    L7D23   ;2
       TYA            ;2
       AND    #$15    ;2
       BEQ    L7D23   ;2
       INC    $DF     ;5
       LDA    $91,X   ;4
       ORA    #$40    ;2
       STA    $91,X   ;4
       LDA    $92,X   ;4
       ORA    #$80    ;2
       STA    $92,X   ;4
       LDA    $A7,X   ;4
       ORA    #$40    ;2
       STA    $A7,X   ;4
L7D23: LDA    $93,X   ;4
L7D25: TAY            ;2
       EOR    $A5,X   ;4
       AND    #$15    ;2
       BNE    L7D4D   ;2
       TYA            ;2
       ASL            ;2
       EOR    $92,X   ;4
       AND    #$2A    ;2
       BNE    L7D4D   ;2
       TYA            ;2
       AND    #$15    ;2
       BEQ    L7D4D   ;2
       INC    $DF     ;5
       LDA    $93,X   ;4
       ORA    #$40    ;2
       STA    $93,X   ;4
       LDA    $92,X   ;4
       ORA    #$80    ;2
       STA    $92,X   ;4
       LDA    $A5,X   ;4
       ORA    #$40    ;2
       STA    $A5,X   ;4
L7D4D: LDA    $91,X   ;4
       TAY            ;2
       EOR    $A7,X   ;4
       AND    #$2A    ;2
       BNE    L7D77   ;2
       TYA            ;2
       LSR            ;2
       EOR    $A6,X   ;4
       AND    #$15    ;2
       BNE    L7D77   ;2
       TYA            ;2
       AND    #$2A    ;2
       BEQ    L7D77   ;2
       INC    $DF     ;5
       LDA    $91,X   ;4
       ORA    #$80    ;2
       STA    $91,X   ;4
       LDA    $A6,X   ;4
       ORA    #$40    ;2
       STA    $A6,X   ;4
       LDA    $A7,X   ;4
       ORA    #$80    ;2
       STA    $A7,X   ;4
L7D77: LDA    $93,X   ;4
       TAY            ;2
       EOR    $A5,X   ;4
       AND    #$2A    ;2
       BNE    L7DA1   ;2
       TYA            ;2
       LSR            ;2
       EOR    $A6,X   ;4
       AND    #$15    ;2
       BNE    L7DA1   ;2
       TYA            ;2
       AND    #$2A    ;2
       BEQ    L7DA1   ;2
       INC    $DF     ;5
       LDA    $93,X   ;4
       ORA    #$80    ;2
       STA    $93,X   ;4
       LDA    $A6,X   ;4
       ORA    #$40    ;2
       STA    $A6,X   ;4
       LDA    $A5,X   ;4
       ORA    #$80    ;2
       STA    $A5,X   ;4
L7DA1: DEX            ;2
       CPX    $DD     ;3
       BEQ    L7DA9   ;2
L7DA6: JMP    L7CF1   ;3
L7DA9: BIT    INTIM   ;4
       BMI    L7DB1   ;2
       JSR    L7587   ;6
L7DB1: LDA    #$FF    ;2
       STA    $DD     ;3
       DEX            ;2
       DEX            ;2
       BPL    L7DA6   ;2
       RTS            ;6

L7DBA: .byte $A2,$13,$A9,$00,$2C,$84,$02,$30,$05,$A8,$20,$87,$75,$98,$15,$91
       .byte $15,$A5,$15,$B9,$CA,$10,$ED,$29,$C0,$60
L7DD4: STA    $DD     ;3
       LDA    #$FF    ;2
       STA    $DC     ;3
L7DDA: LDA    $E3     ;3
       BEQ    L7DE4   ;2
       JSR    L7587   ;6
       JMP    L7DDA   ;3
L7DE4: LDA    #$04    ;2
       STA    $E3     ;3
       LDX    #$3B    ;2
L7DEA: BIT    INTIM   ;4
       BMI    L7DF2   ;2
       JSR    L7587   ;6
L7DF2: LDA    $91,X   ;4
       ASL            ;2
       BCS    L7E04   ;2
       BPL    L7E17   ;2
       ROR            ;2
       AND    #$AA    ;2
       EOR    $DD     ;3
       AND    #$AA    ;2
       EOR    $DD     ;3
       BCC    L7E13   ;2
L7E04: BPL    L7E0A   ;2
       LDA    $DD     ;3
       BCS    L7E13   ;2
L7E0A: ROR            ;2
       AND    #$55    ;2
       EOR    $DD     ;3
       AND    #$55    ;2
       EOR    $DD     ;3
L7E13: STA    $91,X   ;4
       STX    $DC     ;3
L7E17: DEX            ;2
       BPL    L7DEA   ;2
       LDA    $DC     ;3
       RTS            ;6

L7E1D: STA    $DC     ;3
       AND    #$15    ;2
       ASL            ;2
       ORA    $DC     ;3
       AND    #$2A    ;2
       STA    $DC     ;3
       LSR            ;2
       ORA    $DC     ;3
       STA    $DC     ;3
       LDX    #$3B    ;2
L7E2F: BIT    INTIM   ;4
       BMI    L7E37   ;2
       JSR    L7587   ;6
L7E37: LDA    $91,X   ;4
       EOR    $DC     ;3
       STA    $DD     ;3
       AND    #$15    ;2
       BNE    L7E49   ;2
       LDA    $91,X   ;4
       ORA    #$40    ;2
       STA    $91,X   ;4
       INC    $DF     ;5
L7E49: LDA    $DD     ;3
       AND    #$2A    ;2
       BNE    L7E57   ;2
       LDA    $91,X   ;4
       ORA    #$80    ;2
       STA    $91,X   ;4
       INC    $DF     ;5
L7E57: DEX            ;2
       BPL    L7E2F   ;2
       RTS            ;6

L7E5B: LDA    $E3     ;3
       BEQ    L7E65   ;2
       JSR    L7587   ;6
       JMP    L7E5B   ;3
L7E65: LDA    #$01    ;2
       STA    $E3     ;3
       LDA    #$FF    ;2
       STA    $DC     ;3
       LDA    #$13    ;2
       STA    $DD     ;3
       LDX    #$00    ;2
L7E73: BIT    INTIM   ;4
       BMI    L7E7B   ;2
       JSR    L7587   ;6
L7E7B: LDA    $92,X   ;4
       BEQ    L7EBC   ;2
       LDA    $91,X   ;4
       AND    #$55    ;2
       BNE    L7EA4   ;2
       LDA    $91,X   ;4
       AND    #$AA    ;2
       BNE    L7E93   ;2
       LDA    $92,X   ;4
       STA    $91,X   ;4
       LDA    #$00    ;2
       BEQ    L7EB8   ;2
L7E93: LDA    $92,X   ;4
       AND    #$55    ;2
       BEQ    L7EBC   ;2
       ORA    $91,X   ;4
       STA    $91,X   ;4
       LDA    $92,X   ;4
       AND    #$AA    ;2
       JMP    L7EB8   ;3
L7EA4: LDA    $91,X   ;4
       AND    #$AA    ;2
       BNE    L7EBC   ;2
       LDA    $92,X   ;4
       AND    #$AA    ;2
       BEQ    L7EBC   ;2
       ORA    $91,X   ;4
       STA    $91,X   ;4
       LDA    $92,X   ;4
       AND    #$55    ;2
L7EB8: STA    $92,X   ;4
       STX    $DC     ;3
L7EBC: INX            ;2
       CPX    $DD     ;3
       BNE    L7E73   ;2
       CPX    #$3B    ;2
       BEQ    L7ED2   ;2
       LDA    #$3B    ;2
       CPX    #$13    ;2
       BNE    L7ECD   ;2
       LDA    #$27    ;2
L7ECD: STA    $DD     ;3
       INX            ;2
       BPL    L7E73   ;2
L7ED2: LDA    $DC     ;3
       BPL    L7E5B   ;2
       RTS            ;6

L7ED7: LDA    $EA     ;3
       LSR            ;2
       ROL    $E9     ;5
       BCC    L7EE0   ;2
       EOR    #$BD    ;2 
L7EE0: LSR            ;2
       ROL    $E9     ;5
       BCC    L7EE7   ;2
       EOR    #$BD    ;2
L7EE7: STA    $EA     ;3
       EOR    $E9     ;3
       RTS            ;6

L7EEC: LDA    $DE     ;3
       AND    #$3F    ;2
       CMP    #$3E    ;2
       BNE    L7F02   ;2
       STA    $DE     ;3
       LDA    #$0F    ;2
       STA    $D3     ;3
       LDA    #$00    ;2
       STA    $D4     ;3
       STA    $D5     ;3
       BEQ    L7F35   ;2
L7F02: JSR    L7ED7   ;6
       CMP    #$D8    ;2
       BCS    L7F22   ;2
       LDY    #$00    ;2
       SEC            ;2
L7F0C: INY            ;2
       SBC    #$24    ;2
       BCS    L7F0C   ;2
       STY    $D3     ;3
       LDY    #$00    ;2
L7F15: INY            ;2
       ADC    #$06    ;2
       BCC    L7F15   ;2
       STY    $D4     ;3
       ADC    #$00    ;2
       STA    $D5     ;3
       BCC    L7F35   ;2
L7F22: LDY    #$09    ;2
       CMP    #$E2    ;2
       BCC    L7F2F   ;2
       LDY    #$00    ;2
L7F2A: INY            ;2
       ADC    #$06    ;2
       BCC    L7F2A   ;2
L7F2F: STY    $D3     ;3
       STY    $D4     ;3
       STY    $D5     ;3
L7F35: LDX    #$02    ;2
L7F37: LDA    $D3,X   ;4
       LDY    $D6,X   ;4
       STA    $D6,X   ;4
       STY    $D3,X   ;4
       DEX            ;2
       BPL    L7F37   ;2
       RTS            ;6

L7F43: LDA    $E5     ;3
       AND    #$0F    ;2
       ASL            ;2
       ASL            ;2
       TAY            ;2
       LDX    #$03    ;2
L7F4C: LDA    L70E4,Y ;4
       STA    $F0,X   ;4
       INY            ;2
       DEX            ;2
       BPL    L7F4C   ;2
       RTS            ;6

; Take upper nibble of $E5 and replicate across both nibbles, writing back to $E5?
L7F56: LDA    $E5     ;3
       AND    #$F0    ;2
       STA    $E5     ;3
       LSR            ;2
       LSR            ;2
       LSR            ;2
       LSR            ;2
       ORA    $E5     ;3
       STA    $E5     ;3
       RTS            ;6

L7F65: .byte $00,$03,$0C,$0F,$30,$33,$3C,$3F
L7F6D: .byte $C0,$C3,$CC,$CF,$F0,$F3,$FC,$FF
L7F75: .byte $00,$14,$28
L7F78: .byte $00,$0F,$0C,$09,$06,$03,$0C,$0A,$07,$05,$02,$0A,$08,$06,$04,$02
       .byte $08,$06,$05,$03,$02,$06,$05,$03,$02,$01,$04,$03,$02,$01,$01,$02
       .byte $01,$01,$01,$01,$01,$01,$01,$01,$01
L7FA1: .byte $00,$0A,$08,$06,$05,$04,$03,$03,$02,$03,$04,$06,$05,$04,$03,$03
       .byte $02,$02,$02,$02,$03,$04,$03,$03,$02,$02,$01,$01,$01,$02,$02,$01
       .byte $01,$01,$01,$01,$01,$00
L7FC7: .byte $1D,$17,$13,$0F,$0E,$0B,$09,$07,$80
L7FD0: .byte $1F,$1B,$18,$17,$14,$12,$10,$0F,$0D,$0C,$0B,$9F,$9B,$98,$97,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

       ORG $7FFA
    
InterruptVectors

        .word START         ; NMI
        .word START         ; RESET
        .word START         ; IRQ

    END
