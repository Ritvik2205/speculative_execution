.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
add bl, sil
add cl, -51 # instrumentation
cmovl edx, ecx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
sub cl, cl
xor dx, -128
test dx, 8
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 82
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
test rbx, rsi
and rdi, rdi
sbb dil, -93
cmovle dx, cx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 94
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
