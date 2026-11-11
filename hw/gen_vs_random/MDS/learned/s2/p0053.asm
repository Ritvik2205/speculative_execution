.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
xor si, 80
test esi, 1857129931
test al, 66
or al, -58
and bl, al
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test di, 40
xor dil, dl
and ax, -12519
test al, sil
test rbx, 9
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
jmp .bb_0.1
.bb_0.1:
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
