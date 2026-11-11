.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -82
cmp dl, 71
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
test eax, 133988823
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
and al, cl
add bl, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, dl
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
setns bl
sbb sil, -78
imul al
test cl, -120
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
