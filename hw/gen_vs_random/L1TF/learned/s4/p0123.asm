.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], eax
cmp eax, -127
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 34
adc dl, dil
sbb rax, 1183957102
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
cmovbe edi, ebx
or dil, bl
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
test rbx, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
