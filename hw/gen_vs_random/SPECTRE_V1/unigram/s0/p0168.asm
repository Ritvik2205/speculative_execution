.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 21
cmovnp rdi, rdx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dl
or rsi, -119
movsx eax, ax
movzx esi, si
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
lea di, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
btc ax, cx
mul sil
neg rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
