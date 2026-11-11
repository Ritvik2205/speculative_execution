.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
or bl, 13
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
btr rax, 56
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -77
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
or al, 37
and cl, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
cmovnbe bx, ax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
cmovle ax, si
or dx, 125
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
