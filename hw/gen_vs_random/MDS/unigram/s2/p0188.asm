.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 99
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdx], dx
bt eax, 151
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
cmovnp rax, rdx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
or sil, dil
or rbx, rax
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], cx
bt di, dx
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
or rax, -1561934807
bts si, dx
test eax, 158941032
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
