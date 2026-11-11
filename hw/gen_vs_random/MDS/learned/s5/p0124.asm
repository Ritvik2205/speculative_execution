.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
xor sil, -15
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
or cl, dl
xor bl, dl
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and cx, -8
or cl, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
