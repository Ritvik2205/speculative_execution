.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
xor esi, 100
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rax, -1931765367
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
btr ax, ax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
or cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
cmovo si, bx
test dl, 9
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
cmovnbe edx, edx
or rax, 1461812833
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
