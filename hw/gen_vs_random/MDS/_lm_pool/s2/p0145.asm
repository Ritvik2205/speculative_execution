.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
bts rbx, rdx
xor rbx, 89
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
and cx, -8
xor cl, 15
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
test si, 32
xor dil, -3
test sil, dl
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 13
test al, cl
xor bl, dl
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
