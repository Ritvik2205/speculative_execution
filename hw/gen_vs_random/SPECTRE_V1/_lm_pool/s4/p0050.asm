.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
or ebx, -124
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
setnz sil
sub dil, -111
xor sil, al
lea rdx, qword ptr [rsi + rdx]
sub dl, bl
add al, bl
and rdi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
