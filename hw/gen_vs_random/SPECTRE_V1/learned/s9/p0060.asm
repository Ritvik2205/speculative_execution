.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and dl, -92
sbb esi, 62
and cl, -57
or rsi, -14
adc ax, 24404
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], 38
test al, -71
lea rbx, qword ptr [rdx + rax + 49]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
