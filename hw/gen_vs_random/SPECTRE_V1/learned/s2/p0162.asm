.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
lea rax, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and al, sil
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
sub rbx, -11
lea ax, qword ptr [rdx + rbx + 75]
and dil, dl
cmp bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
