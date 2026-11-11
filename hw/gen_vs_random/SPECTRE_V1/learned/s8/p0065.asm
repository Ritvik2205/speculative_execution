.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
sbb sil, -78
and sil, -55
sub al, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
add ecx, 30
sub sil, -18
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
test dl, -105
sbb al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
