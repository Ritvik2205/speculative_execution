.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -62
and sil, sil
test al, sil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
or al, dil
and al, sil
and al, -54
or al, 16
test cl, 0
or al, 74
xor rcx, 71
test al, cl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and sil, dl
test rdi, 84
test dx, 16353
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
