.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
sbb sil, dl
sub bl, 15
test dl, -37
cmovb bx, cx
or ax, cx
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 60
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and bx, 37
sub cl, 86
lea rcx, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
