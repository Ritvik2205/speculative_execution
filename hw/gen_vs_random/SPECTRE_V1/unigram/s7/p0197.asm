.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edi
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
cdq
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
add al, -8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 66
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
lea ax, qword ptr [rsi + rax]
sbb edx, ecx
and rdi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdi]
sub cl, -47
btr ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
