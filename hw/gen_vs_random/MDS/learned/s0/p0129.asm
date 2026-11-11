.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, dx
test sil, al
test sil, -96
xor cl, al
bt di, ax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or al, cl
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and ax, 29207
or al, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
btc esi, 199
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
