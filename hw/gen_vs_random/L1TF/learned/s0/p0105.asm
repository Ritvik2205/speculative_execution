.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
lea rsi, qword ptr [rdx + rcx]
lea rax, qword ptr [rax + rdx]
lea rax, qword ptr [rdx + rdx + 1405]
sbb ax, -26133
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 39
jmp .bb_0.1
.bb_0.1:
add dx, ax
not si
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
add rdi, 11
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 59
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 726281652
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
