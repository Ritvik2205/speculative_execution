.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
adc dl, bl
movsx rax, sil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
cmovs eax, ecx
and dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
xor dl, dil
lea rsi, qword ptr [rdx + rdi]
imul esi, ebx, 3
xor rax, -2035087432
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
