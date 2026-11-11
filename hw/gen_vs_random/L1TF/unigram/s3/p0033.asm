.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rcx]
dec dx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 50
or di, 31
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -89
xor dil, -42
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 30
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 73
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 50
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
bts rsi, rbx
btc ebx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
