.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
test al, 127
or sil, cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
and al, sil
xor ax, -16696
test dl, 27
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
test dil, -80
or bl, 43
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test al, -7
test ebx, -961564216
xor sil, cl
or cl, bl
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
