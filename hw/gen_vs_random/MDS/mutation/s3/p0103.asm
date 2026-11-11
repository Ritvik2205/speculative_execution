.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
cmovnl rdx, rdx
cmovle esi, ebx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
and cl, -109 # instrumentation
not rbx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
btr rax, rax
and bl, 122 # instrumentation
cmovnbe ebx, ecx
or cl, 100
xor edi, 38
jmp .bb_0.1
.bb_0.1:
or si, bx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
or rdi, 67
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
bts bx, dx
or bl, al
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
