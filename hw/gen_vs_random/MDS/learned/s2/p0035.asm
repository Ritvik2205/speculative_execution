.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
xor rdx, -59
xor cl, 15
test sil, -96
and dl, dl
btr ax, bx
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
or bl, 127
bt dx, cx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
xor rdi, -9
not dl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
bt rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and dl, -73
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
