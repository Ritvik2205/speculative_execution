.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
xor dil, -70
xor bl, -102
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and dx, 3
test cl, 54
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
btr bx, di
test rcx, -613256812
btr bx, dx
xor al, dl
or sil, dl
and sil, al
bt dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
