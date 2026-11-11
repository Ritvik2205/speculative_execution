.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -105
sub dl, al
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rdi, 88
sbb edx, 105
and bl, -43
lea ebx, qword ptr [rdx]
test al, 42
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
inc eax
bt eax, 78
sbb al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
