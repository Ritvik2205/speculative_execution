.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 41
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
test al, -7
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
jmp .bb_0.1
.bb_0.1:
or dil, -71
test al, sil
or di, 4
xor cl, 83
xor al, -19
xor rcx, -2
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
