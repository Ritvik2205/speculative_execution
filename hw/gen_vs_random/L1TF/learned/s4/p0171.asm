.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rdx + rax + 88]
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
test ax, 13879
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rcx + rsi + 39]
jmp .bb_0.2
.bb_0.2:
sub bl, dl
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
adc bl, -14
lea rcx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
