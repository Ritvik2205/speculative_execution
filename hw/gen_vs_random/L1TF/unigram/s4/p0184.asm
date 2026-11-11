.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 38
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 28
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 88
adc rsi, 21
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
add ax, 48
test edx, 29
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 77
add sil, -39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
mov rdx, -1012904117298842753
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
xchg bl, dil
cmp ebx, esi
xor dl, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
