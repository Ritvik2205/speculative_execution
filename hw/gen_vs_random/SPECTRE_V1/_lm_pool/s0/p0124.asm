.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 2
jle .bb_0.3
jmp .bb_0.4
.bb_0.3:
sub al, -89
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
jns .bb_0.4
jmp .bb_0.5
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
test al, -99
adc dil, cl
cmovnbe rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
