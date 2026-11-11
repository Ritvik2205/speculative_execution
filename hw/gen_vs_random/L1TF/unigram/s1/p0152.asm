.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 8
sbb bl, dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
xor dil, dil
jmp .bb_0.1
.bb_0.1:
add cx, di
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
lea ax, qword ptr [rdx + rax]
lea ax, qword ptr [rax + rdi + 21]
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
xor esi, 87
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
lea dx, qword ptr [rbx]
movzx edx, bl
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
