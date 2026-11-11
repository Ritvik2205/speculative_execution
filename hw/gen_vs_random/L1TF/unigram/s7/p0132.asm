.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, cx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 17
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
setp al
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
setp al
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
sbb cl, cl
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rbx + rax]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 26
imul dx, bx, 89
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
not edx
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
