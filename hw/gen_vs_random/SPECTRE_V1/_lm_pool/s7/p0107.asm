.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
or sil, al
xor eax, -105
lea eax, qword ptr [rdi]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and cl, 86
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 93
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
