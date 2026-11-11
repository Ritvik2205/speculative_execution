.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ebx, 85
cmp ax, 7452
sbb dil, bl
adc al, -92
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 36
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 79
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
lea si, qword ptr [rbx + rsi + 44]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
cmovnb rdi, rsi
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
mov edx, eax
movsx rax, ax
imul rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
