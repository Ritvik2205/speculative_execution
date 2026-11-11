.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
sbb cl, 12
add al, -32
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
sub dl, cl
test cl, -52
sub dl, cl
or al, -83
sbb dl, al
or al, -19
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rdx, 84
and al, cl
or rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
