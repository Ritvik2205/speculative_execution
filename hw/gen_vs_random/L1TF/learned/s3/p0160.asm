.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and dx, 56
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
cmp al, -119
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add al, 56
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
adc al, 80
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
test rbx, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
