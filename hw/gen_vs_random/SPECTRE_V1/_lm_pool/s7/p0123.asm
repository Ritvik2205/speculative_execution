.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 47
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
xor bl, bl
sub rbx, -11
and rax, 1713273566
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dl, -36
add cl, cl
jle .bb_0.2
jmp .exit_0
.bb_0.2:
cmp bl, al
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
