.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
xor sil, cl
lea rax, qword ptr [rcx + rbx]
sub dil, -32
xchg dl, sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovbe ecx, eax
setz cl
xchg eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
