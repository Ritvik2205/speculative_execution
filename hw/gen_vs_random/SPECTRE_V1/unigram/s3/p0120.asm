.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnl edi, esi
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -6
add cl, 83 # instrumentation
setbe al
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 84
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add cl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 23
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
add dl, 38 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
