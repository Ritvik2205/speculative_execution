.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
xor di, 15
sub dl, bl
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 100
lea rdi, qword ptr [rsi]
setno cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
