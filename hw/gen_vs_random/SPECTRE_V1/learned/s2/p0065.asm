.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
and ax, 23118
adc al, -92
adc cl, -81
cmp dil, sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 82
cmp ax, -11439
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
movzx edx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
