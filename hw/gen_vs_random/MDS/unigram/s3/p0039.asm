.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ebx, ecx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
or al, -48
xor dil, bl
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 29
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 78
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -120
cmovs dx, ax
bt edx, 69
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
cmovnle rdi, rsi
test dl, 25
or al, cl
cmovp si, di
test dl, dil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
xor cl, 93
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
