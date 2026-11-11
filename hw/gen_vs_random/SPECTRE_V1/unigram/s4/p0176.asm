.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb al
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
or ebx, -124
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 60
setb bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, -53 # instrumentation
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 71
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
and al, cl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 79
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 82
cmovb rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
