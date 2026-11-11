.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
lea rbx, qword ptr [rbx + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
lea rdi, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
add rdi, 26
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
sbb eax, -108
and bx, -118
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
