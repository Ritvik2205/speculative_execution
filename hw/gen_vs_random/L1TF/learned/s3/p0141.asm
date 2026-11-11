.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -104 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
test dl, -37
xor dl, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 48
and cl, 14
sbb esi, 38
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
