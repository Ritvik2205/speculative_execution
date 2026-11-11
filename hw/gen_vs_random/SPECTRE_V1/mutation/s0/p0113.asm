.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
xchg edx, eax
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
setns cl
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -122
and rbx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rbx]
lea rsi, qword ptr [rax + rdx]
cmp ax, -11439
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
or dil, 80
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
add al, -55 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
cmovnle dx, ax
and rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
