.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
test dil, sil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and dl, cl
or dl, cl
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
