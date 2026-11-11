.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 6
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, sil
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 33
jno .bb_0.2
jmp .exit_0
.bb_0.2:
add esi, 92
adc ax, -27488
add cl, dil
sub dl, -12
sub bl, -6
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
