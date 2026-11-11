.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
xor al, 55
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor cl, 83
and al, -114
xor dl, -43
or al, dil
xor al, cl
xor rcx, -2
or rcx, -17
xor al, 8
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or dl, cl
xor bl, al
and bl, 68
test si, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
