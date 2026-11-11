.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
add rax, 1503210561
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
adc cl, cl
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rcx
adc cl, cl
sub rbx, -128
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
and rcx, 53
setz bl
cmovnbe bx, ax
sub ebx, ecx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
