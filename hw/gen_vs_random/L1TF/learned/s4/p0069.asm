.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 89
xchg edi, edx
or al, -48
lea cx, qword ptr [rdi + rax + 43]
xor cl, dl
xchg rcx, rax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], di
jmp .bb_0.2
.bb_0.2:
sub bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
sbb sil, al
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
