.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 17
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
cmovnb rax, rsi
sets cl
sub dil, -32
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, dil
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp cl, 26
sbb ecx, 45
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
cmp bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
