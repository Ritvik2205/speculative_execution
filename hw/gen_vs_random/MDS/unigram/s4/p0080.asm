.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and al, 8 # instrumentation
cmovz rcx, rax
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
cmovnle cx, bx
or dl, 85
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
or bl, 100
and dl, -125 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and cl, 118 # instrumentation
cmovp edx, esi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 10
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
cmovo edx, esi
cmovbe dx, bx
and dl, -26 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
xor dil, -3
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
