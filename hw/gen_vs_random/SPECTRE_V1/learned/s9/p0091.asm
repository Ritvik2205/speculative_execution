.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
lea cx, qword ptr [rcx]
lea ax, qword ptr [rsi + rdx]
sbb al, -14
mov bl, dl
xor cl, -91
lea bx, qword ptr [rcx + rdx]
test cl, -33
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
or rax, -1571963467
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
