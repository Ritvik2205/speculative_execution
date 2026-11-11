.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, ax
xor dl, -43
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
test cl, 73
xor cl, bl
or al, dl
test edi, -1252846009
and cl, -71
or al, 30
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and al, 35
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 75
bt cx, ax
xor cl, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
