.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rax + rdx]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 127
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
setns cl
and rbx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rbx]
xchg edx, eax
cmp ax, 7452
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
add al, -55 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
and rdi, rbx
cmovnle dx, ax
or dil, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
