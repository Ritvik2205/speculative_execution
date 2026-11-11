.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
btr di, 199
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
or bl, cl
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
test bx, 47
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
add cl, -84 # instrumentation
xchg rdi, rsi
mov bl, al
jmp .bb_0.2
.bb_0.2:
and dl, -107 # instrumentation
cmovz rax, rcx
imul rsi, rbx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
bt cx, dx
cmovo di, di
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
