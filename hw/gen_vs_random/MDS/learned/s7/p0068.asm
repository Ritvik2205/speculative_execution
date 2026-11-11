.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
mov sil, al
xor al, -89
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
test cl, -123
xor eax, 571592471
test bl, cl
jmp .bb_0.1
.bb_0.1:
and di, cx
or cl, 6
and sil, -9
xor cl, 98
test esi, 425331143
xor ax, -23364
test al, 127
test al, -81
and sil, sil
bt ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
