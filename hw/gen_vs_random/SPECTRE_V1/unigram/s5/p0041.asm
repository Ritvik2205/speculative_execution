.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 70
inc dl
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
add dl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -119
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rsi], dx
and ax, 32540
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
add al, 107 # instrumentation
lea edx, qword ptr [rcx + rdi + 88]
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
movzx dx, dl
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdi]
mul al
add bl, 2 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
