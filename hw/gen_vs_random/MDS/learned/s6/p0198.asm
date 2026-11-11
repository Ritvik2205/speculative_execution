.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
test bl, sil
test dl, -85
not bl
and sil, -69
and cl, -19
xor bl, -61
or sil, -49
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
test al, 127
or al, cl
xor ax, -12492
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
