.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
cmp rdx, 17
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea di, qword ptr [rcx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
xor dil, bl
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
cmp al, -119
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 21
and ax, 7954
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
