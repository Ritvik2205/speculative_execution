.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -78
and di, 99
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
or al, -75
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
btc si, 99
jmp .bb_0.2
.bb_0.2:
or rax, -1561934807
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
test dl, 48
and al, -114
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
test rdx, 58
xor dl, bl
xor al, 55
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
