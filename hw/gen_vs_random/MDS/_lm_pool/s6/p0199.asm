.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
test sil, dil
xor rdi, -9
btr si, di
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
or bl, dil
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
not al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
