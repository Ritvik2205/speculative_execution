.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and dx, -107
cmp dl, sil
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
xor cl, -101
cmovl ecx, edi
cmp al, 105
and al, -124
mov al, cl
bts ecx, 0
add dl, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
