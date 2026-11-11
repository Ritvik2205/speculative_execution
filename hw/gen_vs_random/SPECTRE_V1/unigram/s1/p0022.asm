.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rdx + rsi]
lea edi, qword ptr [rbx]
nop
add bl, -15 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
btc esi, 96
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, -40
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
add dl, 38 # instrumentation
setp sil
adc rcx, rbx
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
sub dil, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rax]
movsx rax, ax
mul cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
