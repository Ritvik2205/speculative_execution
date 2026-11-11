.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
or bl, cl
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
add dl, 58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovz edx, ecx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
add dl, -47 # instrumentation
sbb sil, 100
add bl, -12 # instrumentation
lea rdx, qword ptr [rdi + rsi]
sbb bl, sil
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 88
cmovnl rax, rcx
cmp al, al
sets sil
add rsi, -60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
