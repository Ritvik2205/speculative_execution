.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
or dl, -97
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or ebx, ebx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
or al, cl
and cl, 114 # instrumentation
cmovz bx, di
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
test bl, -14
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
btc rsi, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
