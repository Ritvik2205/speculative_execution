.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rax, -109
and rbx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rbx]
sub cl, dil
jmp .bb_0.2
.bb_0.2:
test cl, 93
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
xor bl, dl
adc al, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
