.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 68
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
add dil, sil
cmp cl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
sbb sil, -124
or dl, -26
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
