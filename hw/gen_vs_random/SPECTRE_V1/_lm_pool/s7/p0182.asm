.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -75
sbb cl, al
mov al, bl
cmp dl, 119
cmp cl, 52
xor cl, cl
test dl, 113
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
