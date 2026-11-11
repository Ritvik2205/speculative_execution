.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
test al, 48
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
bt esi, 37
sub cl, -21
add dl, 47
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 69
and dl, dl
adc dl, 107
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
