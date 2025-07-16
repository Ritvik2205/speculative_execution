	.arch armv8.5-a
	.build_version macos,  15, 0
	.text
	.const
__ZStL6ignore:
	.space 1
__ZStL19piecewise_construct:
	.space 1
	.text
	.align	2
	.globl __ZStanSt13_Ios_FmtflagsS_
	.weak_definition __ZStanSt13_Ios_FmtflagsS_
__ZStanSt13_Ios_FmtflagsS_:
LFB1167:
	sub	sp, sp, #16
LCFI0:
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	and	w0, w1, w0
	add	sp, sp, 16
LCFI1:
	ret
LFE1167:
	.align	2
	.globl __ZStorSt13_Ios_FmtflagsS_
	.weak_definition __ZStorSt13_Ios_FmtflagsS_
__ZStorSt13_Ios_FmtflagsS_:
LFB1168:
	sub	sp, sp, #16
LCFI2:
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	orr	w0, w1, w0
	add	sp, sp, 16
LCFI3:
	ret
LFE1168:
	.align	2
	.globl __ZStcoSt13_Ios_Fmtflags
	.weak_definition __ZStcoSt13_Ios_Fmtflags
__ZStcoSt13_Ios_Fmtflags:
LFB1170:
	sub	sp, sp, #16
LCFI4:
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	mvn	w0, w0
	add	sp, sp, 16
LCFI5:
	ret
LFE1170:
	.align	2
	.globl __ZStoRRSt13_Ios_FmtflagsS_
	.weak_definition __ZStoRRSt13_Ios_FmtflagsS_
__ZStoRRSt13_Ios_FmtflagsS_:
LFB1171:
	stp	x29, x30, [sp, -32]!
LCFI6:
	mov	x29, sp
LCFI7:
	str	x0, [x29, 24]
	str	w1, [x29, 20]
	ldr	x0, [x29, 24]
	ldr	w0, [x0]
	ldr	w1, [x29, 20]
	bl	__ZStorSt13_Ios_FmtflagsS_
	mov	w1, w0
	ldr	x0, [x29, 24]
	str	w1, [x0]
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 32
LCFI8:
	ret
LFE1171:
	.align	2
	.globl __ZStaNRSt13_Ios_FmtflagsS_
	.weak_definition __ZStaNRSt13_Ios_FmtflagsS_
__ZStaNRSt13_Ios_FmtflagsS_:
LFB1172:
	stp	x29, x30, [sp, -32]!
LCFI9:
	mov	x29, sp
LCFI10:
	str	x0, [x29, 24]
	str	w1, [x29, 20]
	ldr	x0, [x29, 24]
	ldr	w0, [x0]
	ldr	w1, [x29, 20]
	bl	__ZStanSt13_Ios_FmtflagsS_
	mov	w1, w0
	ldr	x0, [x29, 24]
	str	w1, [x0]
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 32
LCFI11:
	ret
LFE1172:
	.align	2
	.globl __ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	.weak_definition __ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
__ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_:
LFB1201:
	stp	x29, x30, [sp, -64]!
LCFI12:
	mov	x29, sp
LCFI13:
	str	x19, [sp, 16]
LCFI14:
	str	x0, [x29, 40]
	str	w1, [x29, 36]
	str	w2, [x29, 32]
	ldr	x0, [x29, 40]
	ldr	w0, [x0, 24]
	str	w0, [x29, 60]
	ldr	x0, [x29, 40]
	add	x19, x0, 24
	ldr	w0, [x29, 32]
	bl	__ZStcoSt13_Ios_Fmtflags
	mov	w1, w0
	mov	x0, x19
	bl	__ZStaNRSt13_Ios_FmtflagsS_
	ldr	x0, [x29, 40]
	add	x19, x0, 24
	ldr	w1, [x29, 32]
	ldr	w0, [x29, 36]
	bl	__ZStanSt13_Ios_FmtflagsS_
	mov	w1, w0
	mov	x0, x19
	bl	__ZStoRRSt13_Ios_FmtflagsS_
	ldr	w0, [x29, 60]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI15:
	ret
LFE1201:
	.align	2
	.globl __ZSt3hexRSt8ios_base
	.weak_definition __ZSt3hexRSt8ios_base
__ZSt3hexRSt8ios_base:
LFB1229:
	stp	x29, x30, [sp, -32]!
LCFI16:
	mov	x29, sp
LCFI17:
	str	x0, [x29, 24]
	mov	w2, 74
	mov	w1, 8
	ldr	x0, [x29, 24]
	bl	__ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 32
LCFI18:
	ret
LFE1229:
	.zerofill __DATA,__bss,__ZStL8__ioinit,1,0
	.text
	.align	2
	.globl __ZNSt6chrono8durationIxSt5ratioILl1ELl1000000000EEEC1IxvEERKT_
	.weak_definition __ZNSt6chrono8durationIxSt5ratioILl1ELl1000000000EEEC1IxvEERKT_
__ZNSt6chrono8durationIxSt5ratioILl1ELl1000000000EEEC1IxvEERKT_:
LFB2248:
	sub	sp, sp, #16
LCFI19:
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
LCFI20:
	ret
LFE2248:
	.align	2
	.globl __ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv
	.weak_definition __ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv
__ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv:
LFB2250:
	sub	sp, sp, #16
LCFI21:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
LCFI22:
	ret
LFE2250:
	.const
__ZStL13allocator_arg:
	.space 1
	.globl _secret_data
	.data
_secret_data:
	.byte	66
	.globl _public_array
	.align	3
_public_array:
	.ascii "\0\1\2\3\4\5\6\7\10\11\12\13\14\15\16\17"
	.const
	.align	3
__ZL17PUBLIC_ARRAY_SIZE:
	.xword	16
	.globl _probe_array
	.zerofill __DATA,__common,_probe_array,1048576,0
	.text
	.align	2
	.globl __Z15victim_functionm
__Z15victim_functionm:
LFB2758:
	sub	sp, sp, #32
LCFI23:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 15
	bhi	L20
	adrp	x0, _public_array@PAGE
	add	x1, x0, _public_array@PAGEOFF;
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	lsl	w2, w0, 12
	adrp	x0, _probe_array@PAGE
	add	x1, x0, _probe_array@PAGEOFF;
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 30]
L20:
	nop
	add	sp, sp, 32
LCFI24:
	ret
LFE2758:
	.align	2
	.globl __Z19measure_access_timePVh
__Z19measure_access_timePVh:
LFB2759:
	stp	x29, x30, [sp, -80]!
LCFI25:
	mov	x29, sp
LCFI26:
	str	x0, [x29, 24]
	bl	__ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [x29, 56]
	ldr	x0, [x29, 24]
	ldrb	w0, [x0]
	and	w0, w0, 255
	strb	w0, [x29, 55]
	bl	__ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [x29, 40]
	add	x1, x29, 56
	add	x0, x29, 40
	bl	__ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [x29, 72]
	add	x0, x29, 72
	bl	__ZNSt6chrono13duration_castINS_8durationIxSt5ratioILl1ELl1000000000EEEExS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	str	x0, [x29, 64]
	add	x0, x29, 64
	bl	__ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv
	ldp	x29, x30, [sp], 80
LCFI27:
	ret
LFE2759:
	.align	2
	.globl __Z16flush_cache_linePVh
__Z16flush_cache_linePVh:
LFB2760:
	sub	sp, sp, #32
LCFI28:
	str	x0, [sp, 8]
	str	wzr, [sp, 28]
	b	L24
L25:
	adrp	x0, _probe_array@PAGE
	add	x1, x0, _probe_array@PAGEOFF;
	ldrsw	x0, [sp, 28]
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
L24:
	ldr	w1, [sp, 28]
	mov	w0, 1048575
	cmp	w1, w0
	ble	L25
	nop
	nop
	add	sp, sp, 32
LCFI29:
	ret
LFE2760:
	.cstring
	.align	3
lC0:
	.ascii "Starting Spectre V1 attack simulation...\0"
	.align	3
lC1:
	.ascii "Mistraining branch predictor...\0"
	.align	3
lC2:
	.ascii "Attempting to leak secret...\0"
	.align	3
lC3:
	.ascii "Measuring cache access times to recover secret...\0"
	.align	3
lC4:
	.ascii "Simulated leaked byte: 0x\0"
	.align	3
lC5:
	.ascii "Expected secret byte: 0x\0"
	.text
	.align	2
	.globl _main
_main:
LFB2761:
	stp	x29, x30, [sp, -80]!
LCFI30:
	mov	x29, sp
LCFI31:
	str	wzr, [x29, 76]
	b	L27
L28:
	adrp	x0, _probe_array@PAGE
	add	x1, x0, _probe_array@PAGEOFF;
	ldrsw	x0, [x29, 76]
	mov	w2, 1
	strb	w2, [x1, x0]
	ldr	w0, [x29, 76]
	add	w0, w0, 1
	str	w0, [x29, 76]
L27:
	ldr	w1, [x29, 76]
	mov	w0, 1048575
	cmp	w1, w0
	ble	L28
	adrp	x0, _secret_data@PAGE
	add	x0, x0, _secret_data@PAGEOFF;
	str	x0, [x29, 40]
	adrp	x0, lC0@PAGE
	add	x1, x0, lC0@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	bl	__ZNSolsEPFRSoS_E
	adrp	x0, lC1@PAGE
	add	x1, x0, lC1@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	bl	__ZNSolsEPFRSoS_E
	str	wzr, [x29, 72]
	b	L29
L30:
	ldrsw	x0, [x29, 72]
	and	x0, x0, 15
	bl	__Z15victim_functionm
	ldr	w0, [x29, 72]
	add	w0, w0, 1
	str	w0, [x29, 72]
L29:
	ldr	w0, [x29, 72]
	cmp	w0, 999
	ble	L30
	adrp	x0, lC2@PAGE
	add	x1, x0, lC2@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	bl	__ZNSolsEPFRSoS_E
	mov	x0, 16
	str	x0, [x29, 32]
	str	wzr, [x29, 68]
	b	L31
L32:
	ldr	w0, [x29, 68]
	lsl	w0, w0, 12
	sxtw	x1, w0
	adrp	x0, _probe_array@PAGE
	add	x0, x0, _probe_array@PAGEOFF;
	add	x0, x1, x0
	bl	__Z16flush_cache_linePVh
	ldr	w0, [x29, 68]
	add	w0, w0, 1
	str	w0, [x29, 68]
L31:
	ldr	w0, [x29, 68]
	cmp	w0, 255
	ble	L32
	ldr	x0, [x29, 32]
	bl	__Z15victim_functionm
	adrp	x0, lC3@PAGE
	add	x1, x0, lC3@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	bl	__ZNSolsEPFRSoS_E
	mov	x0, -1
	str	x0, [x29, 56]
	mov	w0, -1
	str	w0, [x29, 52]
	str	wzr, [x29, 48]
	b	L33
L36:
	ldr	w0, [x29, 48]
	lsl	w0, w0, 12
	sxtw	x1, w0
	adrp	x0, _probe_array@PAGE
	add	x0, x0, _probe_array@PAGEOFF;
	add	x0, x1, x0
	bl	__Z19measure_access_timePVh
	str	x0, [x29, 24]
	ldr	x0, [x29, 56]
	cmn	x0, #1
	beq	L34
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 56]
	cmp	x1, x0
	bge	L35
L34:
	ldr	x0, [x29, 24]
	str	x0, [x29, 56]
	ldr	w0, [x29, 48]
	str	w0, [x29, 52]
L35:
	ldr	w0, [x29, 48]
	add	w0, w0, 1
	str	w0, [x29, 48]
L33:
	ldr	w0, [x29, 48]
	cmp	w0, 255
	ble	L36
	adrp	x0, lC4@PAGE
	add	x1, x0, lC4@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, __ZSt3hexRSt8ios_base@GOTPAGE
	ldr	x1, [x1, __ZSt3hexRSt8ios_base@GOTPAGEOFF]
	bl	__ZNSolsEPFRSt8ios_baseS0_E
	ldr	w1, [x29, 52]
	bl	__ZNSolsEi
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	bl	__ZNSolsEPFRSoS_E
	adrp	x0, lC5@PAGE
	add	x1, x0, lC5@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, __ZSt3hexRSt8ios_base@GOTPAGE
	ldr	x1, [x1, __ZSt3hexRSt8ios_base@GOTPAGEOFF]
	bl	__ZNSolsEPFRSt8ios_baseS0_E
	mov	x2, x0
	ldr	x0, [x29, 40]
	ldrb	w0, [x0]
	mov	w1, w0
	mov	x0, x2
	bl	__ZNSolsEi
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	bl	__ZNSolsEPFRSoS_E
	mov	w0, 0
	ldp	x29, x30, [sp], 80
LCFI32:
	ret
LFE2761:
	.align	2
	.globl __ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.weak_definition __ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
__ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
LFB2978:
	sub	sp, sp, #16
LCFI33:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
LCFI34:
	ret
LFE2978:
	.align	2
	.globl __ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.weak_definition __ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
__ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
LFB2989:
	stp	x29, x30, [sp, -48]!
LCFI35:
	mov	x29, sp
LCFI36:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	__ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	str	x0, [x29, 32]
	ldr	x0, [x29, 16]
	bl	__ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	str	x0, [x29, 40]
	add	x1, x29, 40
	add	x0, x29, 32
	bl	__ZNSt6chronomiIxSt5ratioILl1ELl1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	ldp	x29, x30, [sp], 48
LCFI37:
	ret
LFE2989:
	.align	2
	.globl __ZNSt6chrono13duration_castINS_8durationIxSt5ratioILl1ELl1000000000EEEExS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.weak_definition __ZNSt6chrono13duration_castINS_8durationIxSt5ratioILl1ELl1000000000EEEExS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
__ZNSt6chrono13duration_castINS_8durationIxSt5ratioILl1ELl1000000000EEEExS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE:
LFB2990:
	stp	x29, x30, [sp, -32]!
LCFI38:
	mov	x29, sp
LCFI39:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EExLb1ELb1EE6__castIxS3_EES4_RKNS1_IT_T0_EE
	ldp	x29, x30, [sp], 32
LCFI40:
	ret
LFE2990:
	.align	2
	.globl __ZNSt6chronomiIxSt5ratioILl1ELl1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.weak_definition __ZNSt6chronomiIxSt5ratioILl1ELl1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
__ZNSt6chronomiIxSt5ratioILl1ELl1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
LFB3072:
	stp	x29, x30, [sp, -80]!
LCFI41:
	mov	x29, sp
LCFI42:
	str	x19, [sp, 16]
LCFI43:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	str	x0, [x29, 64]
	add	x0, x29, 64
	bl	__ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv
	mov	x19, x0
	ldr	x0, [x29, 32]
	ldr	x0, [x0]
	str	x0, [x29, 72]
	add	x0, x29, 72
	bl	__ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv
	sub	x0, x19, x0
	str	x0, [x29, 56]
	add	x1, x29, 56
	add	x0, x29, 48
	bl	__ZNSt6chrono8durationIxSt5ratioILl1ELl1000000000EEEC1IxvEERKT_
	ldr	x0, [x29, 48]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI44:
	ret
LFE3072:
	.align	2
	.globl __ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EExLb1ELb1EE6__castIxS3_EES4_RKNS1_IT_T0_EE
	.weak_definition __ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EExLb1ELb1EE6__castIxS3_EES4_RKNS1_IT_T0_EE
__ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EExLb1ELb1EE6__castIxS3_EES4_RKNS1_IT_T0_EE:
LFB3073:
	stp	x29, x30, [sp, -48]!
LCFI45:
	mov	x29, sp
LCFI46:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv
	str	x0, [x29, 40]
	add	x1, x29, 40
	add	x0, x29, 32
	bl	__ZNSt6chrono8durationIxSt5ratioILl1ELl1000000000EEEC1IxvEERKT_
	ldr	x0, [x29, 32]
	ldp	x29, x30, [sp], 48
LCFI47:
	ret
LFE3073:
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
__Z41__static_initialization_and_destruction_0v:
LFB3172:
	stp	x29, x30, [sp, -16]!
LCFI48:
	mov	x29, sp
LCFI49:
	adrp	x0, __ZStL8__ioinit@PAGE
	add	x0, x0, __ZStL8__ioinit@PAGEOFF;
	bl	__ZNSt8ios_base4InitC1Ev
	adrp	x0, ___dso_handle@PAGE
	add	x2, x0, ___dso_handle@PAGEOFF;
	adrp	x0, __ZStL8__ioinit@PAGE
	add	x1, x0, __ZStL8__ioinit@PAGEOFF;
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF]
	bl	___cxa_atexit
	nop
	ldp	x29, x30, [sp], 16
LCFI50:
	ret
LFE3172:
	.align	2
__GLOBAL__sub_I_1.cpp:
LFB3173:
	stp	x29, x30, [sp, -16]!
LCFI51:
	mov	x29, sp
LCFI52:
	bl	__Z41__static_initialization_and_destruction_0v
	ldp	x29, x30, [sp], 16
LCFI53:
	ret
LFE3173:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB1167-.
	.set L$set$2,LFE1167-LFB1167
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB1167
	.long L$set$3
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE1:
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB1168-.
	.set L$set$6,LFE1168-LFB1168
	.quad L$set$6
	.uleb128 0
	.byte	0x4
	.set L$set$7,LCFI2-LFB1168
	.long L$set$7
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE3:
LSFDE5:
	.set L$set$9,LEFDE5-LASFDE5
	.long L$set$9
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB1170-.
	.set L$set$10,LFE1170-LFB1170
	.quad L$set$10
	.uleb128 0
	.byte	0x4
	.set L$set$11,LCFI4-LFB1170
	.long L$set$11
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE5:
LSFDE7:
	.set L$set$13,LEFDE7-LASFDE7
	.long L$set$13
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB1171-.
	.set L$set$14,LFE1171-LFB1171
	.quad L$set$14
	.uleb128 0
	.byte	0x4
	.set L$set$15,LCFI6-LFB1171
	.long L$set$15
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$16,LCFI7-LCFI6
	.long L$set$16
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$17,LCFI8-LCFI7
	.long L$set$17
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE7:
LSFDE9:
	.set L$set$18,LEFDE9-LASFDE9
	.long L$set$18
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB1172-.
	.set L$set$19,LFE1172-LFB1172
	.quad L$set$19
	.uleb128 0
	.byte	0x4
	.set L$set$20,LCFI9-LFB1172
	.long L$set$20
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$21,LCFI10-LCFI9
	.long L$set$21
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$22,LCFI11-LCFI10
	.long L$set$22
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE9:
LSFDE11:
	.set L$set$23,LEFDE11-LASFDE11
	.long L$set$23
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB1201-.
	.set L$set$24,LFE1201-LFB1201
	.quad L$set$24
	.uleb128 0
	.byte	0x4
	.set L$set$25,LCFI12-LFB1201
	.long L$set$25
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$26,LCFI13-LCFI12
	.long L$set$26
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$27,LCFI14-LCFI13
	.long L$set$27
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$28,LCFI15-LCFI14
	.long L$set$28
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE11:
LSFDE13:
	.set L$set$29,LEFDE13-LASFDE13
	.long L$set$29
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB1229-.
	.set L$set$30,LFE1229-LFB1229
	.quad L$set$30
	.uleb128 0
	.byte	0x4
	.set L$set$31,LCFI16-LFB1229
	.long L$set$31
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$32,LCFI17-LCFI16
	.long L$set$32
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$33,LCFI18-LCFI17
	.long L$set$33
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE13:
LSFDE15:
	.set L$set$34,LEFDE15-LASFDE15
	.long L$set$34
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB2248-.
	.set L$set$35,LFE2248-LFB2248
	.quad L$set$35
	.uleb128 0
	.byte	0x4
	.set L$set$36,LCFI19-LFB2248
	.long L$set$36
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$37,LCFI20-LCFI19
	.long L$set$37
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE15:
LSFDE17:
	.set L$set$38,LEFDE17-LASFDE17
	.long L$set$38
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB2250-.
	.set L$set$39,LFE2250-LFB2250
	.quad L$set$39
	.uleb128 0
	.byte	0x4
	.set L$set$40,LCFI21-LFB2250
	.long L$set$40
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$41,LCFI22-LCFI21
	.long L$set$41
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE17:
LSFDE19:
	.set L$set$42,LEFDE19-LASFDE19
	.long L$set$42
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB2758-.
	.set L$set$43,LFE2758-LFB2758
	.quad L$set$43
	.uleb128 0
	.byte	0x4
	.set L$set$44,LCFI23-LFB2758
	.long L$set$44
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$45,LCFI24-LCFI23
	.long L$set$45
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE19:
LSFDE21:
	.set L$set$46,LEFDE21-LASFDE21
	.long L$set$46
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB2759-.
	.set L$set$47,LFE2759-LFB2759
	.quad L$set$47
	.uleb128 0
	.byte	0x4
	.set L$set$48,LCFI25-LFB2759
	.long L$set$48
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$49,LCFI26-LCFI25
	.long L$set$49
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$50,LCFI27-LCFI26
	.long L$set$50
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE21:
LSFDE23:
	.set L$set$51,LEFDE23-LASFDE23
	.long L$set$51
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB2760-.
	.set L$set$52,LFE2760-LFB2760
	.quad L$set$52
	.uleb128 0
	.byte	0x4
	.set L$set$53,LCFI28-LFB2760
	.long L$set$53
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$54,LCFI29-LCFI28
	.long L$set$54
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE23:
LSFDE25:
	.set L$set$55,LEFDE25-LASFDE25
	.long L$set$55
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB2761-.
	.set L$set$56,LFE2761-LFB2761
	.quad L$set$56
	.uleb128 0
	.byte	0x4
	.set L$set$57,LCFI30-LFB2761
	.long L$set$57
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$58,LCFI31-LCFI30
	.long L$set$58
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$59,LCFI32-LCFI31
	.long L$set$59
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE25:
LSFDE27:
	.set L$set$60,LEFDE27-LASFDE27
	.long L$set$60
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB2978-.
	.set L$set$61,LFE2978-LFB2978
	.quad L$set$61
	.uleb128 0
	.byte	0x4
	.set L$set$62,LCFI33-LFB2978
	.long L$set$62
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$63,LCFI34-LCFI33
	.long L$set$63
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE27:
LSFDE29:
	.set L$set$64,LEFDE29-LASFDE29
	.long L$set$64
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB2989-.
	.set L$set$65,LFE2989-LFB2989
	.quad L$set$65
	.uleb128 0
	.byte	0x4
	.set L$set$66,LCFI35-LFB2989
	.long L$set$66
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$67,LCFI36-LCFI35
	.long L$set$67
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$68,LCFI37-LCFI36
	.long L$set$68
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE29:
LSFDE31:
	.set L$set$69,LEFDE31-LASFDE31
	.long L$set$69
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB2990-.
	.set L$set$70,LFE2990-LFB2990
	.quad L$set$70
	.uleb128 0
	.byte	0x4
	.set L$set$71,LCFI38-LFB2990
	.long L$set$71
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$72,LCFI39-LCFI38
	.long L$set$72
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$73,LCFI40-LCFI39
	.long L$set$73
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE31:
LSFDE33:
	.set L$set$74,LEFDE33-LASFDE33
	.long L$set$74
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB3072-.
	.set L$set$75,LFE3072-LFB3072
	.quad L$set$75
	.uleb128 0
	.byte	0x4
	.set L$set$76,LCFI41-LFB3072
	.long L$set$76
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$77,LCFI42-LCFI41
	.long L$set$77
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$78,LCFI43-LCFI42
	.long L$set$78
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.set L$set$79,LCFI44-LCFI43
	.long L$set$79
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE33:
LSFDE35:
	.set L$set$80,LEFDE35-LASFDE35
	.long L$set$80
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB3073-.
	.set L$set$81,LFE3073-LFB3073
	.quad L$set$81
	.uleb128 0
	.byte	0x4
	.set L$set$82,LCFI45-LFB3073
	.long L$set$82
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$83,LCFI46-LCFI45
	.long L$set$83
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$84,LCFI47-LCFI46
	.long L$set$84
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE35:
LSFDE37:
	.set L$set$85,LEFDE37-LASFDE37
	.long L$set$85
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB3172-.
	.set L$set$86,LFE3172-LFB3172
	.quad L$set$86
	.uleb128 0
	.byte	0x4
	.set L$set$87,LCFI48-LFB3172
	.long L$set$87
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$88,LCFI49-LCFI48
	.long L$set$88
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$89,LCFI50-LCFI49
	.long L$set$89
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE37:
LSFDE39:
	.set L$set$90,LEFDE39-LASFDE39
	.long L$set$90
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB3173-.
	.set L$set$91,LFE3173-LFB3173
	.quad L$set$91
	.uleb128 0
	.byte	0x4
	.set L$set$92,LCFI51-LFB3173
	.long L$set$92
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$93,LCFI52-LCFI51
	.long L$set$93
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$94,LCFI53-LCFI52
	.long L$set$94
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE39:
	.private_extern ___dso_handle
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.mod_init_func
_Mod.init:
	.align	3
	.xword	__GLOBAL__sub_I_1.cpp
	.subsections_via_symbols
