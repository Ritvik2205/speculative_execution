.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 23118
inc bl
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
sub cl, -47
cmp rdi, 89
sub cl, sil
and dl, dil
lea ecx, qword ptr [rsi]
sbb cl, dl
sub al, 63
sbb dl, 127
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
