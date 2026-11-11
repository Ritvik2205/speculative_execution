.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdi]
sbb al, dl
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
lea rax, qword ptr [rsi]
add bl, 111 # instrumentation
cmovs rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 47
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
test cl, sil
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
