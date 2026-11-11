.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
test al, 59
sbb ebx, 2
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
xor cl, dil
cmp cl, al
sub dl, dl
test dl, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
