.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
test dl, -7
add sil, -68
or eax, 1276549484
sbb cl, dl
adc cl, -81
xor bl, cl
add si, 9
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
cmp cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
