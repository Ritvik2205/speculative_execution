.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -5 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
imul rax, rcx, 80
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx], 72
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
lea ecx, qword ptr [rsi + rsi + 19]
setp dl
and rdi, rbx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx], 78
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
lea cx, qword ptr [rbx + rbx + 48]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
add dl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
