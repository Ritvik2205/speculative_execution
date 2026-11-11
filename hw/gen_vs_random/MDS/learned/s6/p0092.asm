.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 34
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
or sil, al
or dil, -76
test rbx, 85
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 79
xor cx, -18
and al, dl
test esi, 1857129931
bt bx, ax
xor bl, cl
test cl, cl
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
xor cl, 98
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
