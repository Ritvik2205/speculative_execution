.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 57
sbb dil, -106
xor cl, cl
sub al, sil
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
sub bl, cl
sbb bl, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rcx]
xchg dil, bl
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
