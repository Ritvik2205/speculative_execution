.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rsi
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
xor bl, 67
test eax, -1634766116
xor dl, cl
or cl, al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or al, -78
or dil, -78
xor al, 122
or al, 25
xor sil, -14
xor dil, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
