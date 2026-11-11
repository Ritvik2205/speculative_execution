.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, al
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and eax, -409673666
adc al, -103
sub bl, dil
xor dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
