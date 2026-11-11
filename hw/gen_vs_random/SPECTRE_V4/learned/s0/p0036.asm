.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -81
adc rax, -691707152
and ax, -6897
cmp al, 98
xchg rcx, rdi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test dl, 24
or cl, dil
adc cl, -86
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
xor al, cl
sbb al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
