.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
test al, 22
and sil, 89
xor dil, bl
xor cl, 24
and bl, 68
or di, 1
and eax, 33
or sil, dl
test eax, 158941032
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
jmp .bb_0.1
.bb_0.1:
and bx, di
jmp .bb_0.2
.bb_0.2:
test esi, 1857129931
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
