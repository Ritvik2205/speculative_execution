.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
add cl, -35 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
add al, 113 # instrumentation
setnb al
and dil, -114
setnl bl
xchg cl, al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
sub al, dil
add cl, -56 # instrumentation
sbb rcx, 98
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], si
cmovp bx, di
xor dil, dil
setnb cl
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
and al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
