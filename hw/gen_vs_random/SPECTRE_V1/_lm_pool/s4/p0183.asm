.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
xor al, al
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -44
test dil, -116
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
sbb edx, -8
sub dil, bl
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
imul rdi, rsi, -45
sub dx, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
