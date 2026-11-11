.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -113 # instrumentation
mov rdx, 57
cmp rbx, rbx
sbb cx, bx
cmovbe edi, eax
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
sbb esi, 49
xchg cl, cl
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], esi
cmp rdx, rdx
and edx, 34
xor rbx, 90
add bl, -9 # instrumentation
adc rcx, 98
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
