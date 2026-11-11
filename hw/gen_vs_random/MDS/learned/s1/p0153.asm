.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 6
test al, sil
test bl, dl
and dil, sil
test dl, cl
or al, 30
jmp .bb_0.1
.bb_0.1:
test cl, 101
and cl, dl
not al
and bx, 31
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
xor dil, bl
btr eax, ecx
test rdi, 68
xor dl, 8
test bx, 25542
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
