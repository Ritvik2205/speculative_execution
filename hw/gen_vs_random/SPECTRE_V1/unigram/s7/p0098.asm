.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rax + rdi]
xor cl, -91
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], dx
test dil, -116
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 20 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 72
setnb cl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
sbb sil, -78
sub bl, bl
mov cl, al
sub cl, cl
sub al, bl
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
