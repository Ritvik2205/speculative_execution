.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 95
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
sub al, dil
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
lea edi, qword ptr [rdx]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, -82
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
cmp al, 53
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
