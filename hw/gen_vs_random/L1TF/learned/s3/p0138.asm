.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
inc dil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
btr ax, di
test cl, 59
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 31
btc ecx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
