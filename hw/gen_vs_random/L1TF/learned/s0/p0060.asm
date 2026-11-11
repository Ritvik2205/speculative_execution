.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rdi, rdx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 56
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and dil, al
test al, sil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
xor rax, 20
sub al, -3
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
