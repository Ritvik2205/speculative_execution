.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
xor al, dl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and al, dil
and al, dl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and bl, bl
or al, sil
jmp .bb_0.1
.bb_0.1:
and al, dl
test ebx, -2015966884
test edi, -1252846009
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
