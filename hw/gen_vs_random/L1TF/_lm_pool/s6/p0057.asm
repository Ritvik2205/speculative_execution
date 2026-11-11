.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
lea cx, qword ptr [rcx]
sbb sil, al
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 95
sub al, -97
add sil, -61
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
add al, -80
jmp .bb_0.1
.bb_0.1:
setle al
xor di, 58
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
