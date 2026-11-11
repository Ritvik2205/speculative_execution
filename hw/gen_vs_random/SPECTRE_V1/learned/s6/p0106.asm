.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc cl, -19
or sil, bl
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
mov dl, bl
lea edi, qword ptr [rbx]
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jle .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
