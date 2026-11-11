.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
test al, cl
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
xchg rcx, rdi
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
test dl, -37
adc cl, -34
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
