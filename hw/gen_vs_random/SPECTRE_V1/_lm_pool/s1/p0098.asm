.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
sub cl, bl
xor rax, 29
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
adc al, bl
mov dil, cl
setb al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and ax, 32540
lea ax, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
