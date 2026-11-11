.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, -78
setnz sil
and rax, 1713273566
bswap rax
add dl, -83 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
cmovbe edi, eax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
cmp rdx, rbx
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
and esi, 77
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 23
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
sub bl, -6
add dl, -97 # instrumentation
sets bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
