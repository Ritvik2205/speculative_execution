.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -61
cmp al, sil
cmovl bx, di
imul edi, edi, 79
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
setnz bl
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdx + rbx + 50836]
inc dx
sub rbx, 34
cbw
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 97
sub dil, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
