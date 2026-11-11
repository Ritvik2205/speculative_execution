.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 100
or al, cl
cmovle esi, ebx
btr rax, rax
cmovle ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
jmp .bb_0.1
.bb_0.1:
xor bx, ax
jmp .bb_0.2
.bb_0.2:
and bl, -55 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
mov dil, dil
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
btc rax, rbx
or al, -48
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
xor al, 78
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
or dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
