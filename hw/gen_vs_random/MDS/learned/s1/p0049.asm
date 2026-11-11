.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -26
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and al, 49
test sil, 41
test al, -81
or sil, -49
or cl, bl
and eax, 454700988
jmp .bb_0.1
.bb_0.1:
xor al, 122
test cl, 54
or cl, sil
test al, bl
xor al, 115
xor cl, 55
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
