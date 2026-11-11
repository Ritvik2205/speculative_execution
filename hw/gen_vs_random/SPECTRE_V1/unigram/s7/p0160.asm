.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
lea dx, qword ptr [rax + rax + 30]
xor bl, -38
cmovnbe bx, si
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
xor al, al
and rdi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdi]
lea bx, qword ptr [rsi]
sbb sil, al
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 26
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
dec rax
sbb ecx, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
