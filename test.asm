    processor 6502
    include "vcs.h"
    include "macro.h"

; -----
PATTERN         = $80
TIMETOCHANGE    = 20
; -----

    SEG
    ORG $F000

Reset
    ; Clear RAM and TIA regs
    ldx #0
    lda #0
Clear
    sta 0,x
    inx
    bne Clear

    ; Once-only init
    lda #$AA
    sta PATTERN ; The binary PF 'pattern'

    lda #45
    sta COLUPF  ; set playfield color

    ldy #0

StartOfFrame

    ; Start of vertical blank processing

    lda #0
    sta VBLANK

    lda #2
    sta VSYNC

    ; 3 scanlines of VSYNCH signal
    sta WSYNC
    sta WSYNC
    sta WSYNC

    lda #0
    sta VSYNC

    ; 37 scanlines of vertical blank...

    ldx #37
VerticalBlank
    sta WSYNC
    dex
    bne VerticalBlank

    ; Change pattern every 20 frames
    iny
    cpy #TIMETOCHANGE
    bne notyet
    ldy #0

    lda PATTERN ; Invert pattern
    eor #$FF
    sta PATTERN
notyet
    lda PATTERN
    sta PF1
    eor #$FF
    sta PF0
    sta PF2

    ; 192 scanlines of picture...

    ldx #192
Picture
    stx COLUBK
    sta WSYNC
    txa
    eor #$FF
    sta COLUPF
    dex
    bne Picture

    lda #%01000010
    sta VBLANK      ; end of screen - enter blanking

    ; 30 scanlines of overscan...

    ldx #30
Overscan
    sta WSYNC
    dex
    bne Overscan

    jmp StartOfFrame

; ----

        ORG $FFFA

InterruptVectors

        .word Reset         ; NMI
        .word Reset         ; RESET
        .word Reset         ; IRQ

    END

