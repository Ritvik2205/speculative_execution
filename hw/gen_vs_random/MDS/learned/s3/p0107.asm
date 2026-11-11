.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, 82
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
or al, bl
xor dl, 8
or dil, -78
or dl, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and ax, -10351
and al, sil
jmp .bb_0.3
.bb_0.3:
not dl
xor cl, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
