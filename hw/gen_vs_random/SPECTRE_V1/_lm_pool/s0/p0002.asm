.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
sub al, bl
and eax, 933895314
test sil, 13
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 56
sbb al, 104
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
adc al, -92
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
lea eax, qword ptr [rsi]
sbb al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
