.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
sub bl, cl
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
adc dil, 120
and al, dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 8
sbb bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
