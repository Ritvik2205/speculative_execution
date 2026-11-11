.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
or cl, 39
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
or rbx, -72
and al, dil
test edx, -372470678
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and al, 14
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
xor cl, dl
and si, -121
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
or sil, cl
or rdi, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
