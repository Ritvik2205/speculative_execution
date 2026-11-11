.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 85
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
test bl, cl
xor cl, bl
and cl, -6
xor ax, 31969
and al, -103
xor dil, -5
and ax, -4410
or al, -58
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
