.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 24
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
and al, 35
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
or al, 16
bt di, cx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
or sil, cl
xor ecx, 8
or bl, -125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
