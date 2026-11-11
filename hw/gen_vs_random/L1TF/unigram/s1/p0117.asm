.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cx
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 9
add bl, 4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rcx]
inc bl
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 52
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 76
sub cl, -49
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
and dil, dil
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
