.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
or al, bl
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
or al, -75
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
test bl, -114
or cl, dl
or rsi, 37
jmp .bb_0.1
.bb_0.1:
or cl, -36
test edi, -1252846009
or sil, dil
and dl, dl
test rcx, -613256812
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
