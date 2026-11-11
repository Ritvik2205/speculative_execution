.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
or al, 30
test sil, dil
test sil, bl
or bl, -125
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
xor al, dl
xor al, 9
and dil, sil
or cl, 39
or dl, bl
test dl, -119
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
test sil, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
