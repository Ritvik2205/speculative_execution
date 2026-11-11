.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rcx, rbx
xor cl, 78
add dl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
sub dil, -32
lea rax, qword ptr [rcx + rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 32
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
cmovno eax, ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 55
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 64
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rsi
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], dx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 28
xchg al, dil
add bl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
