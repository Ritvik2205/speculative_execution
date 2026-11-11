.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -89
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 96
and rax, -1128038253
add ebx, -116
mov edx, eax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rdx]
and al, dil
lea rdx, qword ptr [rdx + rax]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
or ax, ax
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
