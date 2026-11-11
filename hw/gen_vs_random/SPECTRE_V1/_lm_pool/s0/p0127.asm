.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], si
imul al
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
adc dil, 46
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
add al, -44
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
neg rdx
add sil, 2
sub rax, -1628299544
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
