.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 35
and ax, 339
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
test bl, bl
or al, 37
test cl, 91
or al, al
and edx, -44
xor ax, -23364
xor ax, -16696
jmp .bb_0.1
.bb_0.1:
or al, 25
or bl, dl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and rax, -1931765367
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
