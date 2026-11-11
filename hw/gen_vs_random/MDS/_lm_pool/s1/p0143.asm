.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, dl
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
or dl, sil
test bx, 25542
test cl, 101
jmp .bb_0.1
.bb_0.1:
bt esi, eax
or cl, sil
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and bl, sil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
and edx, -44
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
