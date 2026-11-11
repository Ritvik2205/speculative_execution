.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
or dil, -71
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
or ax, -7150
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
btc dx, 67
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
test rax, 1207043993
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
