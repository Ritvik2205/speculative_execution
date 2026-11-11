.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 9
xor cl, 55
and ax, -122
and dl, dl
xor ax, -23364
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 90
and dx, 3
or dl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
btr cx, ax
or rsi, 19
and sil, dil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
bts ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
