.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
and bl, dil
and sil, cl
xor al, -4
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
or al, sil
or dl, -97
jmp .bb_0.1
.bb_0.1:
or rax, -1523798580
and al, 14
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
or al, 25
or al, sil
test esi, 1857129931
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
