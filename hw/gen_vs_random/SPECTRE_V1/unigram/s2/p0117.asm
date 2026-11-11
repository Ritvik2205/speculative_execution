.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
sbb rdx, -34
cmovp dx, ax
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
adc eax, 1725322202
add cl, -127
adc rdx, 74
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 88 # instrumentation
sbb dl, 53
imul dx
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
cmp al, 13
and al, dl
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 58
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
