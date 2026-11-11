.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dx
add bl, 10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 12
inc ebx
setns dl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and cl, 7
jmp .bb_0.1
.bb_0.1:
sub ax, -27107
lea di, qword ptr [rcx + rdi + 62995]
cwde
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
add dx, 13
sbb dil, 94
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
lea dx, qword ptr [rsi + rax + 47]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
