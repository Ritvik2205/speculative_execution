.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
btc dx, cx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and sil, sil
test bl, dil
bts eax, 222
or edx, -78
bts edi, 248
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
