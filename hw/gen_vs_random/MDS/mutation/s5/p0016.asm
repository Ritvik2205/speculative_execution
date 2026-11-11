.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -69
btr rax, 209
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or bl, 127
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
jmp .bb_0.1
.bb_0.1:
cmovnbe bx, ax
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or dx, 125
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
cmovle ax, si
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
or al, 24
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 7
and cl, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
