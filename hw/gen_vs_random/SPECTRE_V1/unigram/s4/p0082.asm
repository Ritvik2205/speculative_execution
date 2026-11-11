.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rax, di
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rsi
lea rsi, qword ptr [rax + rbx + 52]
adc bl, dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
lea rdi, qword ptr [rdx + rdx + 10]
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 24
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
setnz dil
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 32
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
test dl, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
