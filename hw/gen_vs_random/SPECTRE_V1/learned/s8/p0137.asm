.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
lea rcx, qword ptr [rsi]
sub al, -1
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sub dl, dil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rcx, 31
cmp bx, 69
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
