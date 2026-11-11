.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 79
and cl, -15 # instrumentation
cmovnp cx, cx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
btc bx, cx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rbx
and al, -75 # instrumentation
cmovp eax, eax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
or cl, 7
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
xor dil, dil
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 21
xor rsi, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
