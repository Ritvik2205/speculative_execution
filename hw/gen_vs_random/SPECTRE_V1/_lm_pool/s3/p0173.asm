.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
or ebx, -124
xor cl, sil
jmp .bb_0.1
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sub dl, 71
sub rdi, 71
xchg rbx, rdi
lea eax, qword ptr [rcx]
neg rcx
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
