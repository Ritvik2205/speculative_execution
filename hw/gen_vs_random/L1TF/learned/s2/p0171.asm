.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -95 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
test ebx, 98
lea dx, qword ptr [rdi]
adc cl, -34
adc al, sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
sub dl, cl
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
adc dl, cl
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
