.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 81
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
add ebx, -47
cmp di, ax
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rdx, -98
imul esi, ecx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
cmovnle rcx, rbx
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
lea rbx, qword ptr [rdx + rax + 100]
mov dx, 12
cmp eax, 100
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
