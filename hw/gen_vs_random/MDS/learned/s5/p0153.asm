.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
xor al, 99
xor al, -4
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
xor bl, -27
and dl, dl
and ax, 27170
xor dil, -70
and cx, -2
xor bl, 67
or al, 74
xor cl, 24
or sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
