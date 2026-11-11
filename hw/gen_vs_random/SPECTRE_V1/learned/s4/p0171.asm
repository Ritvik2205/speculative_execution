.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 28
and bl, -43
add al, dl
adc ecx, 30
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 57
lea si, qword ptr [rcx + rdx + 63]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and di, 96
sbb cl, cl
mov dl, dil
add bl, dil
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
