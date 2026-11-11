.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
test cl, -120
setnb dil
sub al, bl
and rsi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
