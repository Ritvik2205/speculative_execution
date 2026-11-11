.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
bts rcx, rdi
or al, dl
btr ax, cx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
xor cx, -18
xor al, dil
and esi, 88
bt si, bx
btr di, ax
and sil, 89
btc ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
