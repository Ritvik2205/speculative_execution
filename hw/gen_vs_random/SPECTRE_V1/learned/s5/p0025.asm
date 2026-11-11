.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95
test dil, -116
lea rcx, qword ptr [rbx]
mov dil, bl
xor dl, bl
sub bl, dl
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
cmovle rcx, rbx
sub al, 63
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
