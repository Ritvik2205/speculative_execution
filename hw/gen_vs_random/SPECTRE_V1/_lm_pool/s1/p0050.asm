.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
sub al, dil
xchg rbx, rdi
sbb cl, 105
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
adc bl, 102
xor cl, cl
cmp ebx, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
