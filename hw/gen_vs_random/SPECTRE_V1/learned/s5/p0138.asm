.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
and rsi, 88
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or bl, dil
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnz .bb_0.3
jmp .bb_0.4
.bb_0.3:
xchg rax, rdx
jns .bb_0.4
jmp .bb_0.5
.bb_0.4:
jle .bb_0.5
jmp .bb_0.6
.bb_0.5:
jle .bb_0.6
jmp .exit_0
.bb_0.6:
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
lea ax, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
