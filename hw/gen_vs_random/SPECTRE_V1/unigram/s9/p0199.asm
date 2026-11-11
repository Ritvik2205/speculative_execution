.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
or rsi, -119
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
test rbx, 84
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 100
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
not rdi
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
cmovno rax, rsi
adc dil, dl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
and dl, -92
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
