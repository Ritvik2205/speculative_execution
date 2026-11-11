.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rax]
cmp cl, 29
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add ax, 6980
sub al, al
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
