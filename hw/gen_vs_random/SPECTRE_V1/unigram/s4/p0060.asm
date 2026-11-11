.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
setb dil
cmp dil, sil
lea rcx, qword ptr [rdx]
and dil, dil
add bl, 16 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 13
add dl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
lea ecx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
add cl, 44 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
imul eax, ecx, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
