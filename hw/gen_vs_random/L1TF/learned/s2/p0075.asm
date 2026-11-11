.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle ebx, ecx
or rax, -443578116
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
test ax, 636
xor dil, dl
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
