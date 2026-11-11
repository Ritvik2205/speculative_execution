.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 18
test sil, 29
sub al, 26
xor al, 89
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
sub al, 9
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
lea ax, qword ptr [rbx + rdi + 70]
xor sil, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
