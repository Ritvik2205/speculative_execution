.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, dx
sub cl, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
test al, -84
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
jmp .bb_0.1
.bb_0.1:
test dl, 84
jmp .bb_0.2
.bb_0.2:
cmp si, 60
jmp .bb_0.3
.bb_0.3:
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
