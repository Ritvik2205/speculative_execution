.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
or sil, -78
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor dil, -3
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
or al, -22
or dl, sil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
or cl, -77
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
