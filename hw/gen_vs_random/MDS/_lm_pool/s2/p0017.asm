.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
xor dl, al
or cl, bl
and ecx, -104
test dil, -51
test dl, sil
test cl, 101
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
or dl, cl
xor cl, 98
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and dil, -62
and dl, -73
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
