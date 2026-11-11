.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and dil, dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and bl, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 9
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and di, 21
and bl, 7
test ecx, 1044879383
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 76
and dl, -7
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
and si, 91
xor edx, edx
or di, -18
btc ax, 86
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
or di, -18
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
