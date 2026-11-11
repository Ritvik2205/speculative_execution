.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx], 46
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 94
test dil, -126
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 94
cmovnp di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
