.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
sub al, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
or rdx, -22
lea edx, qword ptr [rdx + rax + 29932]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 90
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
setl cl
cmp dl, -56
add cl, 107 # instrumentation
cmovnl ax, ax
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 93
cmp ax, -21455
imul ecx, ecx, 54
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
