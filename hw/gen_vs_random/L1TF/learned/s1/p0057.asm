.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 26
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
add dil, 88
and dl, al
sbb edi, 10
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
sub dl, cl
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
