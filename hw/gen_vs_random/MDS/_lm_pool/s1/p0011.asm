.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
or dil, dil
test al, dl
jmp .bb_0.1
.bb_0.1:
or al, 16
jmp .bb_0.2
.bb_0.2:
test cl, 101
xor dil, sil
test al, dl
and al, 75
jmp .bb_0.3
.bb_0.3:
xor sil, -14
test dl, 27
xor rsi, -117
or dil, sil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
xor rax, -404206377
jmp .bb_0.4
.bb_0.4:
test al, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
