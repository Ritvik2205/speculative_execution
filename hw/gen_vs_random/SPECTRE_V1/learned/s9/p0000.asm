.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
sub bl, cl
sub al, cl
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and cl, 86
test dl, -36
lea di, qword ptr [rcx + rdx]
adc al, bl
or ecx, 44
mov sil, dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
