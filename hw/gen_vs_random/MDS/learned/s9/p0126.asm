.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 15
and ax, 19224
xor di, -83
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
or al, 24
and eax, -85386306
or sil, -78
and sil, dil
bts rax, 77
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
btr si, bx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
xor bl, -88
and eax, 454700988
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
