.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rcx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 31
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
mov rcx, rbx
cmp dl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
cwde
cbw
and rax, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
sbb cl, -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
