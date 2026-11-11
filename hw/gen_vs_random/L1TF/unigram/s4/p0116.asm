.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe bl
and rcx, 45
cmovnl edx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
and cl, 6
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
mov rbx, 28
add al, 118 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 60
cmp cx, 78
mov cx, 21
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
xor cl, 70
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
add cl, -34 # instrumentation
setl bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
