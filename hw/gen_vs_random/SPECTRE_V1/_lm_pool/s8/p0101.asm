.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
xor dil, -37
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dil, dl
cmp al, 77
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
