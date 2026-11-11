.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rsi]
test cl, 29
mov al, cl
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
jmp .bb_0.2
.bb_0.2:
cmp dl, dl
test al, -70
or rsi, rbx
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
sub al, 26
and dil, 58
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
