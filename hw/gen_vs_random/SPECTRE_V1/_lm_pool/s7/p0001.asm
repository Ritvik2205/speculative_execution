.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 42
or ecx, 34
adc al, -82
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
xchg rdi, rcx
mov al, cl
mov sil, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovs di, bx
cmp dl, -115
sbb bl, 79
lea rsi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
