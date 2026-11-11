.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 32
movzx rax, ax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
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
imul rcx, rsi, 32
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
