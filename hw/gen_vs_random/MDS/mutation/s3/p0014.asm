.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
xor edi, 74
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
cmovnl rdx, rdx
btr rax, rax
cmovle esi, ebx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 10
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and cl, -109 # instrumentation
not rbx
jmp .bb_0.1
.bb_0.1:
or bl, al
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
bts bx, dx
or rdi, 67
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
or si, bx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
