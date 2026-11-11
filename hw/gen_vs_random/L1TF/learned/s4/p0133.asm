.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and si, 89
xor dl, al
test dx, 75
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
lea rdi, qword ptr [rax + rcx]
and dl, sil
test bl, 45
jmp .bb_0.2
.bb_0.2:
sub edi, 57
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
