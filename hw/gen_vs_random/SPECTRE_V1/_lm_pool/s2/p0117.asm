.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
xor di, 89
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sub rbx, -11
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
setp cl
setno cl
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
lea cx, qword ptr [rsi + rax]
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 28
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
