.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
cmp al, bl
mov al, dil
and dl, dil
sub cl, dil
lea rax, qword ptr [rdx + rbx]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
lea eax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
