.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
neg bl
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], bx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 51
cdq
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, al
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
lea ax, qword ptr [rbx + rax + 64]
add cl, 69 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
