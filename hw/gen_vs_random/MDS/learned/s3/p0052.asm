.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -8
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
or al, sil
xor bl, -102
xor al, 8
xor sil, cl
test di, 54
and bl, 68
xor al, 9
and rsi, 52
test al, -81
xor dl, bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
xor cl, 15
test sil, -55
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
