.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
xor ax, -2537
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 24
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 78
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 51
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rax]
neg sil
mov al, 67
cmp rdx, rcx
cmovb esi, esi
cmovnb rsi, rax
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
cmovb dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
