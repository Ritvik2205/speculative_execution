.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -36
xor bl, -102
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and dil, cl
or bl, cl
jmp .bb_0.2
.bb_0.2:
btr rsi, 207
test al, 127
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
test dl, cl
xor sil, -15
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
xor al, 115
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
or ax, 85
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
