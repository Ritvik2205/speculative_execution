.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
xor cl, dil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp esi, 80
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], edi
imul cx
setnb dil
inc edx
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], -12722
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
