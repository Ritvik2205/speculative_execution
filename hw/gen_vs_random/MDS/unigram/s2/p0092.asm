.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 89
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
bts rdi, rsi
and edx, -44
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 93
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], di
or ax, -20176
btr bx, cx
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
and cx, cx
and dil, -103 # instrumentation
cmovbe di, di
xor rsi, -117
cmovno rdi, rcx
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
