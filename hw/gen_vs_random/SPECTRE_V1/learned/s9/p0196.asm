.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
sub al, sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
inc rcx
mov al, sil
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
lea rdx, qword ptr [rsi + rdi + 40]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
and cl, 86
adc al, -92
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
