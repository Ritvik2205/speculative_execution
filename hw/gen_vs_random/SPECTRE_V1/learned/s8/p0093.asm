.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
test al, 42
test dl, -105
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
setz dl
jmp .bb_0.1
.bb_0.1:
and al, -23
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
