.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
cmp rcx, 50
test al, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, -49
bt ebx, edi
cmp cl, dl
xor ax, 34
add bl, 68
or rdi, 7
or al, -5
sub rax, 1715032616
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
