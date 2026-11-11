.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, di
or al, dl
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
and bl, bl
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
or sil, -78
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
bt si, cx
btc ecx, 79
cmovz bx, bx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 17
or cl, -36
jmp .bb_0.1
.bb_0.1:
test dil, -80
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 90
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
