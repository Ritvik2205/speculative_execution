.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 127
not sil
xor bl, 67
xor cl, al
or al, dil
and sil, dl
test dl, dl
and sil, -9
test al, dl
test dil, -80
or rdi, -11
or dil, bl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
xor al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
