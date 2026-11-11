.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, sil
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
or edi, -64
xor di, 82
test sil, 68
sbb al, 66
cmp cl, sil
or al, -16
btc rbx, rdi
adc dl, cl
cmp bl, 12
bt dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
