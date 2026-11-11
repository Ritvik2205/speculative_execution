.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
xor dl, sil
cmp bl, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
add sil, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
inc di
sbb dil, -93
btr rcx, 195
cmovno rbx, rax
lea rdi, qword ptr [rsi + rdi]
test cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
