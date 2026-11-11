.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
sub dl, sil
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -118 # instrumentation
cmovp ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
mov dl, al
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 92
xor rbx, rcx
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 37
imul al
add al, -26 # instrumentation
cmovle rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
