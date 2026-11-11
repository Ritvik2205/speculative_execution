.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], dx
sbb bl, 79
or ecx, 90
btc edx, 169
add cl, -93 # instrumentation
not rbx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
cmovle si, di
cmovl ebx, edx
mul cx
lea rdx, qword ptr [rsi + rdi + 30]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
lea ecx, qword ptr [rdx + rcx + 93]
add sil, -95 # instrumentation
lea si, qword ptr [rdx + rdx + 39]
or rcx, 94
cmovno ax, ax
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
