.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
test dl, 113
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
cmovbe bx, dx
or sil, cl
and cl, dl
add dl, 47
sbb eax, 1392087754
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, -111
lea ecx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
