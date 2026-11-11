.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 12
and ax, bx
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 23
cmovnz si, cx
xor bx, 14
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
bswap ebx
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 11
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
btc cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
