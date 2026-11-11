.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
cmovle esi, ebx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
btr rax, rax
and cl, -109 # instrumentation
not rbx
or cl, 10
cmovnl rdx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
or al, cl
xor edi, -47
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
or rdi, 67
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
bts bx, dx
or si, bx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
