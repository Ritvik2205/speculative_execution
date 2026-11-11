.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
or al, sil
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
xor dl, -59
and al, sil
and bl, 68
test dil, al
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
