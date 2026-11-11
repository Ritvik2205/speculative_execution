.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and al, 35
and rax, 4
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
test rax, -1579405415
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
xor ax, 31969
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 78
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
btc rax, 110
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
and al, 8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
or ax, -23697
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
