.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -68
and al, -23
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 11
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
test al, 84
and al, 33
add bl, al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
test esi, 23
sbb dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
