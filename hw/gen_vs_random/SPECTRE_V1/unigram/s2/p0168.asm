.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -119
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
adc bx, 4
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
add sil, 32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
sub cl, -21
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
imul rdi
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 81
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
