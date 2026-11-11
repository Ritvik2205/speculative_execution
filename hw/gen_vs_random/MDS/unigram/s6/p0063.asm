.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
not ax
cmovp di, di
cmovno dx, si
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
bts bx, 3
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
bt di, 52
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
and bl, -99 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
bts ax, 22
and dil, cl
btr rax, 56
test rbx, 23
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 97
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
bts di, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
