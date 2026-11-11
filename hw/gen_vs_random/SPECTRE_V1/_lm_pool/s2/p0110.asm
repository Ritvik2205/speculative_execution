.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb edx, ebx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 87
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
sub dil, sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, 71
xchg rax, rdx
jle .bb_0.2
jmp .exit_0
.bb_0.2:
lea ax, qword ptr [rbx]
lea ecx, qword ptr [rdx + rcx + 40]
add edx, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
