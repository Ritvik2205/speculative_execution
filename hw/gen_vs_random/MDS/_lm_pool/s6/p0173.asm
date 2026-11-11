.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
xor si, 80
or cl, -36
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and edx, -44
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
xor al, -26
or sil, al
or cx, 49
xor ax, -6793
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test al, -7
test al, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
