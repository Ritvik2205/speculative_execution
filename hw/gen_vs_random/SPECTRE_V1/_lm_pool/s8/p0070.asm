.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
inc rax
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 91
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and al, -23
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jle .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
imul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
