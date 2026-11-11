.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ecx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
xor al, dl
and dil, sil
and dx, 3
or al, 25
or cl, 30
test dil, -80
bt rax, 3
bts cx, si
bt edi, 225
xor sil, -14
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and ax, -10351
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
