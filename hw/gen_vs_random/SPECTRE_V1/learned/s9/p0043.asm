.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dx, -23
test al, 40
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
mov al, dil
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
add al, 3
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
