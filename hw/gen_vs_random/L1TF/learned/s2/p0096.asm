.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rbx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
sub al, -75
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
sub dl, bl
jmp .bb_0.3
.bb_0.3:
cmp sil, -11
test al, -84
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
