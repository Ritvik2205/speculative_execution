.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, 92
test bx, 33
sub cl, -47
lea bx, qword ptr [rdx + rdi + 22131]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
dec bl
mov al, dil
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and bl, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
