.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
add bx, -65
sub cl, -47
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1643105692
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
inc sil
setnbe bl
lea ecx, qword ptr [rdx]
setnz sil
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -54
cmovns rdx, rdi
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], -501175648
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
