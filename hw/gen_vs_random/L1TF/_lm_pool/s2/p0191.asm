.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 84
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 36
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
lea ebx, qword ptr [rbx + rsi + 93]
and cl, cl
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
