.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -38
test dl, -105
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and cl, -57
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
sbb cl, dil
test dl, -7
sub rax, rdi
or cl, bl
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
add al, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
