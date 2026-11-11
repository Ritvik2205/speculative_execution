.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
or sil, dl
and dil, 58
jmp .bb_0.1
.bb_0.1:
test dl, -37
and al, al
lea rbx, qword ptr [rsi + rdi + 79]
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rax]
jmp .bb_0.3
.bb_0.3:
test esi, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
