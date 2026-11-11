.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 22
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
dec cl
setns dl
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cdq
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], esi
lea edx, qword ptr [rsi + rsi + 87]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
add al, -27 # instrumentation
setle al
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
