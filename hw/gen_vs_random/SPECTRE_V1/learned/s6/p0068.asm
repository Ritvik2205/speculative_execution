.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
test al, 48
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
sub al, bl
lea rsi, qword ptr [rdi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
setns al
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and dl, -109
sbb edx, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
