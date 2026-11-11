.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb ebx, eax
sbb dil, -93
test dil, -116
sbb al, bl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov bl, cl
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
setnz dl
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
setno dil
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
test eax, edi
lea rdx, qword ptr [rsi + rdi + 55]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
