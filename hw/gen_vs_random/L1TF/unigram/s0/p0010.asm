.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
test si, 62
lea rsi, qword ptr [rbx + rcx]
adc rcx, 93
sub bl, 2
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
test dl, 10
adc rbx, 75
neg ebx
and rsi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rsi]
xor al, -127
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
