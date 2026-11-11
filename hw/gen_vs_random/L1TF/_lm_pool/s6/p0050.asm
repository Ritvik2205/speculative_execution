.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
setns al
xor sil, 64
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add bl, 62 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and si, 19
jmp .bb_0.3
.bb_0.3:
sub cl, 86
sbb al, bl
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and rax, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
