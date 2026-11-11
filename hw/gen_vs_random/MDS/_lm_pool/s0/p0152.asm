.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
bts rax, rdi
xor rdi, -9
xor al, bl
and dil, dil
xor dl, 34
or dil, sil
and dl, dl
test dl, bl
and cl, cl
test al, 66
or al, 74
test bl, cl
and dl, dl
and di, 99
and si, -121
xor di, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
