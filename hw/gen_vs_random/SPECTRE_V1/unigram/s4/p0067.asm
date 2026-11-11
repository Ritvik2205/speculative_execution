.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
xor rcx, 74
adc bl, dl
sub al, cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 3
test rax, rdi
add bl, -64 # instrumentation
cmovnle eax, ecx
cmp al, cl
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 15
and sil, -55
test bl, sil
and dil, dil
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
