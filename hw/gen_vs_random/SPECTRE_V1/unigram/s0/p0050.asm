.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
bts dx, 207
cmovo di, cx
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
add al, dil
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
neg dl
mov rsi, rax
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
cmovnl edi, esi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
