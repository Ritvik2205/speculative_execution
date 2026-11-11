.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
test sil, -96
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and al, al
or dl, -8
and al, -54
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
xor al, 55
and dil, dil
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
xor al, 9
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 55
btc rcx, 86
or dl, al
test dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
