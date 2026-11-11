.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
or sil, -78
and dil, -39
and ebx, 97
xor al, 55
test bl, cl
not dil
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor bl, cl
test al, -81
test rax, 1214712583
test sil, sil
or bx, 92
and esi, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
