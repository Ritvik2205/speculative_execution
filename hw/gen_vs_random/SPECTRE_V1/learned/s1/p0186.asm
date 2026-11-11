.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
sub ax, cx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmovs dx, ax
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
adc ecx, 33
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85
cmovb ax, ax
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
bt edi, 1
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
bt rsi, rdx
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and sil, 81
cmovns si, si
or cl, dil
add bl, 106 # instrumentation
cmovs eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
