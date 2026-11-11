.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdx]
bts ecx, 3
or bl, bl
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
test dl, bl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
cmovns ax, di
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
and di, 99
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
test sil, -55
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
btc rax, rax
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
