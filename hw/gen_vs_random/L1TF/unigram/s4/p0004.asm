.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
adc al, -3
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 14
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rsi]
lea ecx, qword ptr [rdi + rcx]
cmp bx, 39
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and di, bx
xor ebx, 55
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
sub al, dil
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
sbb al, dil
mul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
