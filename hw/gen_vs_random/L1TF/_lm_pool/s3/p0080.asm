.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
btc si, ax
and ax, 37
test al, -104
test al, -56
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rbx]
and cl, cl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
add al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
