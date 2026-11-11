.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
sub al, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, bl
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
mov dil, dl
test bl, -8
add al, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
