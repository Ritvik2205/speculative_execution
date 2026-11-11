.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, sil
adc dl, 80
lea rsi, qword ptr [rcx + rax + 98]
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
lea rcx, qword ptr [rdx + rax + 97]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
sub rax, -1628299544
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add bx, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
