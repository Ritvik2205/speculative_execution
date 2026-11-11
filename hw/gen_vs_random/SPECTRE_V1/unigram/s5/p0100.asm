.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 113
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], al
lea bx, qword ptr [rax + rcx]
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
imul rax, rdx, 17
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
cmovs eax, ebx
cmovb bx, cx
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
cmovle bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
