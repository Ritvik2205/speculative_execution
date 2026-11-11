.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
lea edx, qword ptr [rsi + rsi + 34]
or al, bl
sub cl, dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
test cl, 18
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
and ax, 7954
or sil, bl
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
