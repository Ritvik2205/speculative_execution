.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 366961170
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and bl, 127 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
and rcx, 107
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 22
xor dl, -59
cmovns edi, edi
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 27
cmovns rsi, rax
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
or rdx, rax
test dl, bl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rbx], eax
cmovs rsi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
