.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and sil, sil
and bl, al
xor cl, -13
bt ax, cx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rdx, rcx
or al, dl
test cl, 54
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and ax, 29207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
