.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sbb dl, al
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 82
test dx, 11
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
cmp rdx, 3
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
