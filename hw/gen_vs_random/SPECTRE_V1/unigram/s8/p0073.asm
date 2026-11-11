.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg bl
add eax, -55403434
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
sbb sil, sil
test cl, -24
lea edx, qword ptr [rcx + rcx + 68]
setns cl
and rbx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rbx]
add dil, -76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 94
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb dx, bx
sub al, -1
and rbx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rbx]
lea rsi, qword ptr [rcx + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
