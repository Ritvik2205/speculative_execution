.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and bl, 122 # instrumentation
cmovnbe ebx, ecx
btr rax, rax
cmovnl rdx, rdx
and cl, -109 # instrumentation
not rbx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 100
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
cmovle esi, ebx
xor edi, 74
jmp .bb_0.1
.bb_0.1:
or rdi, 67
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
or si, bx
or bl, al
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
bts bx, dx
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
