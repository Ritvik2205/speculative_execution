.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
test cl, 62
jmp .bb_0.1
.bb_0.1:
or bl, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor al, 55
or al, -75
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
jmp .bb_0.3
.bb_0.3:
jno .bb_0.4
jmp .exit_0
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and dil, sil
xor al, bl
xor al, -26
test edx, -1561252782
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
