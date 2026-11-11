.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 79
or sil, dil
xor al, dl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
