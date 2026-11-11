.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 27
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
cmovz dx, ax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rcx]
sub cl, 86
lea ax, qword ptr [rcx + rbx]
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 71
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
cwde
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
