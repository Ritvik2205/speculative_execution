.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
and dil, -114
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
lea eax, qword ptr [rsi]
xor ebx, 44
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .exit_0
.bb_0.2:
sub bl, dil
setno al
lea ax, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
