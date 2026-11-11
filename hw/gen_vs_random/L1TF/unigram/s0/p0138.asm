.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setle dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
xor si, -50
xor cl, dl
bts si, 88
sbb ebx, 9
adc rsi, 44
sbb dl, -26
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
lea si, qword ptr [rbx]
and ebx, 108
test dl, -37
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
