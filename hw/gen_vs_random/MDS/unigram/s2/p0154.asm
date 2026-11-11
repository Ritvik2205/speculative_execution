.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdi], si
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
bt di, ax
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdx
not cl
xor di, bx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
cmovnle rdx, rsi
test rax, 1732677821
btc esi, 226
test sil, 18
cmovp rdi, rbx
btc rdi, 6
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
test dil, al
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
