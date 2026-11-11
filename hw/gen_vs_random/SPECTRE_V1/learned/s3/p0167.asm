.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, bx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 99
and cl, bl
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
xor cl, dl
sbb al, -114
sbb edi, 100
setz cl
and sil, cl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
