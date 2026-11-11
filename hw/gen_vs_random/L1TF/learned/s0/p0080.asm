.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rsi + rdx + 65]
test sil, 29
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
xor ax, 32760
and cl, 90
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
sub dl, dl
or rdx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
