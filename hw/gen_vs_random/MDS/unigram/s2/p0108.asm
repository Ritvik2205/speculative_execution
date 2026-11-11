.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 26
cmovnz ax, ax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 44
cmovnl rdi, rdi
cmovnz dx, si
cmovnbe dx, si
and cx, di
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
jmp .bb_0.1
.bb_0.1:
test cl, cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and ax, bx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
bts rsi, rsi
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 68
bt ebx, 107
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
