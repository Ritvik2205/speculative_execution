.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 114
add rdi, 23
and si, 28
and sil, -90
add dl, 22
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
btc ax, bx
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
btc cx, ax
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
