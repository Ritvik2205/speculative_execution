.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sbb bl, cl
setz dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, -116
lea edi, qword ptr [rbx]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
sbb sil, cl
add dl, 47
and dil, 98
lea rax, qword ptr [rbx + rsi]
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
