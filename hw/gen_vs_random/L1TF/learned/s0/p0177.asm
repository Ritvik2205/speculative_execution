.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
sbb sil, 19
test dl, 84
xor al, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 53
cmp ax, -14781
and bl, 89
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sbb al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
