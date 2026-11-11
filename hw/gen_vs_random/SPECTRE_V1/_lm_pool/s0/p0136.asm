.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ax, qword ptr [rax]
dec ax
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
sub dl, dil
cmp dil, al
bt eax, edx
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
not ax
cmovle rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
