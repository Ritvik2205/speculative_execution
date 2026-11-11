.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -98
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 45
cmovbe cx, bx
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
or dl, -115
cmovnb ax, di
cmovbe si, ax
and bl, sil
jmp .bb_0.1
.bb_0.1:
and sil, dl
or rax, 1749358813
and dl, -73 # instrumentation
cmovns rsi, rax
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
and bl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
