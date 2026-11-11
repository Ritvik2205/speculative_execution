.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
bt ax, bx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
or dl, dl
test cl, -18
bt si, di
jmp .bb_0.1
.bb_0.1:
xor al, -4
xor dil, 8
xor al, dil
xor cx, -18
and si, -121
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
xor al, 122
and sil, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
