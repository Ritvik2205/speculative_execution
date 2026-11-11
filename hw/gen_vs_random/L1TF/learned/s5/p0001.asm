.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
sub sil, -99
sub al, -97
and sil, -90
or rcx, 51
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
adc al, cl
btc ax, cx
xor ax, 34
lea cx, qword ptr [rdx + rcx + 26]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
