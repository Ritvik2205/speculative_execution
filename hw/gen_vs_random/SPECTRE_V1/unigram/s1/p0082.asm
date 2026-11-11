.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
cmovb ax, ax
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], -117
imul bl
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub ebx, edi
movsx si, sil
cmovo eax, eax
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
sub dil, 74
xor sil, 1
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
