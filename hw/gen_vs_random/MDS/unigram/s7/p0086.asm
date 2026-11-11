.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and sil, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
or ecx, 36
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
cmovp rax, rdx
or dl, bl
bt ecx, 9
or bl, 127
and rcx, 107
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 16
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
xor cl, dil
xor al, 122
btc si, si
and cl, 118 # instrumentation
cmovp esi, ecx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
or al, bl
cmovns rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
