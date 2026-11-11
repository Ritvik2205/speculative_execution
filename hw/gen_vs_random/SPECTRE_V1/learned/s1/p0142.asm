.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rdi, rcx
adc al, -92
sbb edi, 95
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
sub dil, cl
sbb al, 33
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
add cl, cl
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
