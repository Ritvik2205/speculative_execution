.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edx, ebx
and ecx, 54
not di
and bl, 89
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
xor dl, cl
and rax, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rax]
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
