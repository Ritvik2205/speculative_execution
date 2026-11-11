.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
xchg edx, eax
cmp ax, -11439
lea rsi, qword ptr [rax + rdx]
setns cl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
bswap rsi
sbb ebx, esi
lea dx, qword ptr [rsi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
