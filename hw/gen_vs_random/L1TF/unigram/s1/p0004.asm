.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, sil
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 61
xor edi, 48
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 78
movsx rcx, al
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and esi, edx
sbb dil, al
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
add al, -67 # instrumentation
setz dil
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 46
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
