.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
test cl, al
xor al, -26
xor dx, 64
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 5
or dl, -31
and al, 87
or al, cl
and cl, -111
xor dx, 21
test dl, cl
xor bl, sil
xor bl, -88
xor bx, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
