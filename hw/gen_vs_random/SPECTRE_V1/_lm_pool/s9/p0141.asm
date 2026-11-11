.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], si
lea rcx, qword ptr [rsi + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
xchg al, cl
lea rdx, qword ptr [rcx + rbx + 53]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
