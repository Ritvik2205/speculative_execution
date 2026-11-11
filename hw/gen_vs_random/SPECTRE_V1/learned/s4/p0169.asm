.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
test al, 40
adc cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
or sil, bl
lea rdi, qword ptr [rdx + rax + 33]
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
or rax, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
