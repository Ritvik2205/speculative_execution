.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, sil
and dil, -62
test al, dl
or al, sil
not dl
test dil, 46
or dl, -97
and al, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and bl, 68
or al, al
test dl, dil
jmp .bb_0.2
.bb_0.2:
or al, dl
bt cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
