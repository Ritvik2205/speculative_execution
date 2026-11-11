.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, al
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
add bl, cl
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
jle .bb_0.2
jmp .exit_0
.bb_0.2:
lea rcx, qword ptr [rsi]
test al, 34
sub dl, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
