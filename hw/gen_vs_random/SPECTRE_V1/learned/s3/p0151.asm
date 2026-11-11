.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
lea ecx, qword ptr [rbx]
sub al, sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor dil, bl
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
jb .bb_0.4
jmp .exit_0
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
