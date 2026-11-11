.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rax, 1250429750
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
test al, bl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and esi, 29
and cl, cl
xor rdx, -59
jmp .bb_0.2
.bb_0.2:
or rax, -1561934807
or dl, dl
or bl, -54
or al, -17
and dil, -62
or rsi, 73
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
