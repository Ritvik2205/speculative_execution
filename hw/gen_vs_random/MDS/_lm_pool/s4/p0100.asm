.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
test cl, 62
and esi, 75
or sil, -78
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
test dl, 9
bt bx, si
xor ax, -6793
or al, al
xor dil, sil
test sil, -55
test dl, bl
and cl, dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
