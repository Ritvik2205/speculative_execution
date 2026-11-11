.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx, rax
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
mov bl, dl
and rdx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdx]
or ebx, -124
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
cmp rdx, -19
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
