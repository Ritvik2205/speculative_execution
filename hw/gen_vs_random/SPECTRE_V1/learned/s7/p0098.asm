.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
lea bx, qword ptr [rax]
btr ax, si
cmp ax, -11439
or al, 19
add sil, 2
test sil, 13
and sil, -55
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and bl, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
