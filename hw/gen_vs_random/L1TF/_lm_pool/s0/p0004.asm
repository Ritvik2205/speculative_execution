.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
test cl, 8
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, 19
sub dil, -39
and rdx, 88
bts ecx, 225
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
