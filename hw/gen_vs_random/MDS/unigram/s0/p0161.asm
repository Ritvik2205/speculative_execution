.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
cmovb bx, ax
xor al, 115
or edi, edi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and dil, 46 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
test dl, dl
and rcx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
test bl, -14
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
test esi, ebx
and dl, 84 # instrumentation
cmovle bx, cx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 43
xor cx, -18
and bl, -99 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
bt dx, cx
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
