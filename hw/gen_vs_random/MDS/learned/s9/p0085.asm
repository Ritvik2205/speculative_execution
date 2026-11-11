.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
test ebx, -961564216
xor cl, sil
and rsi, 32
or cl, dil
xor cl, al
and al, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
or ax, 127
and dx, 60
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
or bl, al
xor bl, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
