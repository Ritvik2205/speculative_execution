.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 79
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
xor ax, -5889
test rax, -708244380
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and al, -114
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 78
jmp .bb_0.1
.bb_0.1:
or ax, 16560
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and al, 8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
btc rax, 59
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -85
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
