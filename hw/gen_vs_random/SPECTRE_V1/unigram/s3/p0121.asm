.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
cmp edx, 44
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 76
cbw
cmp rbx, 8
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
cmovnl eax, ecx
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and sil, -55
not rdi
add bl, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
add cl, -95 # instrumentation
lea cx, qword ptr [rdi + rdi + 40]
lea rcx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
