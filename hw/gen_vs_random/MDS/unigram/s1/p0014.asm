.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rdx
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rcx], dx
btc rax, rsi
cmovb rbx, rax
cmovz ecx, ecx
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
not sil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
not sil
xor al, sil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
and rcx, -63
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and bl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
btr dx, 47
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
