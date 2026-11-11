.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
sub cl, sil
cmp cl, dil
sbb dl, 127
sub bl, cl
and dil, dl
cmp si, -11
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rdx + rax + 58]
lea rdi, qword ptr [rdx + rbx]
sub cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
