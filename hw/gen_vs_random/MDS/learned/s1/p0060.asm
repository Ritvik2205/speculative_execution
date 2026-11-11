.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and bl, al
xor cl, 98
xor rcx, -2
jmp .bb_0.1
.bb_0.1:
and ax, si
or cl, cl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
test cl, 62
jmp .bb_0.3
.bb_0.3:
test bl, -14
and di, 91
cmovnz rax, rbx
sub sil, 71
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
