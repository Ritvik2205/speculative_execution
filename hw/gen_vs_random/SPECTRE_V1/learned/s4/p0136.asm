.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
sub dil, -111
sbb dl, al
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
add cl, -127
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 89
and dil, -114
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
lea ax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
