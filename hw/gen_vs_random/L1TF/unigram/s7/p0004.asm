.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, sil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rax]
inc sil
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], di
sbb bl, -88
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and cl, cl
cmovnb rdi, rbx
and dl, 32
movzx rdx, al
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
or bl, -5
setnbe bl
movzx ebx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
