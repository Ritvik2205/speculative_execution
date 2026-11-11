.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx]
add cl, -96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
lea edx, qword ptr [rax + rax + 15]
sbb sil, sil
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and rcx, rbx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnb rcx, rsi
cmovb edx, edi
neg rdi
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], cx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
