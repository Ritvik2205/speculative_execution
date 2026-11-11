.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, 32
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 63
xchg bl, al
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
add rdx, rsi
cmovb dx, ax
jmp .bb_0.1
.bb_0.1:
cmovz eax, edx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
add bl, 76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
add cl, 95 # instrumentation
mov al, sil
lea dx, qword ptr [rax]
movzx ax, sil
cmp cx, 49
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
