.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
inc rdi
lea rbx, qword ptr [rdx + rax]
sbb di, -122
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rax
add dl, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 1
adc bl, dil
sbb al, dl
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dil
and sil, 111
xor eax, edx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
lea rcx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
