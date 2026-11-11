.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor esi, 106
inc rax
sub dl, -12
sbb sil, -78
sbb ecx, 60
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and al, -54
sub cl, sil
add al, -109
lea rcx, qword ptr [rax]
xor bx, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
