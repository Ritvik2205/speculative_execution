.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], 95
inc ax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
xor dil, -37
lea rax, qword ptr [rbx + rbx + 64]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rax + rax + 2]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
cmovno rsi, rbx
cmovs rcx, rcx
test al, 42
xor cx, 13
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
adc bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
