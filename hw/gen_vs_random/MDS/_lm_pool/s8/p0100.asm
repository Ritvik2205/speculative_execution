.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
or dil, -71
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
xor cl, 55
or al, 37
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
jmp .bb_0.1
.bb_0.1:
test dil, dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
xor ax, 31969
and cl, -19
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
