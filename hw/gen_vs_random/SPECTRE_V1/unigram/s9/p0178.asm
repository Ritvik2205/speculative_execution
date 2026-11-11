.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdi], bx
lea rdi, qword ptr [rbx + rbx + 78]
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
lea di, qword ptr [rbx + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
add bl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
sub sil, -18
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
xor cl, cl
btc edi, 73
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rcx
xor dil, dil
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
