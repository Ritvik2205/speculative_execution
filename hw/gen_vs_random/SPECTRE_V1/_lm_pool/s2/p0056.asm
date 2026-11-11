.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
sbb bl, 79
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
xchg rcx, rdx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sub ax, -16648
adc al, bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
