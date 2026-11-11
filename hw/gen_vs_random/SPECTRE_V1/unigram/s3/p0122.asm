.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle si, cx
sub al, sil
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 73
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
imul edi
cmovp rdi, rcx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle edx, ecx
add cl, 44 # instrumentation
cmovz edx, ecx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
sub bl, -19
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 37
test cl, sil
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
