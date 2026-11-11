.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 124
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rax], ax
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 73
btc bx, cx
and dl, 120 # instrumentation
cmovnle bx, ax
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
or al, -78
or bl, bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
btc rax, rcx
xor ecx, 8
cmovb di, dx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
btr cx, 136
and rsi, rax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
not dil
btr ebx, edx
and dil, -34 # instrumentation
cmovs rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
