.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp edx, 44
sbb sil, bl
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
cmp ebx, -33
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
lea di, qword ptr [rbx]
lea di, qword ptr [rcx]
lea rax, qword ptr [rbx + rdx]
sub cl, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
