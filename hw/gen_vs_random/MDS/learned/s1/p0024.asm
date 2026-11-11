.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 75
test dil, -51
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and dl, cl
or dl, dl
and al, 87
jmp .bb_0.1
.bb_0.1:
test dil, 46
or ax, -11837
and rdi, 50
and al, al
xor rax, 459999114
and al, -103
test eax, 1838539683
test al, sil
xor cl, 24
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
