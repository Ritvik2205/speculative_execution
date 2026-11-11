.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, cl
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
xor bl, -38
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rbx
and dl, -109
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
imul eax
add dl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
setns sil
imul rdi
and rcx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
