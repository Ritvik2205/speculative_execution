.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
xor ax, -23364
and al, 35
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
test rax, 1978892575
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], -86
and rax, -2039117613
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
btc rax, 110
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
or ax, -23697
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -85
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and al, 8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
