.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
test sil, dl
jmp .bb_0.1
.bb_0.1:
or al, cl
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
cmp rax, 1138518729
btc cx, si
sub rcx, -90
or rsi, 17
lea rbx, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
