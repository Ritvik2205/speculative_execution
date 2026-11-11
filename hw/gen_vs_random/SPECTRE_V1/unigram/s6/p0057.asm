.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ebx
xor dil, dil
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ecx
lea rdx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 4
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], eax
lea rax, qword ptr [rsi]
lea ax, qword ptr [rax + rax]
or rbx, rdx
setns cl
sbb bl, bl
cmp rdx, rbx
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
