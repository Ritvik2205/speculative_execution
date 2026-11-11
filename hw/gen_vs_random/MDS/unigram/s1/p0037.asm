.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, rax
btc ax, cx
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 92
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
cmovnp rbx, rcx
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and bl, al
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
or ax, -14271
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
or bl, bl
cmovno rsi, rsi
xor dl, al
and dl, 84 # instrumentation
cmovle di, bx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
