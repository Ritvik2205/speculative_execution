.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
test bl, dil
xor cl, sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and al, 14
bt di, ax
test cl, -123
jmp .bb_0.1
.bb_0.1:
or al, 30
jmp .bb_0.2
.bb_0.2:
xor dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
