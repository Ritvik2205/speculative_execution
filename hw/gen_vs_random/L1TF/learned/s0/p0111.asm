.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
sub cl, dil
imul cx, di, -104
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
xor dil, bl
test al, -56
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and dl, -49
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
