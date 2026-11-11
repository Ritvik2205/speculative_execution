.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rbx + rdi + 29710]
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
setb al
sub al, -47
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
test rbx, rax
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
