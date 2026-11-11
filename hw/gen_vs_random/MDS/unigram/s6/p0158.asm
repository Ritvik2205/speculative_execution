.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe eax, edx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 18
and dl, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], bx
cmovz dx, dx
cmovnle ebx, edx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
or dil, 16
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
cmovl ecx, edx
or rbx, -72
cmovnbe rax, rcx
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rsi, 89
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
