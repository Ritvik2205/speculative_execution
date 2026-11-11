.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, ax
bt bx, dx
test al, sil
or rdi, 21
xor al, cl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or al, -17
xor dil, 81
xor rdx, -59
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rax, 498847670
or al, 54
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
