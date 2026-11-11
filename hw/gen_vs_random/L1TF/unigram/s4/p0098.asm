.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
setno dil
lea rdi, qword ptr [rdi + rax]
movzx rax, ax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
lea rdi, qword ptr [rax + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rsi]
cmovnle eax, ecx
imul rcx, rsi, 56
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
