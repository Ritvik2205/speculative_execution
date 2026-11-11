.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -1971658905
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
bt ebx, esi
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
cmovnbe eax, edx
and rdi, 15
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdx], di
and si, bx
and al, -56
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
btc dx, 38
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
