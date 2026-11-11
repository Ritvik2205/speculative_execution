.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
sbb al, -112
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
btc eax, 27
test dl, -7
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
sbb bl, al
sub bl, al
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
