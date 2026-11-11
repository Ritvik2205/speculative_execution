.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1276549484
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
adc ax, 24404
sub al, bl
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
js .bb_0.3
jmp .exit_0
.bb_0.3:
lea ax, qword ptr [rcx]
add dl, bl
test rax, rsi
and cl, cl
bt edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
