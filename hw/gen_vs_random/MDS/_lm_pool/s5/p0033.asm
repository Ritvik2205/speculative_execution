.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
xor cl, 15
xor dil, -70
btr di, 89
or ax, 30524
xor al, -19
or dil, cl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
or sil, cl
test al, -7
xor dl, -43
bt di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
