.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
xor bx, 6
or dil, al
xor al, 9
test edx, -1561252782
bts di, 37
test cl, sil
not sil
jmp .bb_0.1
.bb_0.1:
xor sil, -46
jmp .bb_0.2
.bb_0.2:
test al, -7
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
jmp .bb_0.3
.bb_0.3:
or dil, 16
xor sil, 27
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
