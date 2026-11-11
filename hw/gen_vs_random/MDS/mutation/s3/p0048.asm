.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
btr rax, 56
or bl, -54
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
jmp .bb_0.1
.bb_0.1:
and cl, 118 # instrumentation
cmovp esi, ebx
cmovz esi, eax
bt rcx, rbx
and al, -40 # instrumentation
cmovle di, ax
test ecx, -1843375753
cmovnle rax, rsi
xor sil, -46
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
xor bl, 67
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
