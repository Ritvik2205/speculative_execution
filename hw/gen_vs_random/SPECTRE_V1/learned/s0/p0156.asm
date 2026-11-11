.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -42
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
test cl, -33
test al, 42
and al, dil
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and bl, cl
and dl, -92
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
