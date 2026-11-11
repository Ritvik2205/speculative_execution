.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
xchg edx, eax
cmp ax, 7046
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
jmp .bb_0.2
.bb_0.1:
add al, -55 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdi, rbx
or dil, 98
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
cmovnle dx, ax
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
and cl, 86
add ebx, -47
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
cmovnbe si, ax
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
