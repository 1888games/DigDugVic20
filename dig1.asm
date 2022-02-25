
 

//Start of disassembled code
* = $2000 "Bank 1"
    

    L_2000:
        ldy $00
        lda L_3d16,y
        sta $50
        lda $3d01,y
        clc 
        adc $01
        bcc L_2011
        inc $50
    L_2011:
        sta $4f
        lda $03
        sta $1e
        ldx #$00
        ldy #$00
        rts 


    L_201c:
        txa 
        pha 
        tya 
        pha 
    L_2020:
        jsr L_2000
    L_2023:
        txa 
        lda ($b2,x)
        sta ($4f),y
        inc $b2
        bne L_202e
        inc $b3
    L_202e:
        iny 
        dec $1e
        bne L_2023
        inc $00
        dec $02
        bne L_2020
        pla 
        tay 
        pla 
        tax 
        rts 


    L_203e:
        txa 
        pha 
        tya 
        pha 
    L_2042:
        jsr L_2000
    L_2045:
        lda ($4f),y
        and ($b2,x)
        sta ($4f),y
        inc $b2
        bne L_2051
        inc $b3
    L_2051:
        iny 
        dec $1e
        bne L_2045
        inc $00
        dec $02
        bne L_2042
        pla 
        tay 
        pla 
        tax 
        rts 


    L_2061:
        lda $00
        pha 
    L_2064:
        jsr L_2000
    L_2067:
        lda ($4f),y
        eor ($b2,x)
        sta ($4f),y
        inc $b2
        bne L_2073
        inc $b3
    L_2073:
        iny 
        dec $1e
        bne L_2067
        inc $00
        dec $02
        bne L_2064
        pla 
        sta $00
        rts 


        lda #$43
        sta $0d
        lda #$30
        sta $0e
        jmp L_2095
    L_208d:
        lda #$43
        sta $b2
        lda #$30
        sta $b3
    L_2095:
        lda $00
        pha 
        lda $01
        pha 
        lda $02
        pha 
        lda $b2
        pha 
        lda $b3
        pha 
        lda $0b
        cmp $00
        bcc L_20cd
        lda $00
        sta $44
        sta $45
        lda $0b
        sec 
        sbc $00
        beq L_20bd
        clc 
        adc $0f
        jmp L_20d9
    L_20bd:
        lda $02
        cmp $0f
        bcc L_20c8
        lda $02
        jmp L_20d9
    L_20c8:
        lda $0f
        jmp L_20d9
    L_20cd:
        sta $44
        sta $45
        lda $00
        sec 
        sbc $0b
        clc 
        adc $02
    L_20d9:
        sta $46
        lda $0c
        cmp $01
        bcc L_20ed
        lda $01
        sta $47
        lda $0c
        sec 
        sbc $01
        jmp L_20f4
    L_20ed:
        sta $47
        lda $01
        sec 
        sbc $0c
    L_20f4:
        clc 
        adc $03
        sta $4a
        lda $0b
        clc 
        adc $0f
        sec 
        sbc #$01
        sta $4b
        lda $0c
        clc 
        adc $03
        sec 
        sbc #$01
        sta $4c
        lda $00
        clc 
        adc $02
        sec 
        sbc #$01
        sta $4d
        lda $01
        clc 
        adc $03
        sec 
        sbc #$01
        sta $4e
    L_2121:
        ldy $44
        lda L_3d16,y
        sta $50
        lda $3d01,y
        clc 
        adc $47
        bcc L_2132
        inc $50
    L_2132:
        sta $4f
        lda $4a
        sta $49
        lda $47
        sta $48
        ldy #$00
    L_213e:
        lda ($4f),y
        ldx $45
        cpx $0b
        bcc L_2162
        cpx $4b
        beq L_214c
        bcs L_2162
    L_214c:
        ldx $48
        cpx $0c
        bcc L_2162
        cpx $4c
        beq L_2158
        bcs L_2162
    L_2158:
        ldx #$00
        eor ($0d,x)
        inc $0d
        bne L_2162
        inc $0e
    L_2162:
        ldx $45
        cpx $00
        bcc L_2184
        cpx $4d
        beq L_216e
        bcs L_2184
    L_216e:
        ldx $48
        cpx $01
        bcc L_2184
        cpx $4e
        beq L_217a
        bcs L_2184
    L_217a:
        ldx #$00
        eor ($b2,x)
        inc $b2
        bne L_2184
        inc $b3
    L_2184:
        sta ($4f),y
        iny 
        inc $48
        dec $49
        beq L_2190
        jmp L_213e
    L_2190:
        inc $44
        inc $45
        dec $46
        beq L_219b
        jmp L_2121
    L_219b:
        pla 
        sta $0e
        pla 
        sta $0d
        pla 
        sta $0f
        pla 
        sta $0c
        pla 
        sta $0b
        rts 


        lda $ae
        cmp #$96
        beq L_21d8
        lda $26
        sta $9680
        jsr L_21e6
        lda $7a
        beq L_21ca
        lda #$02
        sta $2f
        jsr $ade7
        jsr L_2200
        jmp L_21e5
    L_21ca:
        dec $ae
        lda $ae
        cmp #$ff
        bne L_21d5
        jsr L_2200
    L_21d5:
        jmp L_21e5
    L_21d8:
        lda $42
        cmp #$02
        bne L_21e5
        jsr L_2208
        dec $ae
        inc $42
    L_21e5:
        rts 


    L_21e6:
        lda #$22
        sta $80
        lda #$20
        sta $82
        lda #$66
        sta $81
        lda #$6a
        sta $83
        jsr $abc0
        rts 


        lda $ae
        cmp #$96
        beq L_2207
    L_2200:
        jsr L_2208
        lda #$96
        sta $ae
    L_2207:
        rts 


    L_2208:
        lda #$08
        sta $00
        lda #$63
        sta $01
        lda #$01
        sta $02
        lda #$0a
        sta $03
        ldx $25
        lda $3f,x
        cmp #$0f
        bcc L_2222
        lda #$0f
    L_2222:
        tay 
        lda L_223d,y
        sta $9680
        sta $26
        tya 
        asl 
        tay 
        lda L_224d,y
        sta $b2
        iny 
        lda L_224d,y
        sta $b3
        jsr L_2061
        rts 



    L_223d:
         .byte $0f
        .byte $0d,$0f,$0d,$0d,$0c,$0c,$0d,$0d,$0a,$0a,$0a,$0a,$0a,$0a,$0f

    L_224d:
        lda $31,x

        .byte $bf,$31,$c9,$31,$d3,$31,$d3,$31,$dd,$31,$dd,$31,$e7,$31,$e7,$31
        .byte $f1,$31,$f1,$31,$fb,$31,$fb,$31,$05,$32,$05,$32,$0f,$32

    L_226d:
        ldx #$00
        jsr $b996
        jsr $b9b1
        jsr $a7f8
        lda $07
        cmp #$0b
        bne L_227f
        rts 


    L_227f:
        cmp #$01
        bne L_228d
    L_2283:
        jsr L_231a
    L_2286:
        jsr L_2095
    L_2289:
        jsr $b9cb
        rts 


    L_228d:
        cmp #$02
        bne L_22db
        jsr L_23e7
        lda $0321
        cmp #$01
        beq L_226d
        jsr L_3f70
        lda $de
        beq L_22d2
        lda #$00
        sta $de
        lda $05
        bne L_22d2
        lda #$20
        sta $b2
        lda #$01
        sta $b3
        ldy #$20
    L_22b4:
        lda ($9d),y
        sta ($b2),y
        dey 
        bpl L_22b4
        iny 
        lda $04
        bne L_22c2
        ldy #$10
    L_22c2:
        lda #$ff
        sta ($b2),y
        iny 
        sta ($b2),y
        lda $04
        bne L_22d2
        lda #$3f
        iny 
        sta ($b2),y
    L_22d2:
        jsr L_203e
        jsr $b9b1
        jmp L_2283
    L_22db:
        cmp #$03
        bne L_22ee
        lda $0a
        cmp #$05
        bne L_22e8
        jsr L_239d
    L_22e8:
        jsr L_2384
        jmp L_2286
    L_22ee:
        cmp #$04
        bne L_2301
        jsr L_208d
        jsr $b9cb
        jsr L_3f86
        jsr $b9b1
        jmp L_22e8
    L_2301:
        cmp #$05
        beq L_22e8
        cmp #$0a
        bne L_230f
        jsr L_208d
        jmp L_2289
    L_230f:
        jmp L_230f

    L_2312:
         .byte $00,$00
        .byte $08

    L_2315:
        .byte $00,$10,$00,$00,$04

    L_231a:
        lda $05
        beq L_2339
        clc 
        lda $06
        asl 
        ldy $05
        adc L_2312,y
        ldy $07
        adc L_2315 + $2,y
        tay 
        lda $2374,y
        sta $b2
        iny 
        lda $2374,y
        sta $b3
        rts 


    L_2339:
        clc 
        lda $06
        asl 
        ldy $04
        adc L_2315,y
        ldy $07
        adc L_2312,y
        tay 
        lda L_2354,y
        sta $b2
        iny 
        lda L_2354,y
        sta $b3
        rts 



    L_2354:
         .byte $94,$35,$34
        .byte $36,$d4,$35,$f4,$35,$24,$37,$44,$37,$64,$37,$84,$37,$14,$36,$b4
        .byte $35,$54,$36,$74,$36,$94,$36,$b4,$36,$d4,$36,$f4,$36,$b4,$37,$d4
        .byte $37,$f4,$37,$14,$38,$34,$38,$54,$38,$74,$38,$94,$38

    L_2384:
        lda $07
        sec 
        sbc #$03
        asl 
        tay 
        lda L_2397,y
        sta $b2
        iny 
        lda L_2397,y
        sta $b3
        rts 



    L_2397:
         .byte $b4,$38,$d4
        .byte $38,$f4,$38

    L_239d:
        lda #$01
        sta $43
        ldx #$10
        jsr $b996
        lda #$0c
        sta $017e
        ldx #$00
    L_23ad:
        ldy #$07
        lda ($18),y
        sta $0180
        cmp #$0b
        beq L_23cb
        lda #$0a
        sta ($18),y
        ldy #$08
        lda ($18),y
        cmp #$03
        bne L_23d0
        lda $0180
        cmp #$02
        bcc L_23d0
    L_23cb:
        lda $18
        sta $f0,x
        inx 
    L_23d0:
        jsr $b9a5
        dec $017e
        bne L_23ad
        lda #$00
        sta $f0,x
        ldx #$00
        jsr $b996
        rts 



    L_23e2:
         .byte $00
        .byte $08

    L_23e4:
        .byte $00,$00
        .byte $08

    L_23e7:
        lda $05
        beq L_23ee
        jmp L_2470
    L_23ee:
        ldy $09
        beq L_2401
        lda $00
        sta $0182
        cpy #$10
        beq L_2433
        inc $0182
        jmp L_2433
    L_2401:
        lda $04
        cmp #$01
        beq L_2422
        lda $06
        cmp #$03
        bcc L_2418
        lda $00
        sta $0182
        inc $0182
        jmp L_2429
    L_2418:
        lda $00
        sta $0182
        dec $00
        jmp L_2429
    L_2422:
        inc $00
        lda $00
        sta $0182
    L_2429:
        lda $06
        asl 
        ldy $04
        clc 
        adc L_23e2,y
        tay 
    L_2433:
        lda $bd
        beq L_2453
        lda $a5
        cmp $00
        bne L_2453
        lda $a6
        sec 
        sbc #$02
        cmp $01
        bne L_2453
        lda #$01
        sta $0321
        lda #$02
        sta $031c
        jmp L_246f
    L_2453:
        lda L_24c4,y
        sta $b2
        iny 
        lda L_24c4,y
        sta $b3
        lda #$02
        sta $02
        jsr L_2821
        lda $01
        jsr $a81e
        ldx #$80
        jsr L_2857
    L_246f:
        rts 


    L_2470:
        lda $05
        cmp #$01
        beq L_2483
        jsr L_2506
        lda $01
        clc 
        adc #$0c
        sta $01
        jmp L_24a8
    L_2483:
        lda $01
        cmp #$16
        bcc L_248e
        jsr L_24ec
        lda $01
    L_248e:
        cmp #$0e
        bne L_24a3
        inc $01
        inc $01
        lda #$02
        sta $03
        lda #$70
        sta $b2
        lda #$3a
        sta $b3
        rts 


    L_24a3:
        sec 
        sbc #$06
        sta $01
    L_24a8:
        lda #$0a
        sta $03
        clc 
        lda $06
        asl 
        ldy $05
        adc L_23e4,y
        adc $09
        tay 
        lda L_24d4 + $4,y
        sta $b2
        iny 
        lda L_24d4 + $4,y
        sta $b3
        rts 



    L_24c4:
         .byte $24,$39,$44
        .byte $39,$64,$39,$84,$39,$14,$39,$a4,$39,$c4,$39,$e4,$39

    L_24d4:
        .byte $04,$3a,$14,$3a,$34,$3a
        .byte $48,$3a,$5c,$3a,$5c,$3a,$84,$3a,$98,$3a,$ac,$3a,$ac,$3a,$70,$3a
        .byte $70,$3a

    L_24ec:
        sec 
        sbc #$06
        and #$f0
        sta $0180
        lda #$00
        sta $0183
        lda $01
        sec 
        sbc $0180
        sta $0181
        jmp L_2524
    L_2505:
        rts 


    L_2506:
        lda $01
        clc 
        adc #$10
        cmp #$bb
        bcs L_2505
        sta $0180
        adc #$05
        and #$f0
        adc #$10
        sec 
        sbc $0180
        sta $0181
        lda #$05
        sta $0183
    L_2524:
        lda #$02
    L_2526:
        sta $0182
        jsr $a81b
    L_252c:
        ldy $00
        lda L_3d16,y
        sta $50
        lda $3d01,y
        clc 
        adc $0180
        sta $4f
        bcc L_2540
        inc $50
    L_2540:
        ldx $0181
        ldy #$00
    L_2545:
        jsr L_2588
        bne L_2550
        lda ($4f),y
        and #$aa
        sta ($4f),y
    L_2550:
        iny 
        dex 
        bne L_2545
        inc $00
        iny 
        dec $0182
        bne L_252c
        dec $00
        dec $00
        lda $0180
        clc 
        adc $0183
        cmp #$b0
        bcc L_256d
        lda #$b0
    L_256d:
        sta $0180
        jsr L_2823
        lda $00
        sta $0182
        lda $0180
        ldx #$80
        jsr L_2859
        iny 
        lda $0181
        sta $9600,y
        rts 


    L_2588:
        tya 
        pha 
        clc 
        adc $0180
        jsr L_259f
        sta $0184
        pla 
        tay 
        lda $0184
        and #$08
        rts 


        lda $0180
    L_259f:
        lsr 
        lsr 
        lsr 
        lsr 
        tay 
        lda L_284b,y
        clc 
        adc $00
        tay 
        lda $9600,y
        rts 


        ldx #$90
        jsr $b996
    L_25b4:
        jsr $b9b1
        lda $07
        cmp #$0b
        beq L_261a
        cmp #$0a
        bne L_25cb
        lda #$0b
    L_25c3:
        sta $07
        jsr L_208d
        jmp L_2617
    L_25cb:
        lda $0a
        beq L_25fb
        lda $00
    L_25d1:
        pha 
        clc 
        lda $01
        pha 
        adc #$07
        sta $01
        lda $02
        pha 
        lda $03
        pha 
        lda #$02
        sta $03
    L_25e4:
        lda #$bb
        sta $b2
        lda #$30
        sta $b3
        jsr L_203e
        pla 
        sta $03
        pla 
        sta $02
        pla 
        sta $01
        pla 
        sta $00
    L_25fb:
        jsr L_2627
        jsr L_2095
        jmp L_2617
        pla 
        sta $0e
        pla 
        sta $0d
        pla 
        sta $0f
        sta $02
        pla 
        sta $0c
        pla 
        sta $0b
        sta $00
    L_2617:
        jsr $b9cb
    L_261a:
        lda $18
        cmp #$da
        beq L_2626
        jsr $b9a5
        jmp L_25b4
    L_2626:
        rts 


    L_2627:
        lda $06
        asl 
        tay 
        lda L_2637,y
        sta $b2
        iny 
        lda L_2637,y
        sta $b3
        rts 



    L_2637:
         .byte $73
        .byte $30,$97,$30,$a9,$30,$85,$30,$a9,$30,$a2,$10,$20,$96,$b9,$a9,$08
        .byte $8d,$80,$01

    L_264b:
        jsr $b9b1
        lda $07
        cmp #$0b
        beq L_2665
        cmp #$09
        beq L_2665
        cmp #$01
        bne L_2671
        jsr L_26a8
    L_265f:
        jsr L_2721
    L_2662:
        jsr L_2095
    L_2665:
        jsr $b9cb
        jsr $b9a5
        dec $0180
        bne L_264b
        rts 


    L_2671:
        cmp #$03
    L_2673:
        bcc L_267f
        cmp #$07
        bcs L_267f
        jsr $26cd
        jmp L_265f
    L_267f:
        cmp #$0a
        bne L_2690
        jsr L_208d
        jsr L_27eb
        lda #$0b
        sta $07
        jmp L_2665
    L_2690:
        cmp #$00
        bne L_269d
        jsr L_27e7
        jsr L_26f5
        jmp L_2662
    L_269d:
        jmp L_269d

    L_26a0:
         .byte $00,$00,$0c,$00
        .byte $18

    L_26a5:
        .byte $00
        .byte $08,$08

    L_26a8:
        clc 
        lda $06
        asl 
        ldy $08
        adc L_26a0,y
        ldy $04
        adc L_26a0 + $3,y
        ldy $05
        adc L_26a5,y
        tay 
        lda L_2884,y
        sta $b2
        iny 
        lda L_2884,y
        sta $b3
        rts 



    L_26c8:
         .byte $00,$00
        .byte $08

    L_26cb:
        .byte $00
        .byte $10,$a5,$07,$38,$e9,$03,$0a,$18,$a4,$08,$79,$c8,$26,$a4,$04,$79
        .byte $cb,$26,$a8,$b9,$cc,$28,$85,$b2,$c8,$b9,$cc,$28,$85,$b3,$60

    L_26eb:
        .byte $00
        .byte $06,$04

    L_26ee:
        .byte $02,$00,$00,$0c,$00
        .byte $08,$08

    L_26f5:
        lda $05
        bne L_2706
        lda $04
        bne L_2706
        ldy $06
        lda L_26eb,y
        clc 
        jmp L_270a
    L_2706:
        clc 
        lda $06
        asl 
    L_270a:
        ldy $08
        adc L_26ee + $1,y
        ldy $05
        adc L_26ee + $4,y
        tay 
        lda L_28b3 + $1,y
        sta $b2
        iny 
        lda L_28b3 + $1,y
        sta $b3
        rts 


    L_2721:
        lda $05
        cmp #$00
        bne L_2782
        lda $00
        sta $0182
        jsr $2842
        ldx #$02
        jsr L_2857
        lda $04
        cmp #$01
        beq L_2763
        lda $06
        cmp #$02
        beq L_275d
        cmp #$03
        beq L_2745
        rts 


    L_2745:
        jsr L_2821
    L_2748:
        lda $00
        clc 
        adc #$02
        sta $0182
    L_2750:
        jsr L_28f2
        cpy $0a
        bne L_275c
        ldx #$01
        jsr L_2857
    L_275c:
        rts 


    L_275d:
        jsr $2842
        jmp L_2750
    L_2763:
        lda $06
        cmp #$02
        beq L_276e
        cmp #$03
        beq L_2774
        rts 


    L_276e:
        jsr $2842
        jmp L_2748
    L_2774:
        jsr L_2821
        lda $00
        sta $0182
        dec $0182
        jmp L_2750
    L_2782:
        lda $00
        sta $0182
        jsr $2842
        ldx #$02
        jsr L_2857
        jsr $2842
        clc 
        lda #$0d
        ldx $08
        cpx #$01
        beq L_279d
        lda #$0a
    L_279d:
        adc $01
        ldx #$02
        jsr L_2859
        lda $05
        cmp #$01
        bne L_27cf
        lda $01
        clc 
        adc $03
        and #$0f
        bne L_27e3
        lda $01
        clc 
        adc #$10
    L_27b8:
        pha 
        jsr L_2823
        lda $00
        sta $0182
        jsr L_28f2
        pla 
        cpy $0a
        bne L_27e3
        ldx #$02
        jsr L_2859
        rts 


    L_27cf:
        sec 
        ldy $08
        lda $01
        sbc L_27e4,y
        and #$0f
        bne L_27e3
        lda $01
        sec 
        sbc #$10
        jmp L_27b8
    L_27e3:
        rts 



    L_27e4:
         .byte $00
        .byte $01,$00

    L_27e7:
        lda $09
        bpl L_27e3
    L_27eb:
        lda #$00
        sta $09
        lda $0c
        jsr L_2823
        lda $0b
        sta $0182
        ldx #$03
        lda $0c
        jsr L_2859
        lda $05
        beq L_2813
        lda $0c
        clc 
        adc $03
        pha 
        jsr L_2823
        pla 
        ldx #$03
        jsr L_2859
    L_2813:
        rts 



    L_2814:
         .byte $00,$03,$03,$03
        .byte $06,$06,$06,$09,$09,$09,$0c,$0c,$0f

    L_2821:
        lda $01
    L_2823:
        lsr 
        lsr 
        lsr 
        lsr 
        tax 
        ldy $1b
        lda L_3d6c + $2,y
        sta $16
        lda L_3d73,y
        sta $17
        ldy L_2814,x
        lda ($16),y
        ora #$08
        sta $0181
        rts 



    L_283f:
         .byte $00
        .byte $0d,$0a,$a4,$08,$b9,$3f,$28,$8d,$81,$01,$60

    L_284b:
        .byte $00,$14
        .byte $28,$3c,$50,$64,$78,$8c,$a0,$b4,$c8,$dc

    L_2857:
        lda $01
    L_2859:
        cmp #$b0
        bcc L_285f
        lda #$b0
    L_285f:
        lsr 
        lsr 
        lsr 
        lsr 
        tay 
        lda L_284b,y
        clc 
        adc $0182
        tay 
    L_286c:
        txa 
        bmi L_2876
        lda $9600,y
        and #$08
        beq L_2883
    L_2876:
        lda $0181
        sta $9600,y
        txa 
        bmi L_2883
        iny 
        dex 
        bne L_286c
    L_2883:
        rts 



    L_2884:
         .byte $21,$33,$3f,$33
        .byte $5d,$33,$8a,$33,$21,$33,$a8,$33,$19,$32,$31,$32,$49,$32,$6d,$32
        .byte $19,$32,$85,$32,$c6,$33,$e4,$33,$02,$34,$2f,$34,$c6,$33,$4d,$34
        .byte $9d,$32,$b5,$32,$cd,$32,$f1,$32,$9d,$32,$09

    L_28b3:
        .byte $33,$6b,$34,$89,$34,$a7,$34,$d4,$34,$6b,$34,$f2,$34,$10,$35
        .byte $28,$35,$40,$35,$64,$35,$10,$35,$7c,$35,$38,$3b,$56,$3b,$74,$3b
        .byte $92,$3b,$10,$3c,$28,$3c,$40,$3c,$58,$3c,$c0,$3a,$de,$3a,$fc,$3a
        .byte $1a,$3b,$b0,$3b,$c8,$3b,$e0,$3b,$f8

    L_28eb:
        .byte $3b,$00
        .byte $01,$02,$02,$03,$03

    L_28f2:
        lda $05
        asl 
        clc 
        adc $04
        tay 
        lda L_28eb + $1,y
        tay 
        rts 



    L_28fe:
         .byte $c0,$03,$0f,$3f,$03
        .byte $c0,$f0

    L_2905:
        .byte $fc,$00,$03,$02
        .byte $01,$03,$00,$01,$02

    L_290e:
        .byte $ff,$00,$00,$00

    L_2912:
        ora ($00,x)

        .byte $00,$00,$a5,$00,$85,$85,$a5,$01,$85,$86,$a9,$0c,$85,$87,$a9,$00
        .byte $8d,$85,$01,$8d,$86,$01,$a5,$79,$c9,$00,$f0,$0b,$e6,$85,$a9,$04
        .byte $18,$6d,$86,$01,$8d,$86,$01

    L_293b:
        lda $08
        cmp #$01
        bne L_2943
        inc $86
    L_2943:
        ldy $0186
        lda L_28fe,y
        sta $88
        jsr L_2a48
        lda $84
        beq L_2981
        lda $85
        asl 
        asl 
        ldy $0186
        clc 
        adc L_2905 + $1,y
        sta $82
        sta $80
        lda $86
        sta $81
        adc #$0c
        sta $83
        jsr $abc0
        lda $7a
        bne L_2999
        jsr $ab6b
        lda $7a
        bne L_2999
        jsr $bacf
        lda $7a
        beq L_299d
        jmp L_2999
    L_2981:
        ldy $0186
        lda $85
        clc 
        adc L_290e,y
        sta $85
        inc $0186
        inc $0185
        lda $0185
        cmp #$04
        bne L_2943
    L_2999:
        lda #$00
        sta $84
    L_299d:
        rts 



    L_299e:
         .byte $00,$ff
        .byte $01,$a5,$0c,$a4,$08,$a6,$05,$e0,$01,$f0,$06,$18,$65,$03,$4c,$b4
        .byte $29

    L_29b1:
        sec 
        sbc #$01
    L_29b4:
        sta $86
        lda #$01
        sta $87
        lda #$3c
        sta $88
        lda $08
        cmp #$01
        bne L_29c9
        lda #$0e
        jmp L_29d4
    L_29c9:
        cmp #$02
        bne L_29d2
        lda #$10
        jmp L_29d4
    L_29d2:
        lda #$02
    L_29d4:
        sta $0180
    L_29d7:
        lda #$02
        sta $0182
        lda $00
        sta $85
    L_29e0:
        jsr L_2a48
        lda $84
        bne L_2a00
    L_29e7:
        inc $85
        dec $0182
        bne L_29e0
        ldy $05
        clc 
        lda $86
        adc L_299e,y
        sta $86
        dec $0180
        bne L_29d7
        jmp L_2a32
    L_2a00:
        lda $ad
        bne L_2a32
        jsr L_2a33
        jsr $ab6b
        lda $7a
        beq L_2a20
        lda $0180
        cmp #$0f
        bcc L_2a2e
        ldy #$08
        lda ($16),y
        cmp #$01
        bne L_2a2e
        jmp L_29e7
    L_2a20:
        jsr $abc0
        lda $7a
        bne L_2a2e
        jsr $bacf
    L_2a2a:
        lda $7a
        beq L_2a32
    L_2a2e:
        lda #$00
        sta $84
    L_2a32:
        rts 


    L_2a33:
        lda $85
        asl 
        asl 
        sta $82
        clc 
        adc #$04
        sta $80
        lda $86
        sta $81
        clc 
        adc $87
        sta $83
        rts 


    L_2a48:
        lda #$00
        sta $84
        ldy $85
        lda L_3d16,y
        sta $b3
        lda $3d01,y
        clc 
        adc $86
        bcc L_2a5d
        inc $b3
    L_2a5d:
        sta $b2
        ldx $87
        ldy #$00
    L_2a63:
        lda ($b2),y
        and $88
        beq L_2a6b
        inc $84
    L_2a6b:
        iny 
        dex 
        bne L_2a63
        rts 


        ldy $08
        lda $0c
        sec 
        sbc $b6b5,y
        and #$0f
        beq L_2a7f
        jmp L_2af6
    L_2a7f:
        lda $0d
        sta $b2
        lda $0e
        sta $b3
        lda $0f
        sta $0182
        lda $0b
        sta $0180
        lda $0c
        sta $0184
        lda $08
        cmp #$01
        bne L_2a9f
        inc $0184
    L_2a9f:
        lda #$3f
        sta $88
    L_2aa3:
        ldy $0180
        lda L_3d16,y
        sta $50
        lda $3d01,y
        clc 
        adc $0184
        bcc L_2ab6
        inc $50
    L_2ab6:
        sta $4f
        ldy #$00
        ldx #$00
        lda #$0c
        sta $0185
        lda $08
        cmp #$01
        bne L_2aca
        jsr L_2afe
    L_2aca:
        lda ($4f),y
        eor ($b2,x)
        and $88
        bne L_2af6
        jsr L_2afe
        iny 
        dec $0185
        bne L_2aca
        dec $0182
        beq L_2afb
        lda #$fc
        sta $88
        inc $0180
        lda $08
        cmp #$01
        bne L_2af3
        jsr L_2afe
        jsr L_2afe
    L_2af3:
        jmp L_2aa3
    L_2af6:
        lda #$01
        jmp L_2afd
    L_2afb:
        lda #$00
    L_2afd:
        rts 


    L_2afe:
        lda $b2
        clc 
        adc #$01
        bcc L_2b07
        inc $b3
    L_2b07:
        sta $b2
        rts 


        lda $bd
        beq L_2b3f
        lda $a6
        sta $7d
        clc 
        adc #$08
        sta $7f
        lda $a5
        asl 
        asl 
        sta $7e
        lda $a3
        asl 
        asl 
        ldy $a4
        bne L_2b2d
        clc 
        adc $7e
        sta $7c
        jmp L_2b3c
    L_2b2d:
        sta $7c
        lda $7e
        clc 
        adc #$04
        tax 
        sec 
        sbc $7c
        sta $7e
        stx $7c
    L_2b3c:
        jsr $abd6
    L_2b3f:
        rts 


        lda $df
        bne L_2b47
        jmp L_2bc8
    L_2b47:
        pha 
        jsr $a2eb
        pla 
        cmp #$08
        bcc L_2b6f
        lda #$00
        sta $6f
        sta $73
        lda #$2c
        sta $6e
        lda #$f4
        sta $6d
        lda #$2c
        sta $72
        lda #$b4
        sta $71
        lda #$01
        sta $6c
        sta $70
        jmp L_2ca9
    L_2b6f:
        cmp #$04
        bcc L_2b92
        lda #$00
        sta $6f
        sta $73
        lda #$2f
        sta $6e
        lda #$24
        sta $6d
        lda #$2e
        sta $72
        lda #$fe
        sta $71
        lda #$01
        sta $6c
        sta $70
        jmp L_2ca9
    L_2b92:
        cmp #$02
        bcc L_2ba9
        lda #$00
        sta $73
        lda #$2e
        sta $72
        lda #$ca
        sta $71
        lda #$01
        sta $70
        jmp L_2ca9
    L_2ba9:
        lda #$00
        sta $6f
        sta $73
        lda #$ba
        sta $6e
        lda #$b5
        sta $6d
        lda #$ba
        sta $72
        lda #$99
        sta $71
        lda #$01
        sta $6c
        sta $70
        jmp L_2ca9
    L_2bc8:
        lda $e0
        beq L_2c39
        cmp #$08
        bcc L_2be6
        jsr $a2eb
        lda #$00
        sta $73
        lda #$ba
        sta $72
        lda #$5f
        sta $71
        lda #$01
        sta $70
        jmp L_2ca9
    L_2be6:
        cmp #$04
        bcc L_2c0a
        and #$03
        pha 
        lda #$00
        sta $6f
        sta $73
        lda #$2d
        sta $6e
        lda #$fa
        sta $6d
        lda #$2d
        sta $72
        lda #$4a
        sta $71
        lda #$01
        sta $6c
        sta $70
        pla 
    L_2c0a:
        cmp #$02
        bcc L_2c22
        and #$01
        pha 
        lda #$00
        sta $77
        lda #$2e
        sta $76
        lda #$98
        sta $75
        lda #$01
        sta $74
        pla 
    L_2c22:
        cmp #$01
        bne L_2c39
        lda #$00
        sta $73
        lda #$2e
        sta $72
        lda #$a0
        sta $71
        lda #$01
        sta $70
        jmp L_2ca9
    L_2c39:
        lda $e1
        beq L_2c95
        cmp #$04
        bcc L_2c54
        lda #$00
        sta $73
        lda #$2e
        sta $72
        lda #$f0
        sta $71
        lda #$01
        sta $70
        jmp L_2ca9
    L_2c54:
        cmp #$08
        bcc L_2c6b
        lda #$00
        sta $73
        lda #$ba
        sta $72
        lda #$87
        sta $71
        lda #$01
        sta $70
        jmp L_2ca9
    L_2c6b:
        cmp #$02
        bcc L_2c82
        lda #$00
        sta $73
        lda #$2f
        sta $72
        lda #$48
        sta $71
        lda #$01
        sta $70
        jmp L_2ca9
    L_2c82:
        lda #$00
        sta $73
        lda #$2e
        sta $72
        lda #$7e
        sta $71
        lda #$01
        sta $70
        jmp L_2ca9
    L_2c95:
        lda $e2
        beq L_2ca9
        lda #$00
        sta $73
        lda #$2e
        sta $72
        lda #$ac
        sta $71
        lda #$01
        sta $70
    L_2ca9:
        lda #$00
        sta $df
        sta $e0
        sta $e1
        sta $e2
        rts 



        .byte $00,$00,$e9,$08,$eb,$04,$00,$04,$eb,$04,$00,$04,$eb

    L_2cc1:
        php 

        .byte $00,$40,$00,$08,$eb,$20,$e7,$08,$eb,$04,$00,$04,$eb,$08,$e7,$08
        .byte $00,$08,$eb,$08,$ed,$08,$e7,$08,$00,$10,$e4,$08,$e1,$08,$00,$08
        .byte $e3,$08,$00,$08,$d7,$08,$00,$08,$e3,$08,$00,$08,$e3,$20,$e4,$20
        .byte $00,$00,$00,$00,$00,$20,$d4,$08,$d7,$04,$00,$04,$d7,$04,$00,$04
        .byte $d7,$08,$a7,$08,$af,$04,$00,$04,$af,$04,$00,$04,$af,$08,$00,$08
        .byte $e1,$08,$e4,$08,$e7,$08,$e8,$08,$d7,$08,$00,$08,$d7,$08,$00,$08
        .byte $d7,$08,$00,$08,$d7,$08,$00,$08,$d7,$08,$00,$08,$d7,$08,$00,$08
        .byte $d7,$08,$00,$08,$d7,$08,$00,$08,$d7,$08,$00,$08,$d7,$08,$00,$08
        .byte $d7,$04,$00,$04,$d7,$10,$00,$00,$00,$00,$d4,$08,$d7,$04,$00,$04
        .byte $d7,$04,$00,$04,$d7,$04,$00,$04,$00,$08,$d7,$04,$00,$04,$d7,$04
        .byte $00,$04,$d7,$04,$00,$04,$d7,$04,$00,$04,$d7,$04,$00,$04,$d7,$04
        .byte $00,$04,$d7,$04,$00,$04,$00,$08,$d7,$04,$00,$04,$d7,$04,$00,$04
        .byte $d7,$04,$00,$04,$cf,$08,$00,$08,$c9,$08,$cf,$08,$00,$08,$c9,$08
        .byte $cf,$08,$c9,$08,$cf,$08,$00,$08,$00,$10,$c9,$08,$00,$08,$00,$10
        .byte $cb,$08,$cf,$04,$00,$04,$cf,$04,$00,$04,$cf,$04,$00,$04,$00,$08
        .byte $cf,$04,$00,$04,$cf,$04,$00,$04,$cf,$04,$00,$04,$cf,$04,$00,$04
        .byte $cf,$04,$00,$04,$cf,$04,$00,$04,$cf,$04,$00,$04,$00,$08,$cf,$04
        .byte $00,$04,$cf,$04,$00,$04,$cf,$04,$00,$04,$cf,$08,$00,$08,$c9,$08
        .byte $cf,$08,$00,$08,$c9,$08,$cf,$08,$c9,$08,$cf,$08,$00,$08,$00,$10
        .byte $c9,$08,$00,$08,$00,$10,$00,$00,$00,$00,$e1,$08,$eb,$08

    L_2e00:
        sbc ($08,x)

        .byte $eb,$08,$df,$08,$eb,$08,$df,$08,$eb,$08,$dd,$08,$eb,$08,$dd,$08
        .byte $eb,$08,$db,$08,$eb,$08,$db,$08,$eb,$08,$d9,$08,$eb,$08,$d9,$08
        .byte $eb,$08,$d9,$08,$eb,$08,$d9,$08,$eb,$08,$d7,$08,$eb,$08,$d7,$08
        .byte $eb,$08,$db,$08,$eb,$08,$df,$08,$eb,$08,$e1,$08,$eb,$08,$e1,$08
        .byte $eb,$08,$df,$08,$eb,$08,$df,$08,$eb,$08,$dd,$08,$eb,$08,$dd,$08
        .byte $eb,$08,$db,$08,$eb,$08,$db,$08,$eb,$08,$d9,$08,$eb,$08,$d9,$08
        .byte $eb,$08

    L_2e64:
        cmp $eb08,y
        php 
        cmp $eb08,y
        php 

        .byte $d7,$08,$eb,$08,$d7,$08,$eb,$08,$db,$08,$eb,$08,$df,$08,$eb,$08
        .byte $00,$00,$00,$00,$eb,$04,$e9,$04,$eb,$04,$e9,$04,$eb,$04,$00,$10
        .byte $d7,$04,$d4,$04,$d7,$04,$d4,$04,$d7,$04,$00,$00,$00,$00,$af,$20
        .byte $af,$20,$00,$00,$00,$00,$d7,$04,$d4,$04,$d1,$04,$cf,$04,$00,$00
        .byte $00,$00,$e7,$04,$e8,$04,$e9,$04,$eb,$04,$00,$10,$d7,$04,$db,$04
        .byte $df,$04,$e1,$04,$e4,$04,$e7,$04,$e8,$04,$eb,$04,$00,$00,$00,$00
        .byte $e4,$04,$e7,$04,$00,$08,$e8,$04,$eb,$04,$00,$08,$e7,$04,$e8,$04
        .byte $00,$08,$e4,$04,$e7,$04,$00,$08,$e1,$04,$e4,$04,$00,$08,$df,$04
        .byte $e1,$04,$00,$00,$00,$00,$dd,$04,$e7,$04,$eb,$04,$df,$04,$d4,$04
        .byte $00,$00,$00,$00,$ec,$08,$eb,$08,$ec,$08,$eb,$08,$ec,$08,$eb,$08
        .byte $ec,$08,$eb,$08,$e1,$08,$e4,$08,$e7,$08,$e1,$08,$d7,$08,$00,$08
        .byte $ed,$08,$00,$08,$eb,$40,$00,$00,$00,$00,$e3,$08,$e1,$08,$e3,$08
        .byte $e1,$08,$e3,$08,$e1,$08,$e3,$08,$e1,$08,$c3,$08,$c9,$08,$cf,$08
        .byte $c3,$08,$af,$08,$00,$08,$db,$08,$00,$08,$d7,$40,$00,$00,$e1,$04
        .byte $00,$04,$e1,$04,$00,$04,$e1,$08,$d7,$08,$db,$08,$df,$08,$e1,$08
        .byte $e4,$08,$e7,$04,$00,$04,$e7,$04,$00,$04,$e7,$08,$00,$08,$af,$04
        .byte $00,$04,$af,$04,$00,$04,$af,$04,$00,$04,$00,$00,$08,$60,$02,$10
        .byte $00,$00,$00,$00,$05,$08,$60,$04,$81,$02,$0f,$01,$00,$01,$07,$00
        .byte $04,$81,$10,$91,$02,$0f,$00,$00,$01,$15,$00,$10,$91,$10,$61,$02
        .byte $0f,$01,$01,$01,$0a,$00,$10,$61,$02,$12,$02,$0c,$01,$00,$02,$05
        .byte $00,$02,$1c,$04,$30,$02,$0c,$00,$02,$02,$10,$00,$04,$30,$0e,$40
        .byte $02,$0c,$01,$02,$02,$13,$00,$0e,$40,$ff,$02,$55,$02

    L_2fc9:
        ora #$00

        .byte $00,$03,$00,$00,$02,$55,$08,$95,$02,$09,$00,$00,$03,$00,$00,$08
        .byte $95,$0c,$25,$02,$09,$00,$00,$03,$00,$00,$0c,$25,$12,$35,$02,$09
        .byte $00,$00,$03,$00,$00,$12,$35,$0e,$a5,$02,$09,$00,$00,$03,$00,$00
        .byte $0e,$a5,$ff,$89,$00,$a5,$25,$4a,$0a,$0a

    L_3005:
        asl 
        tax 
        ldy #$00
    L_3009:
        lda $8150,y
        sta $0180,x
        iny 
        inx 
        cpy #$08
        bne L_3009
        ldx #$00
        lda L_3d94 + $4,x
        sta $20
        inx 
    L_301d:
        lda #$14
        sta $00
        lda L_3d94 + $4,x
        sta $01
        inx 
        lda L_3d94 + $4,x
        sta $b2
        inx 
        lda L_3d94 + $4,x
        sta $b3
        lda #$01
        sta $02
        lda #$10
        sta $03
        jsr L_201c
        inx 
        dec $20
        bne L_301d
        rts 



        .fill $31, $0
        .byte $07

    L_3075:
        asl $1f0d

        .byte $17,$1d,$0f,$07,$f0,$f0,$b8,$d8,$fc,$7c,$b8,$f0,$f0,$03,$03,$0f
        .byte $0f,$0c,$33,$3f,$3f,$0f,$c0,$f0,$3c,$fc,$f0,$f0,$30,$c0,$00,$03
        .byte $0f,$3c,$3f,$0f,$0f,$0c,$03,$00,$c0,$c0,$f0,$f0,$30,$cc,$fc,$fc
        .byte $f0,$00,$03,$0f,$3f,$3e,$3f,$3f,$3f,$0f,$00,$c0,$f0,$fc,$fc,$fc
        .byte $fc,$b0,$f0,$c0,$c0,$03,$03

    L_30bf:
        .fill $17, $ff
        .byte $aa,$ff,$aa,$ff,$aa,$ff,$aa,$ff,$aa,$ff,$aa,$ff,$aa,$ff,$aa,$33
        .byte $cc,$33,$cc,$33,$cc,$33,$cc,$33,$cc,$33,$cc,$33,$cc,$33,$cc,$aa
        .byte $88,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$22,$aa,$aa
        .byte $88,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$22,$aa,$ff
        .byte $fe,$fc,$fc

    L_3119:
        sed 
        sed 

        .byte $f0,$f0,$f0,$f0,$f8,$f8,$fc,$fc,$fe,$ff,$ff

    L_3126:
        .byte $ff,$3f,$3f,$1f,$1f,$0f,$0f,$0f,$0f,$1f,$1f,$3f,$3f,$7f,$ff,$fc
        .byte $f8,$f0,$e0,$c0,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3f
        .byte $1f,$0f,$07,$03,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80
        .byte $80,$00,$00,$80,$80,$00,$00,$80,$80,$80,$c0,$e0,$f0,$f8,$fc,$00
        .byte $00,$03,$03,$00,$00,$03,$03,$00,$00,$01,$03,$07,$0f,$1f,$3f,$00
        .byte $00,$80,$80,$00,$00,$80,$80,$00,$00,$80,$80,$00,$00,$80,$80,$02
        .byte $02,$00,$00,$02,$02,$00,$00,$02,$02,$00,$00,$02,$02,$00,$00,$00
        .byte $00,$0f,$3f,$3d,$3d,$3d,$0f,$07,$35,$35,$3f,$3f,$0f,$0f,$0f,$00
        .byte $00,$c0,$f0,$50,$40,$40,$50,$f2,$5e,$52,$f0,$f0,$c0,$c0,$f0,$04
        .byte $01,$09,$0a,$0a,$0a,$2a,$28,$a0,$80,$20,$22,$08,$3c,$ff,$ff,$ff
        .byte $ff,$3f,$fc,$28,$a8,$aa,$aa,$02,$20,$20,$20,$20,$28,$00,$02,$02
        .byte $0a,$0a,$2a,$28,$a8,$a8,$a0,$04,$01,$09,$2a,$aa,$ba,$ea,$a8,$a8
        .byte $20,$08,$20

    L_31e9:
        .byte $a2,$8a,$a2,$8a,$a2,$8a,$aa,$28,$24,$96,$a6,$aa,$aa,$aa,$aa,$aa
        .byte $2a,$28,$08,$28,$2a,$aa,$aa,$aa,$aa,$28,$14,$41,$00,$00,$00,$00
        .byte $ab,$ea,$ae,$79,$69,$14,$51,$14,$20,$88,$a2,$88,$a2,$88,$a2,$28
        .byte $00

    L_321a:
        rol 

        .byte $3f,$0c,$0c,$3f,$2a,$2a,$2a,$0c,$0c,$3f,$00,$a0,$e0,$f0,$f0,$ec
        .byte $ac,$bc,$a0,$c0,$c0,$c0,$aa,$ff,$33,$33,$ff,$aa,$aa,$aa,$33,$ff
        .byte $33,$00,$80,$80,$c0,$c0,$80,$80,$f0,$b0,$30,$00,$00,$00,$02,$03
        .byte $00,$00,$03,$02,$02,$02,$00,$03,$00,$00,$aa,$fe,$cf,$cf,$fe,$aa
        .byte $ab,$aa,$cc,$fc,$cc,$00,$00,$00,$00,$00,$00,$00,$c0,$c0,$c0,$00
        .byte $00,$00,$0a,$0f,$03,$03,$0f,$0a,$0a,$0a,$03,$0f,$03,$00,$a8,$f8
        .byte $3c,$3c,$f8,$a8,$af,$ab,$33,$f0,$30,$00

    L_3285:
        rol 

        .byte $3f,$0c,$0c,$3f,$2a,$2a,$2a,$0c,$3f,$0c,$00,$a0,$e0,$f0,$f0,$e0
        .byte $a0,$bc,$ac,$cc,$c0,$c0,$00,$00,$0a,$0b,$0f,$0f,$3b,$3a,$3e,$0a
        .byte $03,$03,$03,$00,$a8,$fc,$30,$30,$fc,$a8,$a8,$a8,$30,$30,$fc,$02
        .byte $02,$03,$03,$02,$02,$0f,$0e,$0c,$00,$00,$00,$aa,$ff,$cc,$cc,$ff
        .byte $aa,$aa,$aa,$cc,$cc,$ff,$00,$00,$00,$00,$00,$00,$00,$03,$03,$03
        .byte $00,$00,$00,$aa,$bf,$f3,$f3,$bf

    L_32de:
        tax 
        nop 
        tax 

        .byte $33,$3f,$33,$00,$80,$c0,$00,$00,$c0,$80,$80,$80,$00,$c0,$00,$00
        .byte $2a,$2f,$3c,$2c,$2b,$3e,$fa,$ea,$cc,$0f,$0c,$00,$a0,$f0,$c0,$c0
        .byte $f0,$a0,$a0,$a0,$c0,$f0,$c0,$00,$0a,$0b,$0f,$0f,$0b,$0a,$3e,$3a
        .byte $33,$03,$03,$00,$a8,$fc,$30,$30,$fc,$a8

    L_331b:
        tay 
        tay 
        bmi L_331b
        bmi L_3321
    L_3321:
        plp 

        .byte $3a,$33,$03,$00,$00,$0c,$2e,$02,$0a,$0a,$0a,$0a,$0a,$11,$b8,$dc
        .byte $9c,$b8,$a8,$a8,$a0,$60,$54,$94,$a4,$a0,$60,$68,$60,$02,$83,$ab
        .byte $aa,$aa,$2a,$2a,$01,$09,$0a

    L_3349:
        rol 
        and #$29
        eor $00
        cpx #$70

        .byte $70,$e0,$a0,$90,$50,$50,$80,$80,$80,$80,$80,$80,$a0,$02,$03,$03
        .byte $00,$00,$00,$00,$02,$02,$00,$00,$00,$00,$00,$01,$8b,$ad,$39,$3b
        .byte $0a,$0a,$ca,$d7,$a5,$29,$aa,$aa

    L_3378:
        ldx $a6
        asl $80,x
        cpy #$c0

        .byte $80,$80,$80,$00,$00,$40,$40,$40,$00,$00,$80,$00,$00,$08,$0a,$0a
        .byte $0a,$02,$02,$00,$00,$00,$02,$02,$02,$04,$00,$2e,$37,$b7,$ae,$aa
        .byte $a9,$a5,$15,$98,$a8,$a8,$98,$98

    L_33a6:
        cli 
        asl 

        .byte $00,$20,$2a,$2a,$2a,$0a,$02,$00,$02,$02

    L_33b2:
        asl 
        asl 
        asl 
        ora ($00),y
        sei 

        .byte $dc,$dc,$78,$a8,$a4,$d4,$54,$60,$a0,$a0,$70,$70,$70,$28,$2d,$37
        .byte $37,$2d,$2a,$1a,$17,$15,$09,$0a,$0a,$09,$09,$09,$28,$00,$08,$a8
        .byte $a8,$a8,$a0,$80,$00,$80,$80,$a0,$a0,$a0,$44,$00,$0b,$0d,$0d,$0b
        .byte $0a,$0a,$02,$02,$05,$05,$06,$02,$02,$0a,$02,$8a,$eb,$b3,$b0,$80
        .byte $80,$8c,$6e,$6a,$a0,$a8,$a8,$68,$68,$51,$02,$03,$03,$02,$02,$01
        .byte $01,$01,$00,$00,$00,$00,$00,$00,$02,$e0,$70,$7a,$ea,$aa,$aa,$68
        .byte $50,$98,$a8,$aa,$9a,$9a,$94,$80,$00,$80,$80,$80,$80,$00,$00,$00
        .byte $00,$00,$00,$00,$00,$40,$00,$b8,$de,$db,$bb,$a8,$a8,$28,$26,$56
        .byte $5a,$6a,$2a,$26,$a6,$25,$a0,$b0,$30,$00,$00,$00,$c0,$e0,$a0,$00
        .byte $80,$80,$80,$80,$10,$22,$37,$36,$22,$2a,$2a,$0a,$09,$15,$16,$1a
        .byte $0a,$09,$29,$09,$28,$ac,$cc,$c0,$c0,$30,$b8,$a8,$80,$80,$a0,$a0
        .byte $a0,$a0,$44,$00,$00,$30,$3c,$3c,$33,$33,$0f,$03,$30,$3c,$0f,$0f
        .byte $03,$00,$00,$00,$0c,$3c,$3c,$cc,$cc,$f0,$c0,$0c,$3c,$f0,$f0,$c0
        .byte $00,$00,$00,$00,$03,$0f,$0c,$0c,$03,$00,$00,$03,$0c,$0c,$03,$00
        .byte $00,$00,$f0,$fc,$ff,$f3,$f3,$0c,$00,$f0,$0c,$03,$f3,$0c,$00,$00
        .byte $00,$03,$03,$03,$03,$03,$00,$00,$03,$03,$00,$00,$00,$00,$00,$00
        .byte $00,$c3,$c3,$3c,$3c,$ff,$3c,$00,$c3,$ff,$ff,$3c,$00,$00,$00,$c0
        .byte $c0,$c0,$c0,$c0,$00,$00,$c0,$c0,$00,$00,$00,$00,$00,$00,$0f,$3f
        .byte $ff,$cf,$cf,$30,$00,$0f,$30,$c0,$cf,$30,$00,$00,$00,$00,$c0,$f0
        .byte $30,$30,$c0,$00,$00,$c0,$30,$30,$c0,$00,$00,$00,$03,$0f,$3f,$33
        .byte $33,$0c,$00,$03,$0c,$30,$33,$0c,$00,$00,$00,$c0,$f0,$fc,$cc,$cc
        .byte $30,$00,$c0,$30,$0c,$cc,$30,$00,$00,$00,$00,$03,$0f,$33,$33,$0f
        .byte $0f,$3c,$00,$00,$00,$00,$00,$c0,$f0,$cc,$cc,$f0,$f0,$3c,$00,$00
        .byte $00,$00,$00,$03,$0c,$0c,$0c,$0f,$0f,$00,$00,$00,$00,$00,$00,$fc
        .byte $f3,$f3,$f3,$ff,$0f,$00,$00,$00,$00,$00,$00,$00,$00,$03,$03,$00
        .byte $00,$03,$00,$00,$00,$00,$00,$3c,$ff,$3c,$3c,$ff,$ff,$c3,$00,$00
        .byte $00,$00,$00,$00,$00,$c0,$c0,$00,$00,$c0,$00,$00,$00,$00,$00,$3f
        .byte $cf,$cf,$cf,$ff,$f0,$00,$00,$00,$00,$00,$00,$c0,$30,$30,$30,$f0
        .byte $f0,$00,$00,$00,$00,$00,$00,$0f,$33,$33,$33,$3f,$3c,$00,$00,$00
        .byte $00,$00,$00,$f0,$cc,$cc,$cc,$fc,$3c,$00,$00,$00,$00,$00,$00,$03
        .byte $01,$00,$00,$01,$03,$03,$03,$03,$03,$00,$00,$03,$00,$00,$fc,$ff
        .byte $5f,$5f,$5f,$7c,$f4,$57,$57,$ff,$ff,$cc,$cc,$fc,$00,$00,$0f,$3f
        .byte $3d,$3d,$3d,$0f,$1f,$17,$15,$35,$3f,$0f,$0f,$0f,$00,$00,$c0,$f0
        .byte $50,$40,$40,$50,$f0,$f0,$f0,$f0,$f0,$c0,$c0,$f0,$00,$00,$0f,$3f
        .byte $15,$05

    L_35da:
        ora $17

        .byte $3f,$35,$35,$3f,$3f,$0c,$0c,$3f,$00,$00,$c0,$f0,$f0,$f0,$f0,$c0
        .byte $40,$70,$70,$f0,$f0,$c0,$c0,$c0,$00,$00,$3f,$ff,$57,$17,$17,$5f
        .byte $ff,$fd,$f5,$f5,$ff,$3f,$3f,$ff,$00,$00,$00,$c0,$c0,$c0,$c0,$00
        .byte $40,$40,$40,$c0,$c0,$00,$00,$00,$00,$00,$3f,$ff,$f5,$f5,$f5,$3d
        .byte $1f,$d5,$d5,$ff,$ff,$33,$33,$3f,$00,$00,$00,$c0,$40,$00,$00,$40
        .byte $c0,$c0,$c0,$c0,$c0,$00,$00,$c0,$00,$00,$03,$0f,$05,$01,$01,$05
        .byte $0f,$0f,$0f,$0f,$0f,$03,$03,$0f,$00,$00,$f0,$fc,$7c,$7c,$7c,$f0
        .byte $f4,$d4,$54,$5c,$fc,$f0,$f0,$f0,$00,$00,$03,$0f,$0f,$0f,$0f,$03
        .byte $01,$0d,$0d,$0f,$0f,$03,$03,$03,$00,$00,$f0,$fc,$54,$50,$50,$d4
        .byte $fc,$5c,$5c,$fc,$fc,$30,$30,$fc,$00,$00,$00,$03,$03,$03,$03,$00
        .byte $01,$01,$01,$03,$03,$00,$00,$00,$00,$00,$fc,$ff,$d5,$d4,$d4,$f5
        .byte $ff,$7f,$5f,$5f,$ff,$fc,$fc,$ff,$00,$00,$3f,$ff,$f5,$f5,$f5,$3d
        .byte $1f,$d5,$d5,$ff,$ff,$33,$33,$3f,$00,$00,$00,$c0,$40,$00,$00,$40
        .byte $c8,$78,$48,$c0,$c0,$00,$00,$c0,$00,$00,$0f,$3f,$3d,$3d,$3d,$0f
        .byte $07,$35,$35,$3f,$3f,$0f,$0f,$0f,$00,$00,$c0,$f0,$50,$40,$40,$50
        .byte $f8,$58,$58,$f0,$f0,$c0,$c0,$f0,$00,$00,$03,$0f,$0f,$0f,$03,$03
        .byte $0d,$0d,$0d,$0f,$0f,$03,$03,$03,$00,$00,$f0,$fc,$54,$50,$50,$d4
        .byte $fc,$54,$54,$fc,$fc,$30,$30,$fc,$00,$00,$00,$03,$03,$03,$03,$00
        .byte $00,$03,$03,$03,$03,$00,$00,$00,$00,$00,$fc,$ff,$d5,$d4,$d4,$f5
        .byte $7f,$55,$55,$ff,$ff,$fc,$fc,$ff,$00,$00,$00,$00,$00,$00,$00,$00
        .byte $30,$f0,$30,$00,$00,$00,$00,$00,$00,$00,$00,$03,$01,$00,$00,$01
        .byte $23

    L_372d:
        and $0321

    L_3730:
         .byte $03,$00,$00,$03,$00,$00,$fc,$ff,$5f,$5f,$5f,$7c,$f4,$57,$57,$ff
        .byte $ff,$cc,$cc,$fc,$00,$00,$03,$0f,$05,$01,$01,$05,$2f,$25,$25,$0f
        .byte $0f,$03,$03,$0f,$00,$00,$f0,$fc,$7c,$7c,$7c,$f0,$d0,$5c,$5c,$fc
        .byte $fc,$f0,$f0,$f0,$00,$00,$0f,$3f,$15,$05

    L_376a:
        ora $17

        .byte $3f,$15,$15,$3f,$3f,$0c,$0c,$3f,$00,$00,$c0,$f0,$f0,$f0,$c0,$c0
        .byte $70,$70,$70,$f0,$f0,$c0,$c0,$c0,$00,$00,$00,$00,$00,$00,$00,$00
        .byte $0c,$0f,$0c,$00,$00,$00,$00,$00,$00,$00,$3f,$ff,$57,$17,$17,$5f
        .byte $fd,$55,$55,$ff,$ff,$3f,$3f,$ff,$00,$00,$00,$c0,$c0,$c0,$c0,$00
        .byte $00,$c0,$c0,$c0,$c0,$00,$00,$00,$00,$00,$00,$33,$37,$37,$37,$37
        .byte $37,$3d,$3d,$3f,$0f,$0c,$00,$00,$00,$00,$f0,$5c,$5c,$7c,$7c,$70
        .byte $7c,$7c,$7c,$fc,$f0,$f0,$00,$00,$00,$00,$00,$33,$37,$37,$37,$37
        .byte $37,$3f,$3d,$3d,$0f,$0c,$00,$00,$00,$00,$f0,$7c,$7c,$7c,$7c,$70
        .byte $70,$7c,$7c,$7c,$fc,$f0,$00,$00,$02,$00,$00,$33,$37,$37,$37,$37
        .byte $37,$3d,$3d,$3f,$0f,$0c,$00,$00,$a0,$c0,$70,$7c,$7c,$7c,$7c,$70
        .byte $7c,$7c,$7c,$fc,$f0,$f0,$00,$00,$02,$00,$00,$33,$37,$37,$37,$37
        .byte $37,$3f,$3d,$3d,$0f,$0c,$00,$00

    L_3824:
        ldy #$c0

        .byte $70,$7c,$7c,$7c,$7c,$70,$70,$7c,$7c,$7c,$fc,$f0,$00,$00,$00,$00
        .byte $0c,$0f,$3f,$3d,$3d,$37,$37,$37,$37,$37,$33,$00,$00,$00,$00,$00
        .byte $f0,$f0,$fc,$7c,$7c,$7c,$70,$7c,$7c,$5c,$5c,$f0,$00,$00,$00,$00
        .byte $0c,$0f,$3d,$3d,$3f,$37,$37,$37,$37,$37,$33,$00,$00,$00,$00,$00
        .byte $f0,$fc,$7c,$7c,$7c,$70,$70,$7c,$7c,$7c,$7c,$f0,$00,$00,$00,$00
        .byte $0c,$0f,$3f,$3d,$3d,$37,$37,$37,$37,$37,$33,$00,$00,$02,$00,$00
        .byte $f0,$f0,$fc,$7c,$7c,$7c,$70,$7c,$7c,$7c,$7c,$70,$c0,$a0,$00,$00
        .byte $0c,$0f,$3d,$3d,$3f,$37,$37,$37,$37,$37,$33,$00,$00,$02,$00,$00
        .byte $f0,$fc,$7c,$7c,$7c,$70,$70,$7c,$7c,$7c,$7c,$70,$c0,$a0,$0f,$0f
        .byte $3f,$3d,$3d,$3d,$3d,$37,$3d,$3d,$3f,$0f,$0f,$03,$03,$00,$c0,$f0
        .byte $f0,$50,$40,$40

    L_38ca:
        .byte $50,$f0,$f0,$f0,$70,$f0,$00
        .byte $c0,$c0,$f0,$00,$00,$00,$00,$00,$00,$d1,$d1,$d5,$d5,$d5,$d5,$f7
        .byte $fd,$0f,$0f,$00,$00,$00,$00,$00,$00,$f0,$f3,$ff,$fc,$f0,$f3,$ff
        .byte $fc,$70,$70,$00,$00,$03,$c3,$33,$0f,$00,$fc,$0f,$33,$c3,$03,$00
        .byte $00,$00,$00,$00,$00,$03,$0c,$30,$c0,$fc,$00,$c0,$30,$0c,$03,$00
        .byte $00,$00,$00,$aa,$8a,$02,$02,$02,$02,$00,$00,$f0,$f0,$f0,$02,$02
        .byte $02

    L_3922:
        rol 
        tax 

        .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
        .byte $aa,$a8,$a0,$80

    L_3938:
        .byte $80,$80,$00,$00,$0f,$0f,$0f,$80,$80
        .byte $a0,$a2,$aa,$ff,$ff,$ff,$ff,$ff,$fe,$fe,$fc,$fc,$fc,$fc,$fe,$fe
        .byte $ff,$ff,$ff,$aa,$88,$01,$03

    L_3958:
        .byte $03,$03,$03,$03,$3f,$3f,$3f,$03,$03,$03,$23,$ab,$ff,$ff
        .byte $fe,$fc,$fc,$f8,$f8,$f0,$f0,$f0,$f0,$f8,$f8,$fc,$ff,$ff,$aa,$88
        .byte $07,$0f,$0f,$0f,$0f,$0f,$3f,$3f,$3f,$0f,$0f,$0f,$2f,$af,$ff,$fc

    L_3986:
        sed 

        .byte $f0,$f0,$e0,$e0,$c0,$c0,$c0,$c0,$e0,$e0,$f0,$f3,$ff,$aa,$88,$1f
        .byte $3f,$3f,$3f,$3f,$3f,$3f,$3f,$3f,$3f,$3f,$3f,$3f,$bf

    L_39a4:
        tax 
        dey 

        .byte $80,$c0,$c0,$c0,$c0,$c0,$fc,$fc,$fc,$c0,$c0,$c0,$f2,$fa,$ff,$ff
        .byte $7f,$7f,$7f,$3f,$3f,$3f,$3f,$3f,$3f,$7f,$7f,$ff,$ff,$ff,$aa

    L_39c5:
        dey 

        .byte $f0,$f0,$f0,$f0,$f0,$f0,$fc,$fc,$fc,$f0,$f0,$f0,$f2,$fa,$ff,$ff
        .byte $7f,$3f,$3f,$1f,$1f,$0f,$0f,$0f,$0f,$1f,$1f,$3f,$ff,$ff,$aa,$88
        .byte $fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fe,$fe,$ff,$ff
        .byte $1f,$0f,$0f,$07,$07,$03,$03,$03,$03,$07,$07,$0f,$3f,$ff,$aa,$88
        .byte $80,$80,$00,$00,$80,$80,$0f,$0f,$8f,$80,$00,$00,$a2,$aa,$ff,$ff
        .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$aa,$8a
        .byte $00,$00,$02,$02,$00,$00,$f2,$f2,$f0,$00,$02,$02,$22,$aa,$fc,$f8
        .byte $f0,$e0

    L_3a38:
        cpy #$c0

        .byte $00,$00,$8f,$8f,$3f,$1f,$0f,$07,$03,$03,$02,$02,$f0,$f0,$fc,$f8
        .byte $f0,$e0,$c0,$c0,$80,$80,$0f,$0f,$3f,$1f,$0f,$07,$03,$03,$00,$00
        .byte $f2,$f2,$aa,$88,$80,$80,$00,$00,$80,$80,$0f,$0f,$aa,$8a,$00,$00
        .byte $02,$02,$00,$00,$f2,$f2,$00,$00,$80,$80,$00,$00,$80,$80,$0f,$0f
        .byte $02,$02,$00,$00,$02,$02,$00,$00,$f2,$f2,$0f,$0f,$80,$80,$c0,$c0
        .byte $e0,$f0,$f8,$fc,$f2,$f2,$00,$00,$03,$03,$07,$0f,$1f,$3f,$8f,$8f
        .byte $00,$00,$c0,$c0,$e0,$f0,$f8,$fc,$f0,$f0,$02,$02,$03,$03,$07,$0f
        .byte $1f,$3f,$8f,$8f,$00,$00,$80,$80,$00,$00,$a2,$aa,$f0,$f0,$02,$02
        .byte $00,$00,$02,$02,$22,$aa,$2e,$37,$37,$2e,$2a,$0a,$0d,$15,$16,$1a
        .byte $0a,$0a,$0b,$2b,$00,$08,$a8,$ac,$b8,$a0,$80,$80,$a0,$a8,$a8,$a8
        .byte $a8,$a8,$ec,$00,$2e,$37,$37,$37,$2e,$0a,$0a,$15,$1a,$0a,$0a,$0a
        .byte $2a,$23,$23,$08,$a8,$ac,$b8,$a0,$80,$a0,$a8,$a8,$a8,$a8,$a8,$a8
        .byte $a0,$c0,$2e,$37,$37,$37,$37,$2e,$0a,$0a,$0a,$0a,$0a,$0a,$2a,$22
        .byte $20,$28,$a8,$ac,$b8,$a0,$a0,$a8,$a8,$a8,$a8,$a8,$a8,$a8,$a0,$80
        .byte $33,$00,$0c,$03,$0c,$30,$00,$0c,$00,$0c,$00,$00,$03,$0c,$30,$03
        .byte $cc,$00,$03,$0c,$00,$30,$03,$00,$00,$03,$00,$00,$0c,$30,$20

    L_3b39:
        rol 

        .byte $3a,$2e,$0a,$02,$02,$0a,$2a,$2a,$2a,$2a,$2a,$2a,$3b,$b8,$dc,$dc
        .byte $b8,$b8,$a0,$60,$54,$94,$a4,$a0,$a0,$a0,$e0,$e8,$20,$2a,$0a,$22
        .byte $0a,$02,$0a,$2a,$2a,$2a,$2a,$2a,$2a,$0a,$03,$b8,$dc,$dc,$dc,$b8
        .byte $a0,$a0,$54,$a4,$a0,$a0,$a0,$a8,$c8,$c8,$28,$2a,$3a,$2e,$0a,$0a
        .byte $2a,$2a,$2a,$2a,$2a,$2a,$2a,$0a,$02,$b8,$dc,$dc,$dc,$dc,$b8,$a0
        .byte $a0,$a0,$a0,$a0,$a0,$a8,$88,$08,$30,$0c,$00,$30,$0c,$00,$03,$30
        .byte $00,$00,$30,$00,$00,$0c,$03,$33,$c0,$0c,$30,$0c,$03,$00,$0c,$00
        .byte $0c,$00,$00,$30,$0c,$03,$02,$0a,$0b,$0f,$0f,$0b,$3a,$3e,$0a,$02
        .byte $03,$03,$a0,$a8,$fc,$30,$30,$fc,$a8,$a8,$a8,$a0,$30,$fc,$02,$0a
        .byte $0b,$0f,$0f,$0f,$0b,$0a,$3e,$0a,$02,$03,$a0,$a8,$fc,$30,$30,$30
        .byte $fc,$a8,$a8,$a8,$a0,$fc,$0a,$2a,$2f,$3c,$3c,$3c,$3c,$2f,$2a,$2a
        .byte $2a,$0a,$a0,$a8,$fc,$cc,$cc,$cc,$cc,$fc,$a8,$a8,$a8,$a0,$0c,$30
        .byte $00,$03,$03,$00,$0c,$00,$00,$00,$30,$03,$30,$0c,$00

    L_3c07:
        bmi L_3c39

        .byte $00,$0c,$c0,$00,$00,$0c,$30,$0a

    L_3c11:
        rol 

        .byte $3f,$0c,$0c,$3f,$2a,$2a,$2a,$0a,$0c,$3f,$80,$a0,$e0,$f0,$f0,$e0
        .byte $ac,$bc,$a0,$80,$c0,$c0,$0a

    L_3c29:
        rol 

        .byte $3f,$0c,$0c,$0c,$3f,$2a,$2a,$2a,$0a,$3f,$80,$a0,$e0,$f0,$f0

    L_3c39:
        .byte $f0,$e0
        .byte $a0,$bc,$a0,$80,$c0,$0a,$2f,$33,$33,$33,$33,$33,$3f,$2a,$2a,$2a
        .byte $0a,$a0,$f8,$38,$3c,$3c,$3c,$3c,$f8,$a8,$a8,$a8,$a0,$0c,$30,$00
        .byte $0c,$0c,$00,$30,$00,$03,$00,$30,$0c,$30,$0c,$00,$c0,$c0,$00,$0c
        .byte $00,$00,$00,$03,$c0,$06,$03,$00,$02,$2a,$03,$00,$0e,$7a,$03,$01
        .byte $01,$80,$03,$01,$0c,$20,$03,$01,$05,$60,$05,$00,$08,$0a,$07,$03
        .byte $01,$05,$60,$05,$00,$08,$0a,$02,$01,$01,$40,$03,$00,$02,$7a,$02
        .byte $01,$06,$80,$03,$01,$0c,$90,$03,$01,$0c,$30,$07,$03,$01,$05,$60

    L_3cab:
        .byte $05,$00,$08,$0a,$02
        .byte $01,$01,$40,$02,$00,$06,$8a,$02,$01,$09,$a0,$03,$00,$0c,$1a,$02
        .byte $01,$0e,$10,$07,$03,$01,$05,$60

    L_3cc8:
        .byte $05,$00,$08,$0a,$03
        .byte $01,$00,$30,$03,$01,$01,$90,$03,$01,$0a,$a0,$03,$00,$10,$5a,$03
        .byte $00,$0c,$1a,$08,$03,$01,$05,$60,$05,$00,$08,$0a,$02,$01,$01,$10
        .byte $02,$00,$04

    L_3cf0:
        rol 

        .byte $03,$01,$02,$80,$03,$01,$0c,$90,$03,$00,$10,$4a,$03,$00,$0e,$2a
        .byte $00,$c0,$80,$40,$00,$c0,$80,$40,$00,$c0,$80,$40,$00,$c0,$80,$40
        .byte $00,$c0,$80,$40,$00

    L_3d16:
        bpl L_3d28
        ora ($12),y

        .byte $13,$13,$14,$15,$16,$16,$17,$18,$19,$19,$1a,$1b,$1c,$1c

    L_3d28:
        ora $1f1e,x

        .byte $00,$14,$28,$3c,$50,$64,$78,$8c,$a0,$b4,$c8

    L_3d36:
        .byte $dc,$f0,$08,$43,$30,$07,$bf,$30,$02,$bf,$30,$02
        .byte $d5,$30,$02,$e5,$30

    L_3d47:
        asl 

        .byte $43,$30,$00,$43,$30,$04,$bf,$30,$05,$bf

    L_3d52:
        bmi L_3d5a + $1
        cmp $30,x

        .byte $02,$e5,$30,$0a

    L_3d5a:
        .byte $43,$30,$00,$43,$30,$03,$bf,$30,$05,$bf
        .byte $30,$05,$d5,$30,$02,$e5,$30

    L_3d6b:
        asl 

    L_3d6c:
         .byte $43,$30,$38
        .byte $4a,$5c,$38,$4a

    L_3d73:
        and L_3d36 + $7,x
        and $133d,x
        and L_3938 + $1,y
        rol $13

        .byte $00,$10,$40,$70,$a0,$c0,$01,$02,$02,$02,$03,$25,$17,$17,$10,$0f
        .byte $70,$89,$a6,$c3,$e0,$3c

    L_3d94:
        .byte $3c,$3c,$3c,$3c,$07
        .byte $20,$80,$80,$28,$80,$80,$30,$88,$89,$40,$43,$30,$b0,$95,$31,$c0
        .byte $a5,$31,$10,$80,$01,$00,$01,$02,$03,$04,$bd,$3d,$17,$3e,$7c,$3e
        .byte $ec,$3e,$78,$2f,$08,$60,$02,$10,$01,$00,$00,$00,$05,$08,$60,$04
        .byte $81,$02,$0f,$01,$00,$01,$23,$00,$04,$81,$0f,$22,$02,$0c,$01,$00
        .byte $02,$1e,$00,$0f,$22,$0e,$90,$02,$0c,$01,$01,$02,$19,$00,$0e,$90
        .byte $02,$40,$02,$0c,$01,$01,$02,$14,$00,$02,$40,$ff,$04,$35,$02,$09
        .byte $00,$00,$03,$00,$00,$04,$35,$02,$95,$02,$09,$00,$00,$03,$00,$00
        .byte $02,$95,$10,$85,$02,$09,$00,$00,$03,$00,$00,$10,$85,$ff,$08,$60
        .byte $02,$10,$01,$00,$00,$00,$05,$08,$60,$0e,$31,$02,$0f,$01,$00,$01
        .byte $14,$00

    L_3e2b:
        asl $0e31
        sta ($02),y

        .byte $0f,$01,$00,$01,$19,$00,$0e,$91,$04,$42,$02,$0c,$00,$00,$02,$10
        .byte $00,$04,$42,$02,$90,$02,$0c,$00

    L_3e48:
        ora ($02,x)
        and $00

        .byte $02,$90,$08,$82,$02,$0c,$00,$00,$02,$0e,$00,$08,$82,$ff,$02,$25
        .byte $02,$09,$00,$00,$03,$00,$00,$02,$25,$06,$95,$02,$09,$00,$00,$03
        .byte $00,$00,$06,$95,$10,$75,$02,$09,$00,$00,$03,$00,$00,$10,$95,$ff

    L_3e7c:
        php 
        rts 



        .byte $02,$10,$01,$00,$00,$00,$05,$08,$60,$10,$11,$02,$0f,$00,$00,$01
        .byte $0c,$00,$10,$11,$0c,$a1,$02,$0f,$00,$00,$01,$10,$00,$0c,$a1,$02
        .byte $42,$02,$0c,$01,$00,$02,$14,$00,$02,$42,$06,$90,$02,$0c,$00,$02
        .byte $02,$20,$00,$06,$90,$0c,$40,$02,$0c,$01,$01,$02,$19,$00,$0c,$40
        .byte $ff,$02

    L_3ec0:
        and $02
        ora #$00

        .byte $00,$03,$00,$00,$02,$25,$04,$85,$02,$09,$00,$00,$03,$00,$00,$04
        .byte $85,$0e,$55,$02,$09,$00,$00,$03,$00,$00,$0e,$55,$10,$95,$02,$09
        .byte $00,$00,$03,$00,$00,$10,$95,$ff,$08,$60,$02,$10,$01,$00,$00,$00
        .byte $05,$08,$60,$04,$91,$02,$0f,$01,$00,$01,$0a,$00,$04,$91,$10,$71
        .byte $02,$0f,$00,$02,$01,$0d,$00,$10,$71,$02,$32,$02,$0c,$01,$00,$02
        .byte $10,$00,$02,$32,$0c,$30,$02,$0c,$00,$02,$02,$13,$00,$0c,$30,$0c
        .byte $a2,$02,$0c,$01,$00,$02,$16,$00,$0c,$a2,$ff,$02

    L_3f30:
        eor $02
        ora #$00

        .byte $00,$03,$00,$00,$02,$45,$04,$75,$02

    L_3f3d:
        ora #$00

    L_3f3f:
         .byte $00,$03,$00,$00,$04
        .byte $75,$0e,$15,$02,$09,$00,$00,$03,$00,$00,$0e,$15,$10,$45,$02,$09
        .byte $00,$00,$03,$00,$00,$10,$15,$12,$95,$02,$09,$00,$00,$03,$00,$00
        .byte $12,$95,$ff,$03,$0c,$cc,$ff,$3f,$30,$30,$0c,$03

    L_3f70:
        lda #$01
        sta $ba
        ldx #$03
    L_3f76:
        lda $00,x
        sta $b4,x
        dex 
        bpl L_3f76
        lda $b2
        sta $9d
        lda $b3
        sta $9e
        rts 


    L_3f86:
        lda $bb
        beq L_3fa2
        ldx #$03
    L_3f8c:
        lda $b4,x
        sta $00,x
        dex 
        bpl L_3f8c
        lda $9d
        sta $b2
        lda $9e
        sta $b3
        jsr L_203e
    L_3f9e:
        lda #$00
        sta $bb
    L_3fa2:
        rts 


        ldx #$05
    L_3fa5:
        stx $bc
        lda $c0,x
        beq L_3fe3
        sta $b9
        lda $c6,x
        sta $97
        lda $cc,x
        sta $9f
        lda $d2,x
        sta $a0
        lda $97
        cmp #$05
        beq L_3fe3
        cmp #$04
        bcs L_3fd4
        cpx $b1
        beq L_3fd4
        dec $d8,x
        bne L_3fe3
        lda #$02
        sta $d8,x
        dec $97
        jmp L_3fd6
    L_3fd4:
        inc $97
    L_3fd6:
        jsr $be54
        ldx $bc
        lda $97
        sta $c6,x
        lda $b9
        sta $c0,x
    L_3fe3:
        dex 
        bpl L_3fa5
        rts 


        ldx #$0f
    L_3fe9:
        lda $a03d,x
        sta $9000,x
        dex 
        bpl L_3fe9
        rts 



        .byte $a5,$02,$09,$00,$00,$03,$00,$00


//Start of disassembled code
* = $a000 "Cart Header"
        
        .byte $1a,$a0
        .byte $1a,$a0,$41,$30,$c3,$c2,$cd,$02,$bb,$5a,$30,$5f,$ee,$3d
        .byte $a8,$32,$37,$20,$4f,$43,$54,$20,$38,$33

* = $a01a "Code Start"


        .byte $a9,$00,$ea,$ea,$ea
    
        .byte $78
        .byte $a2,$ff,$9a,$d8,$20,$9b,$a6,$20,$e7,$3f,$20,$4d,$a0,$20,$a9,$a2
        .byte $20,$58,$a0,$4c,$fa,$a1

    L_a036:
        jsr L_a6a7
        jsr L_a0c2
        rts 



        .byte $06,$11,$94,$1b,$00,$8c,$00,$00,$00,$00,$00,$00,$00,$00,$1f,$0e
        .byte $a0,$1f,$a9,$00

    L_a051:
        sta $9110,y
        dey 
        bpl L_a051
        rts 


    L_a058:
        ldx #$00
        txa 
        sta $0180
        sta $0181
        sta $0182
    L_a064:
        lda $0182
        sta $0200,x
        clc 
        adc #$0c
    L_a06d:
        inx 
        clc 
        sta $0182
        inc $0181
        lda $0181
        cmp #$14
        bcc L_a064
        lda #$00
        sta $0181
        clc 
        inc $0180
        lda $0180
        sta $0182
        cmp #$0c
        bcc L_a064
        lda #$fb
        sta $02f0
        sta $02f2
        lda #$fc
        sta $02f1
        sta $02f3
        lda #$f4
        ldx #$05
    L_a0a3:
        sta $02f4,x
        dex 
        bpl L_a0a3
        lda #$f1
        sta $02fa
        ldx #$08
        lda #$fa
        sta $0181
    L_a0b5:
        lda $0181
        sta $02fb,x
        dec $0181
        dex 
        bpl L_a0b5
        rts 


    L_a0c2:
        jsr L_ba04
        jsr L_b9e4
        jsr L_a197
        jsr L_a10e
        beq L_a0d1
        rts 


    L_a0d1:
        jsr L_a46a
        jsr L_bb53
        jsr L_bf20 + $8
        jsr L_b4ec
        jsr $b7d1
        jsr $2641
        jsr $25af
        jsr $b7d1
        jsr $21ab
        jsr L_b000
        jsr $226d
        jsr $2641
        jsr $25af
        jsr L_a0fe
        jmp L_a0c2
    L_a0fe:
        lda $11
        cmp #$05
        bcc L_a0fe
        lda #$00
        sta $11
    L_a108:
        rts 



    L_a109:
         .byte $06,$15,$33
        .byte $65,$c9

    L_a10e:
        lda $0321
        cmp #$0b
        beq L_a118
        lda #$00
        rts 


    L_a118:
        jsr $21fa
        lda $54
        cmp #$02
        beq L_a145
        dec $3d
        bmi L_a138
        lda #$04
        sta $df
        jsr $2b40
        jsr L_a1e3
        jsr L_a6e7
        jsr L_a7b6
        lda #$00
        rts 


    L_a138:
        lda #$01
        sta $df
        jsr $2b40
        jsr L_a1e3
        lda #$01
        rts 


    L_a145:
        lda #$00
        sta $42
        lda $25
        cmp #$02
        beq L_a16a
        lda $e3
        sta $e4
        dec $3d
        lda $3e
        bmi L_a190
    L_a159:
        lda $e5
        sta $e3
        lda #$02
        sta $25
    L_a161:
        jsr L_a1c9
        jsr L_a828
        lda #$00
        rts 


    L_a16a:
        lda $e3
        sta $e5
        dec $3e
        lda $3d
        bmi L_a17f
    L_a174:
        lda $e4
        sta $e3
        lda #$01
        sta $25
        jmp L_a161
    L_a17f:
        lda $3e
        bpl L_a159
    L_a183:
        lda #$01
        sta $df
        jsr $2b40
        jsr L_a1e3
        lda #$01
        rts 


    L_a190:
        lda $3d
        bmi L_a183
        jmp L_a174
    L_a197:
        lda $43
        beq L_a19c
        rts 


    L_a19c:
        lda $ac
        beq L_a1a1
        rts 


    L_a1a1:
        lda #$00
        sta $42
        jsr $21fa
        lda $25
        cmp #$02
        beq L_a1b5
        inc $40
        lda $40
        jmp L_a1b9
    L_a1b5:
        inc $41
        lda $41
    L_a1b9:
        ldy $e3
        cmp L_a109,y
        bne L_a1c2
        inc $e3
    L_a1c2:
        jsr L_a1c9
        jsr L_a828
        rts 


    L_a1c9:
        lda #$08
        sta $df
        jsr $2b40
        jsr L_a1e3
        jsr L_a1e3
        jsr L_a6e7
        jsr L_a4c4
        jsr L_a592
        jsr L_a7b6
        rts 


    L_a1e3:
        ldx #$32
    L_a1e5:
        jsr L_a0fe
        dex 
        bne L_a1e5
        rts 



    L_a1ec:
         .byte $15,$a2,$2e,$a2,$63,$a2,$63,$a2,$75,$a2,$78,$a2,$a2,$a2,$20,$eb
        .byte $a2,$a9,$00,$85,$51,$85,$52,$a5,$53,$0a,$aa,$bd,$ec,$a1,$85,$18
        .byte $e8,$bd,$ec,$a1,$85,$19,$6c,$18,$00,$20,$28,$ab,$20,$92,$a9

    L_a21b:
        jsr L_a0fe
        jsr $ad71
        lda $1a
        cmp #$27
        bne L_a21b
        lda #$01
        sta $53
        jmp L_a1ec + $e
        jsr L_ab28
        jsr $a992
        jsr L_a108
    L_a237:
        jsr L_a0fe
        jsr $ad71
        lda $1a
        cmp #$27
        beq L_a24a
        cmp #$2f
        beq L_a251
        jmp L_a237
    L_a24a:
        lda #$03
        sta $53
        jmp L_a260
    L_a251:
        lda $54
        cmp #$01
        beq L_a25c
        lda #$01
        jmp L_a25e
    L_a25c:
        lda #$02
    L_a25e:
        sta $54
    L_a260:
        jmp L_a1ec + $e
        jsr L_ab28
        lda $900f
        ora #$06
        sta $900f
        jsr L_a036
        lda #$05
        sta $53
        jmp L_a1ec + $e
        jsr $a992
    L_a27b:
        jsr L_a0fe
        jsr $ad71
        lda $1a
        cmp #$27
        beq L_a294
        cmp #$37
        beq L_a29b
        lda $53
        cmp #$06
        bne L_a27b
        jmp L_a29f
    L_a294:
        lda #$03
        sta $53
        jmp L_a29f
    L_a29b:
        lda #$01
        sta $53
    L_a29f:
        jmp L_a1ec + $e
        lda #$00
        sta $53
        jmp L_a1ec + $e
    L_a2a9:
        lda #$7f
        sta $911e
        sta $913e
        lda #$00
        sta $51
        sta $52
        sta $53
        sta $65
        sta $911b
        lda #$01
        sta $54
        lda $900e
        and #$f8
        sta $900e
        jsr L_a2eb
        lda #$02
        sta $0318
        lda #$a3
        sta $0319
        lda #$c0
        sta $911e
        jsr L_a2e0
        rts 


    L_a2e0:
        lda #$40
        sta $9114
        sta $9115
        inc $11
        rts 


    L_a2eb:
        lda #$00
        sta $68
        sta $6c
        sta $70
        sta $74
        sta $900a
        sta $900b
        sta $900c
        sta $900d
        rts 


        pha 
        txa 
        pha 
        tya 
        pha 
        ldy $53
        cpy #$03
        bne L_a310
        jmp L_a365
    L_a310:
        inc $52
        bne L_a316
        inc $51
    L_a316:
        lda $51
        cmp #$92
        bne L_a338
        lda $52
        cmp #$7c
        bne L_a338
        jsr L_a384
        jsr L_a371
        jsr L_a3d4
    L_a32b:
        ldy $53
        cpy #$04
        bne L_a335
        lda #$03
        sta $53
    L_a335:
        jmp L_a368
    L_a338:
        ldy $53
        cpy #$04
        bne L_a341
        jsr $ad71
    L_a341:
        ldx $1a
        cpx #$40
        beq L_a354
        lda #$00
        sta $51
        sta $52
        cpx #$20
        beq L_a32b
        jmp L_a368
    L_a354:
        ldy $53
        cpy #$04
        beq L_a368
        lda $70
        bne L_a365
        lda #$08
        sta $df
        jsr $2b40
    L_a365:
        jsr L_a415
    L_a368:
        jsr L_a2e0
        pla 
        tay 
        pla 
        tax 
        pla 
        rti 
    L_a371:
        jsr L_a2eb
        jsr $ad71
        lda $1a
        cmp #$20
        bne L_a371
        lda #$00
        sta $51
        sta $52
        rts 


    L_a384:
        ldx #$00
    L_a386:
        lda $9600,x
        sta $9400,x
        lda #$00
        sta $9600,x
        dex 
        bne L_a386
        ldx #$04
    L_a396:
        lda $9700,x
        sta $9503,x
        lda #$00
        sta $9700,x
        dex 
        bpl L_a396
        lda $900f
        and #$f0
        clc 
        ror 
        ror 
        ror 
        ror 
        sta $9500
        lda $900f
        and #$0f
        sta $9501
        lda #$08
        sta $900f
        lda $900e
        and #$f0
        clc 
        ror 
        ror 
        ror 
        ror 
        sta $9502
        lda $900e
        and #$0f
        sta $900e
        rts 


    L_a3d4:
        ldx #$00
    L_a3d6:
        lda $9400,x
        and #$0f
        sta $9600,x
        dex 
        bne L_a3d6
        ldx #$04
    L_a3e3:
        lda $9503,x
        and #$0f
        sta $9700,x
        dex 
        bpl L_a3e3
        lda $9500
        and #$0f
        asl 
        asl 
        asl 
        asl 
        sta $900f
        lda $9501
        and #$0f
        ora $900f
        sta $900f
        lda $9502
        and #$0f
        asl 
        asl 
        asl 
        asl 
        ora $900e
        sta $900e
        rts 


    L_a415:
        ldx #$00
        lda #$0a
        sta $12
        lda #$90
        sta $13
    L_a41f:
        ldy #$00
        lda $68,x
        bne L_a42c
        lda #$00
        sta ($12),y
        jmp L_a455
    L_a42c:
        lda $6b,x
        bne L_a453
        lda $69,x
        clc 
        adc #$02
        bcc L_a439
        inc $6a,x
    L_a439:
        sta $69,x
        sta $14
        lda $6a,x
        sta $15
        lda ($14),y
        sta ($12),y
        iny 
        lda ($14),y
        sta $6b,x
        bne L_a453
        lda #$00
        sta $68,x
        jmp L_a455
    L_a453:
        dec $6b,x
    L_a455:
        cpx #$0c
        bcs L_a462
        inx 
        inx 
        inx 
        inx 
        inc $12
        jmp L_a41f
    L_a462:
        rts 


    L_a463:
        lda #$00
        sta $8a
        sta $8b
        rts 


    L_a46a:
        jsr L_a487
        sta $8c
        lda $8b
        bne L_a47e
        lda $8d
        bne L_a47d
        lda #$01
        sta $8a
        sta $8b
    L_a47d:
        rts 


    L_a47e:
        lda $8d
        beq L_a486
        lda #$00
        sta $8b
    L_a486:
        rts 


    L_a487:
        ldx $9122
        lda #$00
        sta $9133
        sta $9122
        lda $9111
        sta $8e
        and #$20
        sta $8d
        lda $8e
        and #$1c
        sta $8e
        lda $9120
        and #$80
        lsr 
        lsr 
        ora $8e
        lsr 
        lsr 
        tay 
        lda L_a4b4,y
        stx $9122
        rts 



    L_a4b4:
         .byte $00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$04,$00
        .byte $06,$08,$00

    L_a4c4:
        ldx $1b
        lda $3d6e,x
        sta $16
        lda $3d73,x
        sta $17
        ldy #$00
        ldx #$00
    L_a4d4:
        lda ($16),y
        sta $1c
        iny 
        lda ($16),y
        sta $18
        iny 
        lda ($16),y
        sta $19
        lda $3d78,x
        sta $1d
        jsr L_a502
        inx 
        iny 
        cpy #$12
        bne L_a4d4
        ldx #$13
        lda #$03
    L_a4f4:
        sta $96f0,x
        dex 
        cpx #$0a
        bne L_a4f4
        lda #$01
        sta $96f0,x
        rts 


    L_a502:
        txa 
        pha 
        tya 
        pha 
        lda $3d7e,x
        sta $01
        ldx #$00
        stx $00
        stx $0180
    L_a512:
        lda #$14
        sta $02
        jsr L_a555
        ldx #$00
    L_a51b:
        stx $00
        lda $18
        sta $b2
        lda $19
        sta $b3
        lda #$01
        sta $02
        lda #$10
        sta $03
        jsr $201c
        inx 
        cpx #$14
        bne L_a51b
        txa 
        clc 
        adc $0180
        sta $0180
        sec 
        sbc $1d
        bpl L_a550
        lda $01
        clc 
        adc #$10
        sta $01
        ldx #$00
        stx $00
        jmp L_a512
    L_a550:
        pla 
        tay 
        pla 
        tax 
        rts 


    L_a555:
        lda $02
        pha 
        lda $00
        pha 
        lda $01
        pha 
        lsr 
        lsr 
        lsr 
        lsr 
        sta $01
    L_a564:
        ldy $01
        lda $3d2b,y
        clc 
        adc $00
        sta $4f
        lda #$96
        sta $50
        lda $1c
        cmp #$10
        bne L_a57e
        ldy #$00
        lda ($4f),y
        ora #$08
    L_a57e:
        ldy #$00
        sta ($4f),y
        inc $00
        dec $02
        bne L_a564
        pla 
        sta $01
        pla 
        sta $00
        pla 
        sta $02
        rts 


    L_a592:
        ldx $1f
        lda $3d8e,x
        sta $16
        lda $3d93,x
        sta $17
        ldy #$00
        lda ($16),y
        sta $20
    L_a5a4:
        iny 
        lda ($16),y
        sta $21
        iny 
        lda ($16),y
        sta $22
        iny 
        lda ($16),y
        sta $23
        sta $00
        iny 
        lda ($16),y
        sta $24
        sta $01
        sty $0180
        lda $22
        bne L_a62b
        lda #$35
        sta $b2
        lda #$31
        sta $b3
        lda #$02
        sta $02
        lda #$10
        sta $03
        jsr $203e
        lda $24
        sec 
        sbc #$0a
        sta $24
    L_a5dd:
        lda $24
        clc 
        adc #$10
        sta $24
        sta $01
        lda $23
        sta $00
        lda #$75
        sta $b2
        lda #$31
        sta $b3
        lda #$02
        sta $02
        lda #$10
        sta $03
        lda #$10
        sta $1c
        jsr L_a555
        jsr $201c
        dec $21
        bne L_a5dd
        lda $24
        clc 
        adc #$06
        sta $24
        sta $01
        lda $23
        sta $00
        lda #$02
        sta $02
        lda #$10
        sta $03
        lda #$55
        sta $b2
        lda #$31
        sta $b3
        jsr $203e
        jmp L_a690
    L_a62b:
        lda #$15
        sta $b2
        lda #$31
        sta $b3
        lda #$01
        sta $02
        lda #$10
        sta $03
        jsr $203e
        lda $23
        sec 
        sbc #$01
        sta $23
    L_a645:
        lda $23
        clc 
        adc #$02
        sta $23
        sta $00
        lda $24
        sta $01
        lda #$f5
        sta $b2
        lda #$30
        sta $b3
        lda #$02
        sta $02
        lda #$10
        sta $03
        lda #$10
        sta $1c
        jsr L_a555
        jsr $201c
        dec $21
        bne L_a645
        lda $23
        clc 
        adc #$02
        sta $23
        sta $00
        lda $24
        sta $01
        lda #$01
        sta $02
        lda #$10
        sta $03
        lda #$25
        sta $b2
        lda #$31
        sta $b3
        jsr $203e
    L_a690:
        ldy $0180
        dec $20
        beq L_a69a
        jmp L_a5a4
    L_a69a:
        rts 


    L_a69b:
        lda #$00
        sta $27
        sta $28
        sta $29
        jsr L_af8f
        rts 


    L_a6a7:
        lda #$00
        sta $e3
        ldx #$0f
    L_a6ad:
        sta $36,x
        sta $0180,x
        dex 
        bpl L_a6ad
        sta $de
        lda #$01
        sta $b0
        sta $34
        sta $35
        sta $25
        lda #$02
        sta $3d
        sta $3e
        jsr L_a6e7
        jsr L_a4c4
        jsr L_a592
        jsr L_a7b6
        jsr L_a828
        lda #$ff
        sta $2f
        lda #$02
        sta $25
        jsr L_ade7
        dec $25
        jsr L_ade7
        rts 


    L_a6e7:
        lda #$96
        sta $ae
        lda #$04
        sta $af
        lda #$00
        ldx #$13
    L_a6f3:
        sta $b9,x
        sta $0180,x
        dex 
        bpl L_a6f3
        jsr $3000
        lda #$ff
        sta $b1
        jsr L_a463
        ldy #$07
        ldx #$0e
    L_a709:
        lda #$0b
        sta $031a,y
        tya 
        clc 
        adc #$10
        tay 
        dex 
        bne L_a709
        ldx $25
        lda $3f,x
    L_a71a:
        cmp #$05
        bcc L_a724
        sec 
        sbc #$04
        jmp L_a71a
    L_a724:
        tax 
        lda $3dae,x
        sta $1b
        sta $1f
        asl 
        tax 
        lda $3db3,x
        sta $4f
        inx 
        lda $3db3,x
        sta $50
        ldy #$00
        ldx #$00
        stx $0180
    L_a740:
        lda ($4f),y
    L_a742:
        sta $031a,x
        iny 
        inx 
        inc $0180
        lda $0180
        cmp #$0b
        bcs L_a76d
        cmp #$06
        bne L_a740
        lda #$00
        sta $031a,x
        inx 
        cpx #$90
        bcc L_a764
        lda #$00
        jmp L_a766
    L_a764:
        lda #$01
    L_a766:
        sta $031a,x
        inx 
        jmp L_a740
    L_a76d:
        lda #$43
        sta $031a,x
        inx 
        lda #$30
        sta $031a,x
        inx 
        lda #$02
        sta $031a,x
        inx 
        lda #$00
        sta $0180
        lda ($4f),y
        cmp #$ff
        bne L_a742
        cpx #$91
        bcs L_a794
        iny 
        ldx #$90
        jmp L_a740
    L_a794:
        lda #$01
        cmp $43
        bne L_a7a1
        cmp $54
        bne L_a7a1
        jsr L_a804
    L_a7a1:
        lda #$00
        sta $43
        ldy $1f
        lda $3d84,y
        sta $a8
        sta $a9
        lda $3d89,y
        sta $aa
        sta $ab
        rts 


    L_a7b6:
        lda #$f0
        sta $4f
        lda #$02
        sta $50
        ldy #$09
        lda #$f4
    L_a7c2:
        sta ($4f),y
        dey 
        bpl L_a7c2
        ldy #$00
        ldx $25
        lda $3c,x
        cmp #$05
        bcc L_a7d3
        lda #$05
    L_a7d3:
        tax 
    L_a7d4:
        cpx #$00
        beq L_a7e6
        lda #$fb
        sta ($4f),y
        iny 
        lda #$fc
        sta ($4f),y
        dex 
        iny 
        jmp L_a7d4
    L_a7e6:
        rts 


    L_a7e7:
        lda $93
        sta $bf
        lda $06
        sta $91
        lda $00
        sta $94
        lda $01
        sta $95
        rts 


        lda #$00
        sta $ba
        rts 


    L_a7fd:
        lda $ba
        beq L_a803
        sta $bb
    L_a803:
        rts 


    L_a804:
        lda #$03
        sta $19
        ldx #$00
    L_a80a:
        lda $f0,x
        beq L_a81a
        sta $18
        lda #$0b
        ldy #$07
        sta ($18),y
        inx 
        jmp L_a80a
    L_a81a:
        rts 


        lda $0180
        lsr 
        clc 
        adc #$21
    L_a822:
        cmp $9004
        bcs L_a822
        rts 


    L_a828:
        lda #$0a
        ldx #$13
    L_a82c:
        sta $9600,x
        dex 
        bpl L_a82c
        lda #$00
        sta $0180
        sta $0181
        ldx $25
        lda $3f,x
        clc 
        adc #$01
    L_a841:
        cmp #$64
        bcc L_a84e
        sec 
        sbc #$64
        inc $0180
        jmp L_a841
    L_a84e:
        cmp #$0a
        bcc L_a85b
        sec 
        sbc #$0a
        inc $0181
        jmp L_a84e
    L_a85b:
        sta $0182
        ldx #$05
        ldy #$00
    L_a862:
        lda $8090,y
        sta $0180,x
        inx 
        iny 
        cpy #$08
        bne L_a862
        ldy #$11
        ldx #$00
    L_a872:
        lda $0180,x
        bne L_a880
        iny 
        inx 
        cpx #$02
        bne L_a872
        lda $0180,x
    L_a880:
        sty $00
    L_a882:
        stx $0195
        jsr L_a894
        ldx $0195
        inx 
        lda $0180,x
        cpx #$03
        bne L_a882
        rts 


    L_a894:
        asl 
        tay 
        lda L_afea + $1,y
        sta $b2
        iny 
        lda L_afea + $1,y
        sta $b3
        ldx #$0c
        ldy #$00
    L_a8a5:
        lda ($b2),y
        sta $0180,x
        iny 
        inx 
        cpy #$08
        bne L_a8a5
        lda #$00
        sta $01
        lda #$01
        ldx $00
        sta $9600,x
        sta $02
        lda #$0f
        sta $03
        lda #$85
        sta $b2
        lda #$01
        sta $b3
        jsr $201c
        ldx #$08
        lda #$00
    L_a8d0:
        sta $0185,x
        dex 
        bpl L_a8d0
        rts 


    L_a8d7:
        ldy #$00
        lda ($16),y
        sta $56
        iny 
        lda ($16),y
        sta $01
        iny 
        lda ($16),y
        sta $66
        sty $67
        lda #$08
        sta $03
    L_a8ed:
        lda #$01
        sta $02
        lda $56
        sta $00
        jsr L_a929
        jsr L_a930
        jsr $201c
        inc $56
        dec $66
    L_a902:
        bne L_a8ed
        jsr L_a929
        sta $4f
        lda #$96
        sta $50
    L_a90d:
        jsr L_a929
        beq L_a928
        sta $66
        ldx #$00
        jsr L_a929
    L_a919:
        sta ($4f,x)
        inc $4f
    L_a91d:
        bne L_a921
        inc $50
    L_a921:
        dec $66
        bne L_a919
        jmp L_a90d
    L_a928:
        rts 


    L_a929:
        inc $67
        ldy $67
        lda ($16),y
        rts 


    L_a930:
        sta $b2
        lda #$00
        sta $b3
        sta $0180
        ldx #$03
    L_a93b:
        lda $b2
        clc 
        asl 
        bcc L_a944
        inc $0180
    L_a944:
        sta $b2
        lda $b3
        clc 
        asl 
        adc $0180
        sta $b3
        lda #$00
        sta $0180
        dex 
        bne L_a93b
        lda #$88
        clc 
        adc $b3
        sta $b3
        rts 



        .byte $86,$aa,$f0,$aa,$fe,$aa,$13,$ab,$0c,$aa,$26,$aa,$00,$00,$00,$01
        .byte $86,$aa,$f0,$aa,$5c,$aa,$9f,$aa,$00,$00,$dc,$aa,$bd,$aa,$9f,$aa
        .byte $00,$00

    L_a981:
        ora $4005

        .byte $14,$00,$60,$13,$01,$80

    L_a98a:
        .byte $5f
        .byte $a9,$6d,$a9,$79,$a9,$79,$a9,$a5,$53,$c9,$05,$d0,$37,$a2,$00

    L_a99a:
        lda L_a981,x
        sta $0f
        lda $a982,x
        sta $00
    L_a9a4:
        lda #$01
        sta $02
        lda #$10
        sta $03
        lda #$43
        sta $b2
        lda #$30
        sta $b3
        lda $a983,x
        sta $01
        txa 
        pha 
        jsr $203e
        pla 
        tax 
        dec $0f
        bne L_a9a4
        txa 
        clc 
        adc #$03
        tax 
        cpx #$09
        bne L_a99a
        lda #$03
    L_a9cf:
        asl 
        tay 
        lda L_a98a,y
        sta $18
        iny 
        lda L_a98a,y
        sta $19
        ldy #$00
    L_a9de:
        lda ($18),y
        sta $16
        iny 
        lda ($18),y
        sta $17
        beq L_a9f4
        iny 
        tya 
        pha 
        jsr L_a8d7
        pla 
        tay 
        jmp L_a9de
    L_a9f4:
        lda $53
        cmp #$01
        bne L_aa0b
        lda $54
        cmp #$02
        bne L_aa0b
        lda #$7e
        sta $16
        lda #$aa
        sta $17
        jsr L_a8d7
    L_aa0b:
        rts 



        .byte $01,$88,$13,$41,$4c,$4c,$20,$52,$49,$47,$48,$54,$53,$20,$52,$45
        .byte $53,$45,$52,$56,$45,$44,$a1,$13,$07,$00,$01,$a8,$13,$50,$52,$45
        .byte $53,$53,$20,$46,$31,$20,$46,$4f,$52,$20,$4f,$50,$54,$49,$4f,$4e
        .byte $c9,$06,$03,$02,$05,$0b,$03

    L_aa43:
        ora ($08,x)

        .byte $12,$48,$49,$47,$48,$20,$53,$43,$4f,$52,$45,$20,$20,$30,$30,$30
        .byte $30,$30,$30,$01,$12,$03,$00,$01,$68,$13,$50,$52,$45,$53,$53,$20
        .byte $46,$33,$20,$46,$4f,$52,$20,$32,$20,$50,$4c,$41,$59,$79,$06,$03
        .byte $02,$05,$05,$03,$01,$05,$05,$03,$00,$0e,$68,$01,$31,$86,$01,$05
        .byte $00,$01,$28,$12,$41,$54,$41,$52,$49,$53,$4f,$46,$54,$20,$50,$52
        .byte $45,$53,$45,$4e,$54,$53,$29,$12,$02,$00,$01,$84,$13,$20,$50,$52
        .byte $45,$53,$53,$20,$46,$31,$20,$54,$4f,$20,$53,$54,$41,$52,$54,$20
        .byte $a1,$07,$03,$02,$05,$0a,$03,$00,$00,$64,$14,$20,$50,$52,$45,$53
        .byte $53,$20,$46,$35,$20,$46,$4f,$52,$20,$4f,$50,$54,$49,$4f,$4e,$78
        .byte $07,$03,$02,$05,$0b,$03,$00,$05,$44,$0d,$20,$45,$4e,$44,$20,$4f
        .byte $46,$20,$47,$41,$4d,$45,$20,$55,$0d,$07,$00,$06,$40,$07,$44,$49
        .byte $47,$20,$44,$55,$47,$56,$07,$06,$00,$03,$68,$0e,$28,$43,$29,$20
        .byte $31,$39,$38,$32,$20,$4e,$41,$4d,$43,$4f,$7b,$0e,$07,$00,$03,$78
        .byte $0e,$28,$43,$29,$20,$31,$39,$38,$33,$20,$41,$54,$41,$52,$49,$8f
        .byte $0e,$07,$00

    L_ab28:
        lda #$f8
        and $900f
        sta $900f
        lda #$00
        sta $4f
        lda #$10
        sta $50
    L_ab38:
        ldy #$00
        lda #$00
    L_ab3c:
        sta ($4f),y
        iny 
        bne L_ab3c
        inc $50
        lda $50
        cmp #$20
        bne L_ab38
        rts 


    L_ab4a:
        lda #$00
        sta $7a
        jsr L_ad52
        ldy #$07
        lda ($18),y
        sta $0180
        lda #$0b
        sta ($18),y
        lda #$02
        sta $7b
        jsr L_ab6b
        ldy #$07
        lda $0180
        sta ($18),y
        rts 


    L_ab6b:
        lda #$2a
        sta $16
        lda #$03
        sta $17
        lda #$00
        sta $0183
        sta $7a
    L_ab7a:
        ldy #$07
        lda ($16),y
        cmp #$0b
        beq L_aba3
        ldy $7b
        bne L_ab8a
        cmp #$00
        beq L_aba3
    L_ab8a:
        jsr L_abf8
        jsr L_acb0
        jsr L_abd6
        beq L_aba3
        lda $7b
        cmp #$01
        bne L_abbb
        dec $33
        ldy #$07
        lda #$0a
        sta ($16),y
    L_aba3:
        inc $0183
        lda $0183
        cmp #$08
        beq L_abbb
        lda $16
        clc 
        adc #$10
        bcc L_abb6
        inc $17
    L_abb6:
        sta $16
        jmp L_ab7a
    L_abbb:
        lda #$00
        sta $7b
        rts 


    L_abc0:
        lda #$00
        sta $7a
        lda #$1a
        sta $16
        lda #$03
        sta $17
        jsr L_abf8
        jsr L_acb0
        jsr L_abd6
        rts 


    L_abd6:
        lda $7c
        cmp $82
        bmi L_abf3
        lda $80
        cmp $7e
        bmi L_abf3
        lda $81
        cmp $7f
        bcs L_abf3
        lda $7d
        cmp $83
        bcs L_abf3
        lda #$01
        jmp L_abf5
    L_abf3:
        lda #$00
    L_abf5:
        sta $7a
        rts 


    L_abf8:
        ldy #$00
        lda ($16),y
        sta $7c
        iny 
        lda ($16),y
        sta $7d
        ldy #$08
        lda ($16),y
        cmp #$01
        bne L_ac10
        lda #$00
        jmp L_ac5c
    L_ac10:
        cmp #$02
        bne L_ac19
        lda #$01
        jmp L_ac5c
    L_ac19:
        cmp #$00
        bne L_ac3f
        ldy #$02
        ldx #$02
        lda $0321
        cmp #$02
        bne L_ac35
        ldx #$06
        lda $031f
        beq L_ac35
        cmp #$01
        bne L_ac35
        ldy #$00
    L_ac35:
        tya 
        clc 
        adc $7d
        sta $7d
        txa 
        jmp L_ac5c
    L_ac3f:
        cmp #$06
        bne L_ac48
        lda #$03
        jmp L_ac5c
    L_ac48:
        cmp #$05
        bne L_ac51
        lda #$04
        jmp L_ac5c
    L_ac51:
        cmp #$03
        bne L_ac8f
        lda #$05
        jmp L_ac5c
        lda #$00
    L_ac5c:
        sta $7f
        ldy #$06
        lda ($16),y
        tax 
        ldy #$05
        lda ($16),y
        bne L_aca6
        ldy #$04
        lda ($16),y
        cmp #$01
        bne L_ac75
        inx 
        inx 
        inx 
        inx 
    L_ac75:
        ldy #$08
        lda ($16),y
        cmp #$00
        bne L_ac8f
        lda $0321
        cmp #$02
        bne L_ac89
        txa 
        clc 
        adc #$08
        tax 
    L_ac89:
        lda L_acd0 + $2,x
        jmp L_acad
    L_ac8f:
        cmp #$03
        bcs L_acab
        ldy #$07
        lda ($16),y
        cmp #$02
        bcc L_aca0
        lda #$01
        jmp L_acad
    L_aca0:
        lda L_acca,x
        jmp L_acad
    L_aca6:
        lda #$01
        jmp L_acad
    L_acab:
        lda #$00
    L_acad:
        sta $7e
        rts 


    L_acb0:
        ldx $7f
        lda L_ace1 + $1,x
        clc 
        adc $7d
        sta $7f
        lda $7c
        asl 
        asl 
        clc 
        adc $7e
        sta $7e
        clc 
        adc L_acea,x
        sta $7c
        rts 



    L_acca:
         .byte $01,$00,$03,$02
        .byte $01,$02

    L_acd0:
        .byte $03,$00,$03,$02
        .byte $01,$00,$00,$01,$02,$03,$01,$00,$ff,$02,$00,$01,$02

    L_ace1:
        .byte $03,$0f,$0c
        .byte $0e,$0c,$08,$09,$0e,$0a

    L_acea:
        ora $05

        .byte $04,$03,$04,$05,$04

    L_acf1:
        .byte $07,$ff,$ff
        .byte $fd,$fc,$04,$05,$06,$07

    L_acfa:
        ldx #$06
        lda $00
        sta $7c
        lda $05
        beq L_ad11
        ldx #$07
        cmp #$01
        bne L_ad0f
        lda #$fa
        jmp L_ad11
    L_ad0f:
        lda #$0c
    L_ad11:
        clc 
        adc $01
        sta $7d
        stx $7f
        lda $05
        beq L_ad21
        lda #$00
        jmp L_ad30
    L_ad21:
        ldx $06
        lda $04
        cmp #$01
        bne L_ad2d
        inx 
        inx 
        inx 
        inx 
    L_ad2d:
        lda L_acf1 + $1,x
    L_ad30:
        sta $7e
        jsr L_acb0
        jsr L_b9d8
        lda #$02
        sta $7b
        jsr L_ab6b
        lda $7a
        bne L_ad51
        lda $ae
        cmp #$96
        beq L_ad51
        jsr L_bacf
        bne L_ad51
        jsr $2b0a
    L_ad51:
        rts 


    L_ad52:
        lda #$00
        sta $16
        sta $17
        jsr L_abf8
        jsr L_acb0
        jsr L_b9d8
        rts 



    L_ad62:
         .byte $7f,$bf,$df,$ef,$ef,$7f,$7f,$7f,$7f
        .byte $fe,$3f,$37,$2f,$27,$20,$a9,$00,$8d,$23,$91,$a9,$ff,$8d,$22,$91
        .byte $a0,$05

    L_ad7d:
        dey 
        bmi L_ad96
        lda L_ad62,y
        sta $9120
        lda $9121
        cmp L_ad62 + $5,y
        bne L_ad7d
        lda $ad6c,y
        sta $1a
        jmp L_ad9d
    L_ad96:
        lda #$40
        sta $1a
        jmp L_adb3
    L_ad9d:
        ldy #$28
    L_ad9f:
        ldx #$ff
    L_ada1:
        dex 
        bne L_ada1
        dey 
        bne L_ad9f
        lda #$00
        sta $9120
    L_adac:
        lda $9121
        cmp #$ff
        bne L_adac
    L_adb3:
        jsr L_ba2e
        lda #$ff
        sta $9123
        rts 


        lda #$00
        sta $0180
        tax 
    L_adc2:
        ldy #$14
    L_adc4:
        sta $0200,x
        clc 
        adc #$0c
        inx 
        dey 
        bne L_adc4
        inc $0180
        lda $0180
        cmp #$0c
        bne L_adc2
        lda #$00
        sta $0300
        sta $0301
        sta $0302
        sta $0303
        rts 


    L_ade7:
        sed 
        lda #$00
        pha 
        lda $2f
        cmp #$ff
        beq L_ae5c
        cmp #$03
        beq L_ae53
        cmp #$01
        beq L_ae1e
        bcc L_adfe
        jmp L_ae37
    L_adfe:
        ldx $30
        lda L_afbd,x
        pha 
        lda $31
        cmp #$01
        bne L_ae18
        lda $031f
        bne L_ae18
        pla 
        sta $0180
        clc 
        adc $0180
        pha 
    L_ae18:
        lda #$00
        pha 
        jmp L_ae60
    L_ae1e:
        pla 
        cld 
        lda $32
        sec 
        sbc $33
        sed 
        asl 
        tax 
        lda L_afc9,x
        pha 
        inx 
        lda L_afc9,x
        pha 
        lda #$00
        pha 
        jmp L_ae60
    L_ae37:
        lda #$02
        sta $e1
        jsr $2b40
        ldx $25
        lda $3f,x
        tax 
        cpx #$0f
        bcc L_ae49
        ldx #$0f
    L_ae49:
        lda L_afdb,x
        pha 
        lda #$00
        pha 
        jmp L_ae60
    L_ae53:
        lda #$00
        pha 
        lda #$10
        pha 
        jmp L_ae60
    L_ae5c:
        lda #$00
        pha 
        pha 
    L_ae60:
        jsr L_ae66
        jmp L_ae80
    L_ae66:
        lda $25
        cmp #$01
        bne L_ae77
        lda #$36
        sta $18
        lda #$00
        sta $19
        jmp L_ae7f
    L_ae77:
        lda #$39
        sta $18
        lda #$00
        sta $19
    L_ae7f:
        rts 


    L_ae80:
        ldy #$02
        pla 
        clc 
        adc ($18),y
        sta ($18),y
        dey 
        pla 
        adc ($18),y
        sta ($18),y
        dey 
        pla 
        adc ($18),y
        sta ($18),y
        cld 
        ldy #$00
        lda ($18),y
        cmp $27
        beq L_aea2
        bcc L_aec5
        jmp L_aeb5
    L_aea2:
        iny 
        lda ($18),y
        cmp $28
        beq L_aeae
        bcc L_aec5
        jmp L_aeb5
    L_aeae:
        iny 
        lda ($18),y
        cmp $29
        bcc L_aec5
    L_aeb5:
        ldy #$00
        lda ($18),y
        sta $27
        iny 
        lda ($18),y
        sta $28
        iny 
        lda ($18),y
        sta $29
    L_aec5:
        jsr L_af9b
        lda #$1f
        sta $50
        lda #$50
        sta $4f
        lda #$00
        sta $19
        lda #$36
        sta $18
        jsr L_af36
        lda #$1f
        sta $50
        lda #$50
        clc 
        adc #$08
        bcc L_aee8
        inc $50
    L_aee8:
        sta $4f
        lda #$00
        sta $19
        lda #$39
        sta $18
        jsr L_af36
        lda $25
        cmp #$01
        bne L_af08
        jsr L_ae66
        lda $34
        jsr L_af12
        sta $34
        jmp L_af35
    L_af08:
        lda $35
        jsr L_af12
        sta $35
        jmp L_af35
    L_af12:
        ldy #$00
        cmp ($18),y
        bne L_af26
        cmp #$01
        bne L_af1e
        lda #$00
    L_af1e:
        clc 
        sed 
        adc #$04
        cld 
        jsr L_af27
    L_af26:
        rts 


    L_af27:
        pha 
        ldx $25
        inc $3c,x
        bne L_af30
        dec $3c,x
    L_af30:
        jsr L_a7b6
        pla 
        rts 


    L_af35:
        rts 


    L_af36:
        ldy #$00
    L_af38:
        lda ($18),y
        sty $0180
        ror 
        ror 
        ror 
        ror 
        and #$0f
        jsr L_af5b
        ldy $0180
        lda ($18),y
        and #$0f
        jsr L_af5b
        inc $0180
        ldy $0180
        cpy #$03
        bne L_af38
        rts 


    L_af5b:
        asl 
        tax 
        lda L_afea + $1,x
        sta $b2
        inx 
        lda L_afea + $1,x
        sta $b3
        lda #$08
        sta $03
        ldx #$00
        ldy #$00
    L_af70:
        lda ($b2,x)
        sta ($4f),y
        inc $b2
        bne L_af7a
        inc $b3
    L_af7a:
        iny 
        dec $03
        bne L_af70
        lda #$10
        sta $3f
        lda $4f
        clc 
        adc $3f
        bcc L_af8c
        inc $50
    L_af8c:
        sta $4f
        rts 


    L_af8f:
        ldx #$18
    L_af91:
        lda L_aa43,x
        sta $0100,x
        dex 
        bpl L_af91
        rts 


    L_af9b:
        ldx #$00
        ldy #$00
    L_af9f:
        lda $27,x
        and #$f0
        lsr 
        lsr 
        lsr 
        lsr 
        ora #$30
        sta $010f,y
        iny 
        lda $27,x
        and #$0f
        ora #$30
        sta $010f,y
        iny 
        inx 
        cpx #$03
        bne L_af9f
        rts 



    L_afbd:
         .byte $02,$02,$02,$02,$03,$03,$03,$04,$04,$04
        .byte $05,$05

    L_afc9:
        .byte $00,$00,$00
        .byte $10,$00

    L_afce:
        and $00
        rti 

        .byte $00,$60,$00,$80,$01,$00,$01,$20,$01,$40

    L_afdb:
        .byte $04
        .byte $06,$08,$10,$10,$20,$20,$30,$30,$40,$40,$50,$50,$60,$60

    L_afea:
        .byte $70,$80,$89
        .byte $88,$89,$90,$89,$98,$89,$a0,$89,$a8,$89,$b0,$89,$b8,$89,$c0,$89
        .byte $c8,$89,$00

    L_b000:
        ldx #$00
        jsr L_b996
        jsr L_b9b1
        lda $07
        cmp #$32
        bne L_b01c
        lda #$03
        sta $07
        lda #$02
        sta $02
        jsr L_a7fd
        jmp L_b053
    L_b01c:
        cmp #$03
        bcs L_b02d
        cmp #$02
        bne L_b027
        jsr L_b3c1
    L_b027:
        jsr L_b05f
        jmp L_b053
    L_b02d:
        cmp #$0b
        beq L_b053
        dec $0a
        bne L_b053
        lda #$05
        sta $0a
        lda $07
        cmp #$05
        bne L_b046
        lda #$0a
        sta $07
        jmp L_b053
    L_b046:
        cmp #$03
        bne L_b051
        lda #$08
        sta $e0
        jsr $2b40
    L_b051:
        inc $07
    L_b053:
        ldx #$00
        jsr L_b996
        jsr L_b9cb
        jsr L_b4d5
        rts 


    L_b05f:
        lda $8c
        beq L_b073
        lda $6c
        bne L_b084
        lda #$04
        sta $e0
        sta $b0
        jsr $2b40
        jmp L_b084
    L_b073:
        dec $b0
        bne L_b084
        sta $6c
        lda #$0a
        sta $b0
        lda #$01
        sta $e1
        jsr $2b40
    L_b084:
        lda $bf
        beq L_b089
        rts 



    L_b089:
         .byte $a9,$01,$85,$07,$a9,$02,$85,$02,$a4,$8c,$98,$4a,$aa,$bd,$0b,$b1
        .byte $85,$8f,$a5,$05,$c9,$00,$f0,$20,$c9,$01,$f0,$0e,$b9,$01,$b1,$85
        .byte $18,$c8,$b9,$01,$b1,$85,$19,$6c,$18,$00,$b9,$f7,$b0,$85,$18,$c8
        .byte $b9,$f7,$b0,$85,$19,$6c,$18,$00,$a5,$04,$c9,$01,$f0,$0e,$b9,$ed
        .byte $b0,$85,$18,$c8,$b9,$ed,$b0,$85,$19,$6c,$18,$00,$b9,$e3,$b0,$85
        .byte $18,$c8,$b9,$e3,$b0,$85,$19,$6c,$18,$00,$1e,$b2,$80,$b1,$10,$b1
        .byte $1b,$b1,$1b,$b1,$1e,$b2,$10,$b1,$64,$b1,$1b,$b1,$1b,$b1,$1e,$b2
        .byte $45,$b1,$45,$b1,$3c,$b1,$a5,$b1,$1e,$b2,$45,$b1,$45,$b1,$f0,$b1
        .byte $3c,$b1,$00,$01,$00,$02,$01,$a5,$06,$49,$03,$85,$06,$a5,$8f,$85
        .byte $04,$60,$a5,$06,$f0,$11,$c9,$03,$f0,$0d,$a5,$00,$29,$01,$d0,$07
        .byte $85,$06,$a5,$8f,$85,$05,$60

    L_b130:
        lda $04
        cmp #$01
        beq L_b139
        jmp L_b164
    L_b139:
        jmp L_b180
        lda $06
        eor #$01
        lda $8f
        sta $05
        rts 


        lda $01
        and #$0f
        bne L_b158
        lda #$01
        sta $06
        lda $8f
        sta $04
        lda #$00
        sta $05
        rts 


    L_b158:
        lda $05
        cmp #$01
        beq L_b161
        jmp L_b1ed + $3
    L_b161:
        jmp L_b1a5
    L_b164:
        jsr L_b44d
        bne L_b19c
        lda $00
        cmp #$00
        beq L_b19c
        ldy $06
        lda $b622,y
        cmp #$00
        bne L_b17a
        dec $00
    L_b17a:
        sta $06
        jsr L_b21f
        rts 


    L_b180:
        jsr L_b455
        bne L_b19c
        lda $00
        cmp #$12
        beq L_b19c
        ldy $06
        lda $b622,y
        cmp #$00
        bne L_b196
        inc $00
    L_b196:
        sta $06
        jsr L_b21f
        rts 


    L_b19c:
        lda $06
        cmp #$02
        bcs L_b1a4
        inc $06
    L_b1a4:
        rts 


    L_b1a5:
        lda #$14
        jsr L_b488
        bne L_b1db
        lda #$12
        jsr L_b488
        bne L_b1db
        lda #$10
        jsr L_b488
        bne L_b1df
        lda $01
        beq L_b1da
        sec 
        sbc #$02
        sta $01
        lda #$14
        jsr L_b488
        bne L_b1df
        lda #$12
        jsr L_b488
        bne L_b1df
        lda $06
        eor #$01
        sta $06
        jsr L_b2dd
    L_b1da:
        rts 


    L_b1db:
        dec $01
        dec $01
    L_b1df:
        lda $06
        eor #$01
        sta $06
        rts 


    L_b1e6:
        inc $01
        inc $01
        jmp L_b1df

    L_b1ed:
         .byte $ea,$ec,$ee,$a9,$02
        .byte $85,$a7

    L_b1f4:
        ldy $a7
        lda L_b1ed,y
        jsr L_b488
        bne L_b1e6
        dec $a7
        bpl L_b1f4
        lda #$f0
        jsr L_b488
        bne L_b1df
        lda $01
        cmp #$b0
        beq L_b21d
        clc 
        adc #$02
        sta $01
        lda $06
        eor #$01
        sta $06
        jsr L_b2dd
    L_b21d:
        rts 


        rts 


    L_b21f:
        lda #$00
        sta $09
        lda $01
        beq L_b250
        lda $00
        beq L_b251
        cmp #$12
        beq L_b239
        jsr L_b44d
        bne L_b251
        jsr L_b455
        beq L_b269
    L_b239:
        lda $04
        beq L_b269
        lda $06
        bne L_b250
        jsr L_acfa
        lda $7a
        bne L_b250
        lda #$12
        sta $09
        lda #$02
        sta $07
    L_b250:
        rts 


    L_b251:
        lda $04
        bne L_b269
        lda $06
        bne L_b268
        jsr L_acfa
        lda $7a
        bne L_b268
        lda #$10
        sta $09
        lda #$02
        sta $07
    L_b268:
        rts 


    L_b269:
        lda $00
        pha 
        lda $01
        pha 
        lda #$77
        sta $0180
        lda #$02
        ldx $04
        bne L_b27c
        lda #$ff
    L_b27c:
        clc 
        adc $00
        sta $00
        sta $0186
        inc $01
        lda #$02
        sta $0182
    L_b28b:
        lda #$0d
        sta $0181
        jsr $2000
    L_b293:
        lda ($4f),y
        and $0180
        bne L_b2d3
        lda $0182
        cmp #$02
        bne L_b2a6
        lda #$ff
        sta $0180
    L_b2a6:
        iny 
        dec $0181
        bne L_b293
        lda $06
        cmp #$02
        bcs L_b2cc
        lda $04
        beq L_b2c0
        lda #$37
        sta $0180
        dec $00
        jmp L_b2c7
    L_b2c0:
        lda #$74
        sta $0180
        inc $00
    L_b2c7:
        dec $0182
        bne L_b28b
    L_b2cc:
        pla 
        sta $01
        pla 
        sta $00
        rts 


    L_b2d3:
        pla 
        sta $01
        pla 
        sta $00
        jsr L_b33d
        rts 


    L_b2dd:
        lda #$00
        sta $09
        lda $01
        pha 
        tay 
        lda #$0e
        ldx $05
        cpx #$02
        beq L_b2f8
        cpy #$0e
        bne L_b2f6
        lda #$00
        jmp L_b2f8
    L_b2f6:
        lda #$fc
    L_b2f8:
        clc 
        adc $01
        cmp #$f0
        bcc L_b30b
        lda #$00
        sta $01
        lda #$04
        sta $0180
        jmp L_b315
    L_b30b:
        sta $01
        sta $0186
        lda #$06
        sta $0180
    L_b315:
        jsr $2000
        lda ($4f),y
        and #$7f
        bne L_b336
        inc $00
        jsr $2000
        dec $00
        lda ($4f),y
        and #$fd
        bne L_b336
        inc $01
        dec $0180
        bne L_b315
        pla 
        sta $01
        rts 


    L_b336:
        pla 
        sta $01
        jsr L_b33d
        rts 


    L_b33d:
        jsr L_acfa
        lda $7a
        beq L_b347
        sta $de
        rts 


    L_b347:
        lda $05
        cmp #$01
        bne L_b357
        lda $01
        cmp #$0e
        beq L_b357
        cmp #$16
        bcc L_b365
    L_b357:
        cmp #$02
        bne L_b361
        lda #$aa
        cmp $01
        bcc L_b365
    L_b361:
        lda #$02
        sta $07
    L_b365:
        lda $05
        bne L_b37c
        lda $06
        cmp #$03
        bcc L_b3c0
        lda #$03
        sta $02
        lda $04
        cmp #$01
        beq L_b3c0
        dec $00
        rts 


    L_b37c:
        cmp #$02
        beq L_b386
        jsr L_b3d0
        jmp L_b389
    L_b386:
        jsr L_b3ee
    L_b389:
        lda $01
        cmp #$16
        beq L_b3b5
        cmp #$aa
        beq L_b3a1
        lda #$16
        jsr L_b488
        bne L_b3ac
        lda #$ea
        jsr L_b488
        beq L_b3c0
    L_b3a1:
        lda $05
        cmp #$01
        beq L_b3c0
    L_b3a7:
        lda #$04
        sta $09
        rts 


    L_b3ac:
        lda $05
        cmp #$02
        beq L_b3c0
        jmp L_b3a7
    L_b3b5:
        lda $05
        cmp #$02
        beq L_b3c0
        lda #$10
        sta $09
        rts 


    L_b3c0:
        rts 


    L_b3c1:
        lda $06
        cmp #$03
        bcc L_b3cf
        lda $04
        cmp #$01
        beq L_b3cf
        inc $00
    L_b3cf:
        rts 


    L_b3d0:
        lda $00
        pha 
        lda $01
        pha 
        jsr $2000
        iny 
        iny 
        iny 
        lda ($4f),y
        cmp #$88
        bne L_b3e7
        ldy #$00
        jsr L_b416
    L_b3e7:
        pla 
        sta $01
        pla 
        sta $00
        rts 


    L_b3ee:
        lda $00
        pha 
        lda $01
        pha 
        clc 
        adc #$0c
        sta $01
        cmp #$0e
        beq L_b40a
        jsr $2000
        lda ($4f),y
        cmp #$22
        beq L_b40a
        cmp #$a2
        bne L_b40f
    L_b40a:
        ldy #$02
        jsr L_b416
    L_b40f:
        pla 
        sta $01
        pla 
        sta $00
        rts 


    L_b416:
        lda $02
        pha 
        lda $03
        pha 
        lda L_b439,y
        sta $b2
        iny 
        lda L_b439,y
        sta $b3
        lda #$02
        sta $02
        lda #$04
        sta $03
        jsr $203e
        pla 
        sta $03
        pla 
        sta $02
        rts 



    L_b439:
         .byte $3d,$b4,$45,$b4,$f0,$f0,$c0,$c0,$0f,$0f,$02,$02
        .byte $c0,$c0,$f0,$f0,$02,$02,$0f,$0f

    L_b44d:
        lda #$02
        sta $0185
        jmp L_b45a
    L_b455:
        lda #$fe
        sta $0185
    L_b45a:
        jsr L_b4b9
        ldx #$04
    L_b45f:
        ldy #$07
        lda ($16),y
        cmp #$0b
        beq L_b473
        ldy #$00
        lda ($16),y
        clc 
        adc $0185
        cmp $00
        beq L_b47c
    L_b473:
        jsr L_b4c9
        dex 
        bne L_b45f
        lda #$00
        rts 


    L_b47c:
        iny 
        lda ($16),y
        and #$f0
        cmp $01
        bne L_b473
        lda #$01
        rts 


    L_b488:
        sta $0185
        jsr L_b4b9
        ldx #$04
    L_b490:
        ldy #$07
        lda ($16),y
        cmp #$0b
        beq L_b4a6
        ldy #$01
        lda ($16),y
        and #$f0
        clc 
        adc $0185
        cmp $01
        beq L_b4af
    L_b4a6:
        jsr L_b4c9
        dex 
        bne L_b490
        lda #$00
        rts 


    L_b4af:
        dey 
        lda ($16),y
        cmp $00
        bne L_b4a6
        lda #$01
        rts 


    L_b4b9:
        lda #$03
        sta $17
        lda #$90
        clc 
        adc #$1a
        sta $16
        bcc L_b4c8
        inc $17
    L_b4c8:
        rts 


    L_b4c9:
        lda $16
        clc 
        adc #$10
        sta $16
        bcc L_b4d4
        inc $17
    L_b4d4:
        rts 


    L_b4d5:
        lda $0321
        cmp #$02
        bne L_b4eb
        dec $af
        bne L_b4eb
        lda #$04
        sta $af
        lda #$03
        sta $2f
        jsr L_ade7
    L_b4eb:
        rts 


    L_b4ec:
        ldx #$10
        jsr L_b996
    L_b4f1:
        jsr L_b9b1
        lda $07
        cmp #$02
        bcs L_b530
        jsr L_ad52
        jsr L_abc0
        lda $7a
        beq L_b509
        lda #$32
        sta $0321
    L_b509:
        lda $ac
        cmp #$01
        bne L_b52a
        lda $00
        bne L_b52a
        lda $06
        cmp #$00
        bne L_b52a
        ldy $08
        lda $01
        sec 
        sbc L_b6b5,y
        bne L_b52a
        lda #$0a
        sta $07
        jmp L_b52d
    L_b52a:
        jsr L_b53d
    L_b52d:
        jsr L_b9cb
    L_b530:
        lda $18
        cmp #$9a
        beq L_b53c
        jsr L_b9a5
        jmp L_b4f1
    L_b53c:
        rts 


    L_b53d:
        jsr $28f2
        sta $78
        sta $0a
        ldy $08
        lda $01
        sec 
        sbc L_b6b5,y
        sta $0180
        ldx $ac
        cpx #$01
        bne L_b560
        lda #$00
        sta $0181
        sta $0182
        jmp L_b56c
    L_b560:
        lda $031a
        sta $0181
        lda $031b
        sta $0182
    L_b56c:
        lda #$00
        sta $89
    L_b570:
        lda $89
        beq L_b57b
        lda $05
        bne L_b595
        jmp L_b57f
    L_b57b:
        lda $05
        beq L_b595
    L_b57f:
        lda $0181
        cmp $00
        bcc L_b5a9
        cpx #$01
        bne L_b592
        cmp $00
        bne L_b592
        lda $06
        beq L_b595
    L_b592:
        jmp L_b5ae
    L_b595:
        lda $0182
        cmp $0180
        bcc L_b5b3
        cpx #$01
        bne L_b5a6
        cmp $0180
        beq L_b57f
    L_b5a6:
        jmp L_b5b8
    L_b5a9:
        lda #$00
        jmp L_b5bd
    L_b5ae:
        lda #$01
        jmp L_b5bd
    L_b5b3:
        lda #$02
        jmp L_b5bd
    L_b5b8:
        lda #$03
        jmp L_b5bd
    L_b5bd:
        sta $79
        cmp $78
        bne L_b5ce
        jsr L_b626
        jsr L_b6c3
        beq L_b61d
        jmp L_b601
    L_b5ce:
        tay 
        lda L_b616,y
        cmp $78
        bne L_b5e5
    L_b5d6:
        lda $78
        sta $79
        jsr L_b626
        jsr L_b6c3
        beq L_b61d
        jmp L_b601
    L_b5e5:
        jsr L_b626
        jsr L_b6c3
        beq L_b61d
        lda $89
        bne L_b5fb
        lda #$01
        sta $89
        jsr L_b9be
        jmp L_b570
    L_b5fb:
        jsr L_b9be
        jmp L_b5d6
    L_b601:
        jsr L_b9be
        ldy $78
        lda L_b616,y
        sta $79
        jsr L_b626
        jsr L_b6c3
        beq L_b61d
        jmp L_b61a

    L_b616:
         .byte $01,$00,$03,$02

    L_b61a:
        jsr L_b9be
    L_b61d:
        rts 



    L_b61e:
         .byte $00,$03,$02
        .byte $01,$01,$02,$03,$00

    L_b626:
        lda $79
        cmp #$02

        .byte $b0,$61,$a5,$05,$f0,$07,$a9,$01,$85,$06,$4c,$4f,$b6

    L_b637:
        ldy $79
        lda L_b616,y
        ldy $06
        cmp $78
        bne L_b64a
        lda L_b61e,y
        sta $06
        jmp L_b6a2
    L_b64a:
        lda $b622,y
        sta $06
    L_b64f:
        lda $79
        cmp #$01
        bne L_b66f
        lda $06
        cmp #$03
        bne L_b664
        inc $00
        lda #$02
        sta $02
        jmp L_b6a2
    L_b664:
        cmp #$02
        bne L_b6a2
        lda #$03
        sta $02
        jmp L_b6a2
    L_b66f:
        lda $06
        cmp #$02
        bne L_b67e
        dec $00
        lda #$03
        sta $02
        jmp L_b6a2
    L_b67e:
        lda #$02
        sta $02
        jmp L_b6a2

    L_b685:
         .byte $01,$00,$00,$00,$00,$00
        .byte $fe,$02,$a9,$02,$85,$02,$a4,$06,$b9,$85,$b6,$85,$06,$a4,$79,$a5
        .byte $01,$18,$79,$89,$b6,$85,$01

    L_b6a2:
        lda $79
        cmp #$02
        bcc L_b6ae
        sec 
        sbc #$01
        jmp L_b6b2
    L_b6ae:
        sta $04
        lda #$00
    L_b6b2:
        sta $05
        rts 



    L_b6b5:
         .byte $00
        .byte $01,$02

    L_b6b8:
        .byte $00
        .byte $fe,$b2,$ff

    L_b6bc:
        .byte $13,$14,$0f
        .byte $0a,$07,$04,$02

    L_b6c3:
        ldy $08
        lda $01
        sec 
        sbc L_b6b5,y
        sta $0180
        lda $05
        bne L_b6dc
        lda $0180
        and #$0f
        beq L_b6fa
        jmp L_b7c4
    L_b6dc:
        lda $06
        cmp #$01
        beq L_b6f2
        cmp #$00
        beq L_b6e9
        jmp L_b7c4
    L_b6e9:
        lda $78
        cmp #$02
        bcs L_b6f2
        jmp L_b7c4
    L_b6f2:
        lda $00
        lsr 
        bcc L_b6fa
        jmp L_b7c4
    L_b6fa:
        lda $05
        beq L_b70a
        tay 
        lda L_b6b8,y
        cmp $0180
        bne L_b718
        jmp L_b7c4
    L_b70a:
        ldy $04
        lda $00
        cmp $b6bb,y
        bne L_b718
        jmp L_b7c4
    L_b716:
        asl $01
    L_b718:
        cmp #$12
        bne L_b726
        lda $06
        cmp L_b716,y
        bne L_b726
        jmp L_b7c4
    L_b726:
        jsr L_ab4a
        lda $7a
        beq L_b747
        ldy #$07
        lda ($16),y
        cmp #$00
        bne L_b738
        jmp L_b7c4
    L_b738:
        ldy #$00
        lda ($16),y
        cmp $00
        bne L_b747
        iny 
        lda ($16),y
        cmp $01
        beq L_b7c4
    L_b747:
        ldx $08
        lda $07
        cmp #$00
        beq L_b79b
        ldy $05
        beq L_b779
        lda $01
        cpy #$01
        beq L_b766
        clc 
        adc $03
        cpx #$01
        bne L_b76d
        sec 
        sbc #$02
        jmp L_b76d
    L_b766:
        cpx #$01
        bne L_b76d
        clc 
        adc #$01
    L_b76d:
        and #$0f
        bne L_b7c9
        sta $ad
        jsr $29a1
        jmp L_b782
    L_b779:
        lda $06
        cmp #$01
        bne L_b7c9
        jsr $2916
    L_b782:
        lda $84
        beq L_b7c9
        lda $ac
        cmp #$01
        bne L_b790
        lda #$00
        sta $09
    L_b790:
        dec $09
        bpl L_b7c4
        lda #$00
        sta $07
        jmp L_b7c9
    L_b79b:
        lda $09
        cmp #$08
        beq L_b7a3
        inc $09
    L_b7a3:
        lda $00
        lsr 
        bcs L_b7c9
        jsr $2a70
        bne L_b7c9
        lda $09
        cmp #$04
        bcc L_b7c9
        jsr L_b9be
        ldy $e3
        lda L_b6bc + $1,y
        sta $09
        lda #$01
        sta $07
        jmp L_b7c9
    L_b7c4:
        lda #$01
        jmp L_b7cb
    L_b7c9:
        lda #$00
    L_b7cb:
        rts 



    L_b7cc:
         .byte $02,$02,$03,$04
        .byte $01,$a2,$90,$20,$96,$b9

    L_b7d6:
        jsr L_b9b1
        lda $07
        cmp #$00
        beq L_b7f5
        cmp #$01
        beq L_b827
        cmp #$03
        beq L_b827
        cmp #$02
        beq L_b857
        cmp #$04
        bne L_b7f2
        jmp L_b94c
    L_b7f2:
        jmp L_b957
    L_b7f5:
        lda $00
        asl 
        asl 
        clc 
        adc #$03
        sta $82
        clc 
        adc #$01
        sta $80
        lda $01
        clc 
        adc #$0b
        sta $81
        clc 
        adc #$01
        sta $83
        jsr L_b967
        lda $7a
        beq L_b824
        lda $8c
        cmp #$08
        beq L_b824
        lda #$01
        sta $07
        lda #$0f
        sta $09
    L_b824:
        jmp L_b957
    L_b827:
        lda $05
        bne L_b850
        ldy $06
        lda L_b7cc,y
        sta $06
        dec $09
        bne L_b84b
        lda $ac
        sta $33
        sta $32
        lda #$08
        sta $e2
        jsr $2b40
        lda #$02
        sta $07
        lda #$04
        sta $06
    L_b84b:
        lda #$01
        jmp L_b852
    L_b850:
        lda #$00
    L_b852:
        sta $05
        jmp L_b957
    L_b857:
        lda $01
        clc 
        adc $03
        cmp #$be
        bcc L_b863
        jmp L_b914
    L_b863:
        lda $04
        beq L_b86f
        lda #$32
        sta $0321
        jmp L_b914
    L_b86f:
        inc $01
        inc $01
        inc $09
        lda #$02
        sta $05
        lda #$01
        sta $ad
        jsr $29a1
        lda $84
        bne L_b887
        jmp L_b945
    L_b887:
        jsr L_ad52
        jsr L_b967
        lda $7a
        beq L_b898
        lda #$01
        sta $04
        jmp L_b945
    L_b898:
        lda #$01
        sta $7b
        jsr L_ab6b
        lda $7a
        beq L_b8aa
        lda $33
        beq L_b914
        jmp L_b945
    L_b8aa:
        jsr L_bae3
        beq L_b8b2
        jmp L_b945
    L_b8b2:
        jsr $2b0a
        beq L_b8ba
        jmp L_b945
    L_b8ba:
        lda #$08
        sta $a7
        lda #$00
        sta $96
    L_b8c2:
        lda $86
        clc 
        adc #$02
        sta $86
        lda $83
        clc 
        adc #$02
        sta $83
        lda $00
        sta $85
        lda #$0f
        sta $88
        jsr $2a48
        lda $84
        bne L_b8ec
        inc $85
        lda #$f0
        sta $88
        jsr $2a48
        lda $84
        beq L_b90a
    L_b8ec:
        lda #$02
        sta $7b
        jsr L_ab6b
        lda $7a
        bne L_b90a
        jsr L_b967
        lda $7a
        bne L_b90a
        jsr L_bae3
        bne L_b90a
        jsr $2b0a
        bne L_b90a
        inc $96
    L_b90a:
        dec $a7
        bne L_b8c2
        lda $96
        cmp #$04
        bcc L_b93a
    L_b914:
        inc $42
        lda #$04
        sta $07
        lda #$05
        sta $09
        lda $18
        pha 
        lda $19
        pha 
        lda $03
        pha 
        lda #$01
        sta $2f
        jsr L_ade7
        pla 
        sta $03
        pla 
        sta $19
        pla 
        sta $18
        jmp L_b945
    L_b93a:
        lda $09
        cmp #$03
        bcc L_b945
        sta $0a
        jmp L_b949
    L_b945:
        lda #$00
        sta $0a
    L_b949:
        jmp L_b957
    L_b94c:
        dec $09
        bne L_b954
        lda #$0a
        sta $07
    L_b954:
        jmp L_b957
    L_b957:
        jsr L_b9cb
        lda $18
        cmp #$da
        beq L_b966
        jsr L_b9a5
        jmp L_b7d6
    L_b966:
        rts 


    L_b967:
        lda $0320
        clc 
        ldx $031f
        bne L_b975
        ldy $031e
        beq L_b977
    L_b975:
        adc #$04
    L_b977:
        tay 
        lda $031a
        asl 
        asl 
        clc 
        adc L_acd0 + $2,y
        adc #$ff
        sta $7e
        adc #$06
        sta $7c
        lda $031b
        sta $7d
        adc #$04
        sta $7f
        jsr L_abd6
        rts 


    L_b996:
        lda #$03
        sta $19
        txa 
        clc 
        adc #$1a
        bcc L_b9a2
        inc $19
    L_b9a2:
        sta $18
        rts 


    L_b9a5:
        lda $18
        clc 
        adc #$10
        bcc L_b9ae
        inc $19
    L_b9ae:
        sta $18
        rts 


    L_b9b1:
        ldy #$00
    L_b9b3:
        lda ($18),y
        sta.a $0000,y
        iny 
        cpy #$10
        bne L_b9b3
        rts 


    L_b9be:
        ldy #$00
    L_b9c0:
        lda ($18),y
        sta.a $0000,y
        iny 
        cpy #$07
        bne L_b9c0
        rts 


    L_b9cb:
        ldy #$00
    L_b9cd:
        lda.a $0000,y
        sta ($18),y
        iny 
        cpy #$10
        bne L_b9cd
        rts 


    L_b9d8:
        ldy #$04
    L_b9da:
        lda.a $007b,y
        sta.a $007f,y
        dey 
        bne L_b9da
        rts 


    L_b9e4:
        lda #$08
        sta $ac
        ldx #$10
        jsr L_b996
        ldy #$07
    L_b9ef:
        lda ($18),y
        cmp #$0b
        bne L_b9f7
        dec $ac
    L_b9f7:
        lda $18
        cmp #$9a
        beq L_ba03
        jsr L_b9a5
        jmp L_b9ef
    L_ba03:
        rts 


    L_ba04:
        jsr $ad71
        lda $1a
        cmp #$20
        bne L_ba1b
        jsr L_a2eb
        lda #$04
        sta $53
    L_ba14:
        lda $53
        cmp #$04
        beq L_ba14
        rts 


    L_ba1b:
        cmp #$27
        bne L_ba29
        lda #$03
        sta $53
        ldx #$ff
        txs 
        jmp L_a1ec + $e
    L_ba29:
        rts 



    L_ba2a:
         .byte $fb,$f7,$0f,$3f

    L_ba2e:
        ldy #$01
    L_ba30:
        lda L_ba2a,y
        sta $9120
        lda #$80
        bit $9121
        beq L_ba43
        dey 
        bmi L_ba5e
        jmp L_ba30
    L_ba43:
        lda #$ef
        sta $9120
        lda #$40
        ldx $9000,y
        bit $9121
        bne L_ba56
        dex 
        jmp L_ba57
    L_ba56:
        inx 
    L_ba57:
        txa 
        and L_ba2a + $2,y
        sta $9000,y
    L_ba5e:
        rts 



        .byte $00,$00,$eb,$04,$e9,$04,$e8,$04,$e7,$04,$e5,$04,$e4,$04,$f1,$04
        .byte $e1,$04,$df,$04,$dd,$04,$db,$04,$d9,$04,$d7,$04,$f0,$02,$f1,$02

    L_ba7f:
        beq L_ba83
        sbc ($02),y

    L_ba83:
         .byte $f0,$02,$00,$00,$00,$00
        .byte $ec,$04,$eb,$04,$ec,$04,$eb,$04,$d7,$04,$00,$04,$d7,$08,$00,$00
        .byte $00,$00,$e7,$08,$e8,$08,$e9,$08,$eb

    L_baa2:
        php 
        cpx $ed08
        php 
        inc $ef08
        php 

        .byte $f0,$20,$00,$10,$eb

    L_bab0:
        bpl L_baa2
        rti 

        .byte $00,$00,$00,$00,$e1,$08,$e4,$08,$e5,$08,$e7,$08,$e8,$08,$e9,$08
        .byte $eb,$10,$e7,$10,$e8,$10,$e7,$20,$e1,$40,$00,$00

    L_bacf:
        lda #$24
        sta $7c
        lda #$20
        sta $7e
        lda #$5f
        sta $7d
        lda #$6e
        sta $7f
        jsr L_abd6
        rts 


    L_bae3:
        lda $031f
        cmp #$02
        bne L_baed
        jmp L_bb32
    L_baed:
        cmp #$00
        beq L_bb08
        lda $95
        sta $7d
        lda $031b
        sta $7f
        lda $94
        asl 
        asl 
        sta $7e
        clc 
        adc #$04
        sta $7c
        jmp L_bb2f
    L_bb08:
        lda $95
        sta $7d
        clc 
        adc #$07
        sta $7f
        lda $94
        asl 
        asl 
        sta $7e
        lda $031a
        asl 
        asl 
        sta $7c
        lda $031e
        cmp #$01
        bne L_bb2f
        lda $7e
        ldx $7c
        stx $7e
        adc #$03
        sta $7c
    L_bb2f:
        jsr L_abd6
    L_bb32:
        rts 


    L_bb33:
        lda #$00
        sta $90
        lda $91
        sta $06
        lda $031f
        asl 
        bne L_bb44
        lda $031e
    L_bb44:
        sta $04
        lda $bf
        sta $93
        lda $94
        sta $00
        lda $95
        sta $01
        rts 


    L_bb53:
        jsr L_bb33
        lda $0321
        cmp #$03
        bcc L_bb63
        jsr L_bda3
        jmp L_bbd7
    L_bb63:
        lda $0321
        cmp #$02
        beq L_bb79
        lda $8d
        beq L_bb86
        lda $bf
        beq L_bb75
        jsr L_bda3
    L_bb75:
        lda $8a
        bne L_bb7c
    L_bb79:
        jmp L_bbd7
    L_bb7c:
        lda #$00
        sta $8a
        jsr $3fa3
        jmp L_bbe6
    L_bb86:
        lda $bf
        beq L_bb9c
        lda $b1
        cmp #$ff
        beq L_bb96
        jsr L_bda3
        jmp L_bb99
    L_bb96:
        jsr L_bc9d
    L_bb99:
        jmp L_bbe6
    L_bb9c:
        lda #$00
        sta $9c
        lda $04
        cmp #$02
        bcs L_bbc6
        asl 
        asl 
        asl 
        clc 
        adc $0320
        clc 
        adc $0320
        clc 
        adc #$0a
        sta $98
        sta $b2
        lda #$bf
        adc #$00
        sta $99
        sta $b3
        jsr L_bbea
        jmp L_bbc9
    L_bbc6:
        jsr L_bc2c
    L_bbc9:
        lda #$00
        sta $06
        lda #$01
        sta $93
        jsr L_bc9d
        jmp L_bbe6
    L_bbd7:
        inc $9c
        lda $9c
        cmp #$0a
        bne L_bbe6
        lda #$00
        sta $9c
        jsr $3fa3
    L_bbe6:
        jsr L_a7e7
        rts 


    L_bbea:
        lda $031a
        ldx $04
        beq L_bbf4
        clc 
        adc #$01
    L_bbf4:
        sta $00
        lda #$01
        sta $02
        lda #$02
        sta $03
        lda $031b
        clc 
        adc #$09
        sta $01
        jsr $2061
        lda $01
        sec 
        sbc #$05
        sta $01
        lda #$f2
        sta $9a
        lda #$be
        sta $9b
        lda #$bf
        sta $a2
        lda #$0a
        ldx $04
        bne L_bc29
        clc 
        adc #$08
        bcc L_bc29
        inc $a2
    L_bc29:
        sta $a1
        rts 


    L_bc2c:
        lda $031a
        sta $00
        lda $031b
        ldx $04
        cpx #$02
        beq L_bc40
        clc 
        adc #$06
        jmp L_bc43
    L_bc40:
        clc 
        adc #$02
    L_bc43:
        sta $01
        lda #$fa
        sta $9a
        lda #$be
        sta $9b
        lda #$1a
        sta $a1
        lda #$bf
        sta $a2
        rts 


    L_bc56:
        lda $9a
        sta $b2
        lda $9b
        sta $b3
        lda #$01
        sta $02
        lda $04
        cmp #$02
        bcc L_bc6a
        inc $02
    L_bc6a:
        lda #$08
        sta $03
        jsr $2061
        rts 


    L_bc72:
        lda $04
        cmp #$02
        beq L_bc8a
        bcs L_bc92
        cmp #$00
        beq L_bc87
        inc $00
        lda $00
        cmp #$14
        bcs L_bc9a
        rts 


    L_bc87:
        dec $00
        rts 


    L_bc8a:
        lda $01
        sec 
        sbc #$08
        sta $01
        rts 


    L_bc92:
        lda $01
        clc 
        adc #$08
        sta $01
        rts 


    L_bc9a:
        lda #$ff
        rts 


    L_bc9d:
        lda $06
        cmp #$04
        bcc L_bca6
        jmp L_bd94
    L_bca6:
        inc $06
        jsr L_bc72
        cmp #$ff
        bne L_bcb5
        jsr L_bc56
        jmp L_bd94
    L_bcb5:
        lda $00
        sta $85
        lda $01
        sta $86
        lda $04
        cmp #$02
        bcs L_bcce
        lda #$04
        sta $87
        lda #$ff
        sta $88
        jmp L_bce3
    L_bcce:
        lda #$08
        sta $87
        lda #$3f
        sta $88
        jsr $2a48
        lda $84
        bne L_bcf1
        inc $85
        lda #$fc
        sta $88
    L_bce3:
        jsr $2a48
        lda $90
        beq L_bced
        jmp L_bd68
    L_bced:
        lda $84
        beq L_bd2e
    L_bcf1:
        lda #$00
        sta $16
        sta $17
        sta $05
        lda #$05
        sta $08
        jsr L_abf8
        jsr L_acb0
        jsr L_b9d8
        lda $04
        cmp #$02
        bcc L_bd15
        lda $82
        clc 
        adc #$06
        sta $82
        sta $80
    L_bd15:
        lda #$00
        sta $7b
        jsr L_ab6b
        lda $7a
        bne L_bd3b
        jsr L_bacf
        bne L_bd2e
        jsr L_bc56
        jsr L_bda3
        jmp L_bd97
    L_bd2e:
        lda #$01
        sta $e0
        jsr $2b40
        jsr L_bc56
        jmp L_bd97
    L_bd3b:
        jsr L_beba
        ldx $0183
        stx $b1
        lda $16
        sta $cc,x
        sta $9f
        lda $17
        sta $d2,x
        sta $a0
        lda #$01
        sta $c0,x
        sta $b9
        lda $c6,x
        clc 
        adc #$01
        sta $c6,x
        sta $97
        lda #$02
        sta $d8,x
        jsr L_be54
        jmp L_bd97
    L_bd68:
        lda $84
        beq L_bd98
        lda #$00
        sta $16
        sta $17
        lda #$06
        sta $08
        jsr L_abf8
        jsr L_acb0
        jsr L_b9d8
        jsr L_abc0
        lda $7a
        beq L_bd8b
        lda #$32
        sta $0321
    L_bd8b:
        jsr L_bfd0
        jsr L_bda3
        jmp L_bd97
    L_bd94:
        jsr L_bda3
    L_bd97:
        rts 


    L_bd98:
        lda #$02
        sta $e0
        jsr $2b40
        jsr L_bfd0
        rts 


    L_bda3:
        lda $93
        bne L_bda8
        rts 


    L_bda8:
        lda $04
        cmp #$02
        bcc L_bdb3
        eor #$06
        jmp L_bdb5
    L_bdb3:
        eor #$01
    L_bdb5:
        sta $04
        lda $90
        bne L_be0c
        lda $b1
        cmp #$ff
        beq L_bdcf
        jsr L_beba
        lda $06
        beq L_bde3
        jsr L_bc72
        dec $06
        beq L_bde3
    L_bdcf:
        lda $06
        bne L_bdd9
        jsr L_bc72
        jmp L_bde3
    L_bdd9:
        jsr L_bc56
        jsr L_bc72
        dec $06
        bne L_bdd9
    L_bde3:
        lda $04
        cmp #$02
        bcs L_be4b
        lda #$01
        sta $02
        lda #$02
        sta $03
        lda $01
        clc 
        adc #$05
        sta $01
        lda $98
        sta $b2
        lda $99
        sta $b3
        jsr $2061
        jmp L_be4b

    L_be06:
         .byte $00,$02,$04
        .byte $06,$08,$0a

    L_be0c:
        lda #$00
        sta $74
        jsr L_bfd0
        jsr L_bc72
        dec $06
        bne L_be0c
        lda #$00
        ldx $a8
    L_be1e:
        clc 
        adc #$10
        dex 
        bne L_be1e
        tax 
        jsr L_b996
        ldy #$07
        lda ($18),y
        cmp #$09
        bne L_be34
        lda #$01
        sta ($18),y
    L_be34:
        dec $a8
        bne L_be3c
        lda $a9
        sta $a8
    L_be3c:
        lda $ab
        ldy $e3
        sec 
        sbc L_be06,y
        sta $aa
        lda #$00
        sta $93
        rts 


    L_be4b:
        lda #$00
        sta $93
        lda #$ff
        sta $b1
        rts 


    L_be54:
        lda $97
        cmp #$05
        bne L_be82
        lda #$04
        sta $e1
        jsr $2b40
        lda #$00
        sta $2f
        ldy #$08
        lda ($9f),y
        sta $31
        ldy #$01
        lda ($9f),y
        lsr 
        lsr 
        lsr 
        lsr 
        sta $30
        jsr L_ade7
        jsr L_bda3
        lda #$00
        sta $b9
        jmp L_be8d
    L_be82:
        cmp #$00
        bne L_be8d
        jsr L_bda3
        lda #$00
        sta $b9
    L_be8d:
        ldy #$07
        lda ($9f),y
        cmp #$0a
        bcs L_beb9
        beq L_be9e
        lda #$04
        sta $e1
        jsr $2b40
    L_be9e:
        ldx $97
        lda L_beec,x
        sta ($9f),y
        ldx #$02
        cmp #$01
        bne L_beb4
        ldy #$06
        lda ($9f),y
        cmp #$02
        bne L_beb4
        inx 
    L_beb4:
        ldy #$02
        txa 
        sta ($9f),y
    L_beb9:
        rts 


    L_beba:
        lda #$01
        sta $02
        lda $a1
        sta $b2
        lda $a2
        sta $b3
        lda $01
        sta $0180
        lda $04
        cmp #$02
        bcc L_bed8
        inc $02
        lda #$07
        jmp L_bee1
    L_bed8:
        lda $01
        clc 
        adc #$05
        sta $01
        lda #$02
    L_bee1:
        sta $03
        jsr $2061
        lda $0180
        sta $01
        rts 



    L_beec:
         .byte $01,$03,$04
        .byte $05,$06,$0a,$00,$00,$30,$3c,$fc,$cf,$03,$00,$00,$00,$00,$0f,$0c
        .byte $0f,$03,$00,$c0,$f0,$30,$f0,$00,$00,$c0,$c0,$fc,$fc,$f0,$f0,$c0
        .byte $c0,$00,$00,$3f,$3f,$0f,$0f,$03,$03,$00,$00,$00,$00,$00,$00,$00
        .byte $00

    L_bf20:
        .byte $00,$30,$30,$30,$30,$30,$30,$30,$a5
        .byte $bd,$f0,$0a,$20,$a6,$bf,$20,$9d,$bc

    L_bf32:
        jsr L_bfbf
        rts 


        lda $ac
        cmp #$01
        bne L_bf3d
        rts 


    L_bf3d:
        lda #$00
        ldx $a8
    L_bf41:
        clc 
        adc #$10
        dex 
        bne L_bf41
        tax 
        jsr L_b996
        jsr L_b9b1
        lda $07
        cmp #$01
        beq L_bf5f
        dec $a8
        bne L_bf9c
        lda $a9
        sta $a8
        jmp L_bf9c
    L_bf5f:
        lda $06
        cmp #$01
        bne L_bf9c
        lda $05
        bne L_bf9c
        lda $aa
        bne L_bf9c
        lda #$09
        sta $07
        lda #$01
        sta $bd
        jsr L_b9cb
        lda #$00
        sta $a3
        ldx $04
        stx $a4
        lda $00
        cpx #$00
        beq L_bf89
        clc 
        adc #$01
    L_bf89:
        sta $a5
        lda $01
        clc 
        adc #$01
        sta $a6
        jsr L_bfa6
        jsr L_bc9d
        jsr L_bfbf
        rts 


    L_bf9c:
        lda $aa
        beq L_bfa5
        sec 
        sbc #$01
        sta $aa
    L_bfa5:
        rts 


    L_bfa6:
        lda #$01
        sta $90
        lda $a3
        sta $06
        lda $a4
        sta $04
        lda $a5
        sta $00
        lda $a6
        sta $01
    L_bfba:
        lda $bd
        sta $93
        rts 


    L_bfbf:
        lda $93
        sta $bd
        lda $06
        sta $a3
        lda $00
        sta $a5
        lda $01
        sta $a6
        rts 


    L_bfd0:
        lda $a4
        bne L_bfdd
        lda #$f1
        sta $b2
        lda #$bf
        jmp L_bfe3
    L_bfdd:
        lda #$67
        sta $b2
        lda #$3f
    L_bfe3:
        sta $b3
        lda #$01
        sta $02
        lda #$09
        sta $03
        jsr $2061
        rts 



       .byte $c0,$30,$33,$ff,$fc

